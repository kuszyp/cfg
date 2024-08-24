# cfg

## Description

### Dotfiles repository init snippet

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

### Install dotfiles onto new system

1. Make sure that you have committed the alias to your _.bashrc_
`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
2. Ignore the folder where you will be clone the repository, so that you don't create weird recursion problems
`echo ".cfg" >> .gitignore`
3. Clone dotfiles into a base repository in a "dot" folder of `$HOME`
`git clone --bare <git-repo-url> $HOME/.cfg`
4. Define the alias in the current shell scope
`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
5. Checkout the actual content from the bare repository to `$HOME`
`config checkout`


When the step above fail with a message like:

```bash
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

This is because `$HOME` directory might already have some stack configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care.

Below snippet move all offending files automatically to a backup folder:

```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

After this just run `config checkout` and set the flag `showUntrackedFiles` to `no` on this specific repository:

```bash
config config --local status.showUntrackedFiles no

```

Final snippet

```bash
git clone --bare https://bitbucket.org/durdn/cfg.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```


### Useful commands

Assign repository with origin

```bash 
config remote add origin [REPOSITORY ADDRESS]
```

Set upstream branch for push

```bash
config push --set-upstream origin main
```

Assign local main branch with origin/main

```bash
config branch --set-upstream-to=origin/main main
```

Set up hot to reconcile divergent branches

```bash
config config pull.rebase true
```
