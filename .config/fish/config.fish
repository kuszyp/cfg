###############################################################################
# custom setup
#

###############################################################################
# user shell variables
#
export HOME=/home/kuszyp
export GCM_CREDENTIAL_STORE=plaintext
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/
#export JAVA_HOME=/usr/lib/jvm/java-11.0.8-openjdk-amd64/
#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
###############################################################################

fish_add_path $HOME/.config/bin
fish_add_path $HOME/idea-IC-241.18034.62/bin
fish_add_path $JAVA_HOME/bin
fish_add_path /opt/Postman
fish_add_path $HOME/.npm-global/bin
fish_add_path /usr/local/go/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/apictl

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings
set -Ux EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

#set sponge_successful_exit_codes 0 127 # filter out commands that don't have 0 as an exit code

###############################################################################

if status is-interactive
    # Commands to run in interactive sessions can go here
end

###############################################################################
# aliases
#
alias config='/usr/bin/git --git-dir=/home/kuszyp/.cfg/ --work-tree=/home/kuszyp'
alias g git
alias v='nvim .'

command -qv nvim && alias vim nvim

if type -q exa
    alias ll "exa -l -g -h -a --icons"
    #alias lla "ll -a"
end
###############################################################################


# name: sashimi
function fish_prompt
    set -l last_status $status
    set -l cyan (set_color -o cyan)
    set -l yellow (set_color -o yellow)
    set -g red (set_color -o red)
    set -g blue (set_color -o blue)
    set -l green (set_color -o green)
    set -g normal (set_color normal)

    set -l ahead (_git_ahead)
    set -g whitespace ' '

    if test $last_status = 0
        set initial_indicator "$green◆"
        set status_indicator "$normal❯$cyan❯$green❯"
    else
        set initial_indicator "$red✖ $last_status"
        set status_indicator "$red❯$red❯$red❯"
    end
    set -l cwd $cyan(basename (prompt_pwd))

    if [ (_git_branch_name) ]

        if test (_git_branch_name) = master
            set -l git_branch (_git_branch_name)
            set git_info "$normal git:($red$git_branch$normal)"
        else
            set -l git_branch (_git_branch_name)
            set git_info "$normal git:($blue$git_branch$normal)"
        end

        if [ (_is_git_dirty) ]
            set -l dirty "$yellow ✗"
            set git_info "$git_info$dirty"
        end
    end

    # Notify if a command took more than 5 minutes
    if [ "$CMD_DURATION" -gt 300000 ]
        echo The last command took (math "$CMD_DURATION/1000") seconds.
    end

    echo -n -s $initial_indicator $whitespace $cwd $git_info $whitespace $ahead $status_indicator $whitespace
end


function _git_ahead
    set -l commits (command git rev-list --left-right '@{upstream}...HEAD' 2>/dev/null)
    if [ $status != 0 ]
        return
    end
    set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
    set -l ahead (count (for arg in $commits; echo $arg; end | grep -v '^<'))
    switch "$ahead $behind"
        case '' # no upstream
        case '0 0' # equal to upstream
            return
        case '* 0' # ahead of upstream
            echo "$blue↑$normal_c$ahead$whitespace"
        case '0 *' # behind upstream
            echo "$red↓$normal_c$behind$whitespace"
        case '*' # diverged from upstream
            echo "$blue↑$normal$ahead $red↓$normal_c$behind$whitespace"
    end
end

function _git_branch_name
    echo (command git symbolic-ref HEAD 2>/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
    echo (command git status -s --ignore-submodules=dirty 2>/dev/null)
end

#function fish_prompt -d "Write out the prompt"
#    # This shows up as USER@HOST /home/user/ >, with the directory colored
#    # $USER and $hostname are set by fish, so you can just use them
#    # instead of using `whoami` and `hostname`
#    printf '%s@%s %s%s%s > ' $USER $hostname (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
#end

starship init fish | source
