kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f |grep EMPLOYEE
kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f |grep CITIZENS
kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f |grep userstores
kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f
cd ..
cd deploy/is/repository/deployment/server/userstores/
ll
rm EMPLOYEES.yaml 
ll
git pull
cd ..
ll
cd init-project/
ll
cd project-config/
ll
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f
git pull
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
kubectl config use-context grudziadz-prod-app 
cd ..
cd 
cd o4b/gitlab.pm-grudziadz.pl/
ll
cd pu/ciam/infrastructure/
ll
fit pull
git pull
cd prod/
ll
cd init-project/project-config/
ll
kubectl config current-context 
kubectl delete -f argo-app-application.yaml 
cd ..
cd wso2/
kubectl -n prod-ciam delete secrets wso2is-keystore-jks-secret wso2is-client-truststore-jks-secret wso2am-keystore-jks-secret wso2am-client-truststore-jks-secret 
ll
./generate-keys.sh 
kubectl -n prod-ciam get secrets 
cd ..
cd project-config/
kubectl apply -f argo-app-application.yaml 
cd ..
cd wso2/
ll
nano generate-keys.sh 
openssl x509 -in certs/login_gov_certificate.crt -pubkey -noout -out public.pub
ll
cat public.pub 
cd ..
cd project-config/
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
git push
kubectl delete -f argo-app-application.yaml 
git pull
ll
cd ..
cd wso2/
kubectl -n prod-ciam delete secrets wso2is-keystore-jks-secret wso2is-client-truststore-jks-secret wso2am-keystore-jks-secret wso2am-client-truststore-jks-secret 
nano generate-keys.sh 
./generate-keys.sh 
cd ..
cd project-config/
kubectl apply -f argo-app-application.yaml 
kubectl -n prod-ciam get secrets wso2is-keystore-jks-secret -o yaml
kubectl -n prod-ciam get secrets wso2is-client-truststore-jks-secret -o yaml
kubectl -n prod-ciam describe secrets wso2is-client-truststore-jks-secret 
ll
cd ..
cd wso2/
ll
kubectl exec -it -n prod-ciam am-pattern-3-is-deployment-0 -- /bin/bash
ll
nano generate-keys.sh 
ll
kubectl config current-context 
kubectl -n prod-ciam delete secrets wso2is-keystore-jks-secret wso2is-client-truststore-jks-secret wso2am-keystore-jks-secret wso2am-client-truststore-jks-secret 
nano generate-keys.sh 
./generate-keys.sh 
cd ..
cd project-config/
ll
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
kubectl delete -f argo-app-application.yaml 
cd ,,
cd ..
cd wso2/
git pull
kubectl -n prod-ciam delete secrets wso2is-keystore-jks-secret wso2is-client-truststore-jks-secret wso2am-keystore-jks-secret wso2am-client-truststore-jks-secret 
./generate-keys.sh 
nano generate-keys.sh 
./generate-keys.sh 
kubectl -n prod-ciam delete secrets wso2is-keystore-jks-secret wso2is-client-truststore-jks-secret wso2am-keystore-jks-secret wso2am-client-truststore-jks-secret 
./generate-keys.sh 
cd ..
cd project-config/
kubectl apply -f argo-app-application.yaml 
kubectl exec -it -n prod-ciam am-pattern-3-is-deployment-0 -- /bin/bash
kubectl delete -f argo-app-application.yaml 
git pull
kubectl apply -f argo-app-application.yaml 
cd ..
cd wso2/
ll
cd subscription/
SOAPUI_HOME=~/SmartBear/SoapUI-5.7.2/ ./skrypt.sh 
history |grep openssl
kubectl -n prod-ciam get secrets wso2is-client-truststore-jks-secret -o yaml
kubectl config current-context 
kubectl config use-context torun-prod-app 
kubectl get pods -n prod-ciam 
cd 
cd o4b/gitlab.pm-torun.pl/
ll
cd pu/ciam/infrastructure/
ll
git pull
kubectl config current-context 
ll
git pull
cd prod/
ll
cd init-project/project-config/
ll
nano argo-app-application.yaml 
kubectl delete -f argo-app-application.yaml 
kubectl -n prod-ciam port-forward wso2db-pgo-cluster-instance1-ghqt-0 54328:5432
ll
cd ..
cd wso2/
ll
kubectl -n prod-ciam get secrets wso2is-client-truststore-jks-secret -o yaml
kubectl -n prod-ciam get secrets
kubectl -n prod-ciam delete secrets wso2is-keystore-jks-secret wso2is-client-truststore-jks-secret wso2am-keystore-jks-secret wso2am-client-truststore-jks-secret 
kubectl -n prod-ciam get secrets
./generate-keys.sh 
kubectl -n prod-ciam get secrets
cd ..
cd project-config/
ll
kubectl apply -f argo-app-application.yaml 
history |grep keytool
git pull
nano argo-app-application.yaml 
kubectl config current-context 
kubectl delete -f argo-app-application.yaml 
cd ..
cd wso2/
kubectl -n prod-ciam delete secrets wso2is-keystore-jks-secret wso2is-client-truststore-jks-secret wso2am-keystore-jks-secret wso2am-client-truststore-jks-secret 
./generate-keys.sh 
cd ..
cd project-config/
kubectl apply -f secret-helm.yaml 
kubectl apply -f image-pull-secret.yaml 
kubectl apply -f create-ns.yaml 
kubectl apply -f argo-app-project.yaml 
kubectl apply -f argo-app-application.yaml 
cd ..
cd deploy/is/repository/deployment/server/userstores/
ll
cd ../../../../
cd ../../../
cd test/deploy/is/repository/deployment/server/userstores/
ll
cd ~/o4b/gitlab.pm-torun.pl/pu/ciam/infrastructure/prod/deploy/is/repository/deployment/server/userstores/
ll
xs ..
cd
cd o4b/gitlab.pm-torun.pl/pu/ciam/infrastructure/prod/init-project/project-config/
kubectl delete -f argo-app-application.yaml 
kubectl get pods -n prod-ciam
kubectl apply -f argo-app-application.yaml 
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
kubectl exec -it -n prod-ciam am-pattern-3-is-deployment-0 -- /bin/bash
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
git pull
kubectl delete -f argo-app-application.yaml 
git pull
kubectl apply -f argo-app-application.yaml 
git pull
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
ll
cd ..
cd wso2/
ll
cd subscription/
..
ll
SOAPUI_HOMR=~/SmartBear/SoapUI-5.7.2/ ./skrypt.sh 
SOAPUI_HOMR=~/SmartBear/SoapUI-5.7.2 ./skrypt.sh 
SOAPUI_HOME=~/SmartBear/SoapUI-5.7.2 ./skrypt.sh 
kubectl config use-context grudziadz-prod-app 
kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f
kubectl config use-context bydgoszcz-prod-app 
kubectl -n prod-ciam get pods
kubectl config current-context 
kubectl -n prod-ciam port-forward wso2db-pgo-cluster-instance1-288w-0 
kubectl -n prod-ciam port-forward wso2db-pgo-cluster-instance1-288w-0 54328:5432
cd ..
cd gitlab.pm.bydgoszcz.pl/pu/ciam/infrastructure/
ll
git pull;
git pull
ll
cd prod/
git pull
cd init-project/project-config/
cd ..
cd wso2/
ll
kubectl -n prod-ciam delete secrets wso2is-keystore-jks-secret wso2is-client-truststore-jks-secret wso2am-keystore-jks-secret wso2am-client-truststore-jks-secret 
kubectl -n prod-ciam get secrets 
./generate-keys.sh 
kubectl -n prod-ciam get secrets 
ll
cd ..
cd project-config/
ll
kubectl delete -f argo-app-application.yaml 
ll
kubectl apply -f secret-helm.yaml 
kubectl apply -f image-pull-secret.yaml 
kubectl apply -f argo-app-application.yaml 
kubectl exec -it -n prod-ciam am-pattern-3-is-deployment-0 -- /bin/bash
git pull
kubectl delete -f argo-app-application.yaml 
kubectl apply -f argo-app-application.yaml 
cd ..
cd wso2/
ll
cd subscription/
SOAPUI_HOME=~/SmartBear/SoapUI-5.7.2 ./skrypt.sh 
kubectl config current-context 
kubectl config use-context torun-prod-app 
kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f
cd ~
sudo apt update
sudo apt upgrade
cd ~/.config/nvim
nvim
cd -
pwd
cd o4b/
ll
cd gitlab.o4b.tech/
ll
cd pu/ciam/
;;
ll
cd scripts/
ll
cd ..
cd wso2-extensions/
ll
cd identity-inbound-provisioning-scim2/
ll
nvim
cd ..
ll
cd apimanager-definitions/
ll
cd internal-services/
ll
cd apis/
ll
cd portal-api/
ll
cd portal-api-1.0.0/
ll
cd Definitions/
cd ..
nvim .
git pull
cd ..
ll
mv portal-api portal-registry-actions-api
ll
cd portal-registry-actions-api/
ll
git pull
git log
ll
cd portal-api-1.0.0/
;;
ll
cd ..
mv portal-api-1.0.0 portal-registry-actions-api-1.0.0
git status
nvim
nvim .
nvim
nvim .
nvim
nvim .
exit
cd o4b/scripts/
ll
nvim backup_ciam_db_Fc.sh 
./backup_ciam_db_Fc.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
nvim backup_ciam_db_Fc.sh 
./backup_ciam_db_Fc.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
nvim backup_ciam_db.sh 
./backup_ciam_db.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
nvim backup_ciam_db.sh 
./backup_ciam_db.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
nvim backup_ciam_db.sh 
./backup_ciam_db.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
nvim backup_ciam_db.sh 
./backup_ciam_db.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
nvim backup_ciam_db.sh 
./backup_ciam_db.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
./backup_ciam_db_Fc.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
./backup_ciam_db.sh test-ciam ~/o4b/test.pm.bydgoszcz.pl/db/2024-08-02
cd ..
cd gitlab.o4b.tech/pu/ciam/scripts/db-schemas-configuration-clean-up/
cat README.md 
./run.sh -d wso2am_db -n test-ciam
./run.sh -d wso2am_shared_db -n test-ciam
./run.sh -d wso2am_db -n test-ciam
./run.sh -d wso2am_shared_db -n test-ciam
kubectl config current-context 
./run.sh -d wso2am_shared_db -n test-ciam
./run.sh -d wso2am_db -n test-ciam
./run.sh -d wso2am_shared_db -n test-ciam
./run.sh -d wso2am_db -n test-ciam
kubectl -n test-ciam logs wso2db-pgo-cluster-instance1-ngdc-0 
kubectl -n test-ciam logs wso2db-pgo-cluster-instance1-sv6x-0 
cd 
cd o4b/gitlab.o4b.tech/pu/ciam/
ll
cd wso2-extensions/identity-apps/
git checkout test-bydgoszcz 
git pull
git status
cd 
cd o4b/gitlab.o4b.tech/pu/ciam/scripts/db-schemas-configuration-clean-up/
./run.sh -d wso2am_db -n test-ciam
./run.sh -d wso2am_shared_db -n test-ciam
./run.sh -d wso2am_db -n test-ciam
./run.sh -d wso2am_shared_db -n test-ciam
./run.sh -d wso2am_db -n test-ciam
./run.sh -d wso2am_shared_db -n test-ciam
uptime
uptime -p
uptime -s
clear
uptime -p
uptime -s
uptime
git status
kubectl -n prod-ciam logs am-pattern-3-am-gateway-default-deployment-785f954d45-cjpgc -f
cd 
kubectl -n prod-eregistry logs portal-registry-service-6ffdcd486d-5v5d9 -f
kubectl -n prod-eregistry logs portal-registry-service-6ffdcd486d-5v5d9 > o4b/pm-grudziadz.pl/portal-registry-service-6ffdcd486d-5v5d9.log
kubectl -n prod-eregistry logs eregistry-pgo-cluster-instance1-c8vr-0 -f
kubectl -n prod-eregistry logs eregistry-pgo-cluster-instance1-d66c-0 -f
kubectl -n prod-eregistry logs eregistry-pgo-cluster-instance1-c8vr-0 -f
kubectl -n prod-eregistry logs eregistry-pgo-cluster-instance1-d66c-0 -f
exit
tmux
cd
cd o4b/gitlab.o4b.tech/pu/ciam/apimanager-definitions/internal-services/apis/
ll
cd profile-registry-actions-api/
git fetch
git pull
git checkout master 
git pull
git branch -m master main
git push -u origin main 
git pull
git fetch
kubectl config current-context 
kubectl -n prod-eregistry get pods
kubectl -n prod-eregistry logs eregistry-pgo-cluster-instance1-c8vr-0 -f
kubectl -n prod-eregistry logs eregistry-pgo-cluster-instance1-d66c-0 -f
htop
cd o4b/gitlab.o4b.tech/
ll
mkdir -p pkuszyk/scripts
ll
cd pkuszyk/scripts/
ll
ls -al
cd ..
rmdir scripts/
git clone https://gitlab.o4b.tech/pkuszyk/scripts.git
ll
cd scripts/
ll
cd ..
ll
cd pu/ciam/
ll
cd docker/
ll
docker-init-is/
ll
cd docker-init-is/
ll
git pull
git status
ll
nvim PU-IS-soapui-project.xml 
idea .
nano ~/.bashrc 
idea.sh 
idea
cd ~
ll
cd idea-IC-241.18034.62/
ll
cd bin/
ll
./idea.sh 
cd ..
ll
nano Install-Linux-tar.txt 
cd ..
cd o4b/gitlab.o4b.tech/
ll
cd pu/ciam/docker/docker-init-is/
git status
git checkout PU-IS-soapui-project.xml
git status
git pull
cd ..
ll
cd wso2is-docker-config/
ll
cd ..
mv wso2is-docker-config/ wso2is-docker
ll
cd wso2is-docker/
ll
nvim docker-compose.yml 
ll
docker compose up
nvim docker-compose.yml 
ll
cd dockerfiles/
ll
cd wso2is/
ll
nvim Dockerfile 
cd ..
nvim docker-compose.yml 
docker compose up
docker compose down
docker ps
docker volume 
docker volume ls
docker
docker container 
docker container ls
docker container ls --help
docker container ls --all
.,.qa
cd o4b/wso2is-docker/
ll
docker ps
ll
cd conf/
;;
ll
cd postgres/
ll
cd ..
nvim .
ll
mv docker-compose.yml docker-compose.yaml
ll
nvim .
cd ..
ll
mv wso2is-docker/ docker-wso2is
ll
mkdir docker-wso2is-init
ll
cd docker-wso2is-init/
ll
nvim .
cd ..
mc docker-wso2is-init/ docker-sample
mv docker-wso2is-init/ docker-sample
ll
cd ..
ll
mkdir -p github.com/kuszyp
cd github.com/kuszyp/
git clone https://github.com/kuszyp/docker.git
ll
cd docker/
ll
mv ~/o4b/docker-sample/ ./sample
ll
nvim .
source ~/.bashrc 
nvim .
source ~/.bashrc 
nvim .
wget https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.5.1/gcm-linux_amd64.2.5.1.deb
sudo dpkg -i gcm-linux_amd64.2.5.1.deb 
git-credential-manager configure
nvim .bashrc 
source .bashrc 
nvim .bashrc 
source .bashrc 
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
cd github.com/kuszyp/docker/
ll
cd wso2is-init/
ll
docker run --rm -it $(docker build -q .)
docker images
docker run --rm $(docker build .)
docker run $(docker build .) --rm
docker run $(docker build .)
docker run --help
docker run --rm $(docker build .)
docker images
docker run --rm $(docker build .)
docker run --rm -it $(docker build .)
docker run --rm $(docker build .) -it
docker run -it $(docker build .) --rm
docker run -it --rm $(docker build .)
docker run --rm -it $(docker build -q .)
docker run --rm -it $(docker build  .)
docker run --rm -it $(docker build -q .)
docker run --rm $(docker build -q .)
docker run --rm $(docker build .)
docker run --rm $(docker build -q .)
docker run --rm -it $(docker build -q .)
docker run --rm -it $(docker build  .)
docker run --rm -it $(docker build -q .)
docker compose -f compose.yaml up
docker compose -f compose.yaml down && docker volume rm wso2is_volume_wso2is_db
docker compose -f compose.yaml up
docker compose -f compose.yaml up --detach 
docker logs wso2is-wso2is_app-1 
docker logs wso2is-wso2is_app-1 --follow 
docker compose -f compose.yaml stop
docker compose -f compose.yaml down
docker compose -f compose.yaml down && docker volume rm wso2is_volume_wso2is_db
exit
cd ..
cd wso2is-init/
docker compose -f compose.yaml up
docker network ls
docker compose -f compose.yaml down
docker container ls
docker compose -f compose.yaml up
docker compose -f compose.yaml down
docker compose -f compose.yaml up
exit
cd github.com/kuszyp/docker/
ll
cd wso2is
ll
docker compose -f compose.yaml up
docker network ls
docker network inspect db_network 
docker network inspect host 
docker compose -f compose.yaml down
docker compose -f compose.yaml up
docker compose -f compose.yaml down
docker compose -f compose.yaml up
docker compose -f compose.yaml down
docker compose -f compose.yaml up
docker compose -f compose.yaml down
docker compose -f compose.yaml up
docker compose -f compose.yaml down
docker compose -f compose.yaml images rm wso2is_app wso2is_db 
docker compose -f compose.yaml image rm wso2is_app wso2is_db 
docker compose -f compose.yaml images wso2is_app rm
docker compose -f compose.yaml images rm wso2is_app rm
docker images
docker image rm wso2is-docker-wso2is_app:latest wso2is-docker-wso2is_db:latest 
docker images
docker image rm wso2is-wso2is_app:latest wso2is-wso2is_app:latest 
docker images
docker image rm wso2is-wso2is_db:latest 
docker images
docker container ls
docker compose -f compose.yaml rm wso2is_app wso2is_db 
docker network ls
docker compose -f compose.yaml up
docker compose -f compose.yaml down
docker compose -f compose.yaml rm wso2is_app wso2is_db 
docker container rm 
docker compose -f compose.yaml up
docker compose -f compose.yaml down 
docker compose -f compose.yaml rm wso2is_app wso2is_db 
docker compose -f compose.yaml up
docker volume ls
docker volume prune 
docker volume ls
docker volume rm wso2is_volume_wso2is_db
docker compose -f compose.yaml down
docker volume rm wso2is_volume_wso2is_db
docker volume ls
docker compose -f compose.yaml up
docker compose -f compose.yaml down
tmux
exit
history
ll
docker compose -f compose.yaml up
ll
docker compose -f compose.yaml up
docker compose -f compose.yaml down
cd o4b/gitlab.pm-torun.pl/pu/eregistry/infrastructure/services/
ll
git status
git log
kubectl config current-context 
kubectl config set-context torun-prod-app 
kubectl config use-context torun-prod-app 
kubectl -n prod-eregistry get pods
pwd
ll
cd vehicle-registry-service/
ll
htop
exit
docker volume prune exit
exit
kubectl -n test-ciam logs am-pattern-3-am-gateway-default-deployment-8b99bcbd5-h2f4q -f
kubectl -n test-ciam logs am-pattern-3-am-gateway-default-deployment-8b99bcbd5-mxtln -f
exit
keytool -list -keystore wso2carbon.jks 
keytool -list -keystore wso2carbon.jks |grep 2024
exit
kubectl config current-context 
kubectl -n test-ciam get pods
kubectl -n test-ciam logs am-pattern-3-is-deployment-0 -f
kubectl -n test-ciam logs am-pattern-3-am-gateway-default-deployment-8b99bcbd5-h2f4q -f
exit
kubectl config current-context 
kubectl config use-context torun-prod-app 
kubectl get pods -n prod-ciam
kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f
kubectl -n prod-ciam logs am-pattern-3-am-gateway-default-deployment-697cf69474-62x9p -f
kubectl -n prod-ciam logs am-pattern-3-am-gateway-default-deployment-697cf69474-hx8bv -f
kubectl -n prod-ciam logs am-pattern-3-am-cp-2-deployment-854f79dc8c-n9cb6 -f
kubectl -n prod-ciam logs am-pattern-3-am-cp-1-deployment-6795cc97d6-sr9w7 -f
kubectl -n prod-ciam logs wso2db-pgo-cluster-instance1-ghqt-0 -f
kubectl -n prod-ciam logs wso2db-pgo-cluster-instance1-s25h-0 -f
kubectl -n prod-ciam logs am-pattern-3-is-deployment-0 -f
kubectl -n prod-ciam logs am-pattern-3-am-gateway-default-deployment-697cf69474-hx8bv -f
kubectl -n prod-ciam get pods
kubectl -n prod-ciam delete pod am-pattern-3-am-cp-1-deployment-6795cc97d6-sr9w7 
kubectl -n prod-ciam delete pod am-pattern-3-am-gateway-default-deployment-697cf69474-62x9p am-pattern-3-am-gateway-default-deployment-697cf69474-hx8bv 
kubectl get pods -n prod-ciam
wexit
exit
htop
docker compose down
docker volume ls
docker compose up
docker compose down
docker container ls
docker ls
docker -ls
docker volume ls --all
docker volume ls
docker image ls
docker image rm wso2-bootstrap-bootstrap:latest 
ll
docker image ls
docker image rm wso2-bootstrap-bootstrap
docker compose up
docker container rm wso2-bootstrap-bootstrap-1
docker image ls
docker image prune 
docker image rm wso2-bootstrap-bootstrap:latest 
ll
docker compose up
docker compose down
docker compose up
docker compose down
docker compose up
docker compose down
docker image rm wso2-bootstrap-bootstrap:latest 
docker image rm wso2-bootstrap-bootstrap
docker container ls
docker container ls -- rl
docker container ls -- ls
docker container ls
docker compose up
docker compose down
docker container 
docker container ls -- ls
docker image rm wso2-bootstrap-bootstrap:latest \
docker image rm wso2-bootstrap-bootstrap:latest 
docker volume ls
docker volume ls --all
docker volume ls -all
docker compose up
docker compose down
docker compose images bootstrap 
docker compose images ls
docker compose images ls --all
docker compose images rm bootstrap 
docker compose down
docker image ls
docker image rm wso2-bootstrap-bootstrap:latest 
docker network ls
docker compose up
docker compose down
docker image ls
docker image rm wso2-bootstrap-bootstrap:latest 
docker container ls
docker image ls
docker compose up
docker compose down
docker image rm wso2-bootstrap-bootstrap:latest 
docker compose down
docker image ls
docker compose up
docker compose down
docker image rm wso2-bootstrap-bootstrap:latest 
docker compose up
docker compose down
docker image rm wso2-bootstrap-bootstrap:latest 
docker compose up
docker compose down
docker image rm wso2-bootstrap-bootstrap:latest 
docker compose up
exit
cd 
cd o4b/gitlab.o4b.tech/
ll
cd pu/ciam/docker/
ll
git clone https://gitlab.o4b.tech/o4b/przyjazny-urzad/ciam/docker/docker-apictl.git
ll
cd docker-apictl/
ll
git checkout main 
git pull
git tag --help
git tag --list 
git checkout --help
docker build -t harbor.o4b.tech/wso2/apictl:4.3.0-ubuntu24.10 . --no-cache 
docker push harbor.o4b.tech/wso2/apictl:4.3.0-ubuntu24.10
docker images ls
docker images ls --all
docker images
cd 
cd .docker/
ll
cat config.json 
echo ZGV2dXNlcjo4dkQ3R1dAX2tjUyY5NQ== | base64 -d
cd 
cd o4b/gitlab.o4b.tech/pu/ciam/docker/docker-apictl/
docker push harbor.o4b.tech/wso2/apictl:4.3.0-ubuntu24.10
docker login ?
docker login --help
docker login -u admin --password-stdin harbor.o4b.tech
clear
docker login  harbor.o4b.tech
docker logout harbor.04b.tech
docker login  harbor.o4b.tech
echo "AqvetXA23" | base64 -e
echo "admin:AqvetXA23" | base64 
echo -n "admin:AqvetXA23" | base64 
nano ~/.docker/config.json 
cp ~/.docker/config.json ~/.docker/config.json.bak
nano ~/.docker/config.json 
docker login harbor.o4b.tech
nano ~/.docker/config.json 
cp ~/.docker/config.json ~/.docker/config.json.bak2
mv ~/.docker/config.json.bak ~/.docker/config.json
nano ~/.docker/config.json 
docker login harbor.o4b.tech
docker push harbor.o4b.tech/wso2/apictl:4.3.0-ubuntu24.10 
nano ~/.docker/config.json 
mv ~/.docker/config.json ~/.docker/config.json.bak
cp ~/.docker/config.json.bak2 ~/.docker/config.json
nano ~/.docker/config.json 
docker login harbor.o4b.tech
docker push harbor.o4b.tech/wso2/apictl:4.3.0-ubuntu24.10 
htop
cd ..
ll
docker container ls
docker exec -it wso2apim-with-is-as-km-db-1 /bin/bash
pwd
cd
pwd
nvim .bashrc 
cd .gcm/store/
ll
kk
ll
cd git/
ll
cd https/
ll
cd github.com/
ll
cat kuszyp.credential 
cd ..
cd gitlab.o4b.tech/
ll
cat pkuszyk.credential 
cd 
kubectl config current-context 
kubectl -n test-ciam get pods
kubectl exec -it -n test-ciam am-pattern-3-is-deployment-0 -- /bin/bash
kubectl -n test-ciam logs wso2db-pgo-cluster-instance1-sv6x-0 -f
kubectl -n test-ciam logs wso2db-pgo-cluster-instance1-ngdc-0 -f
kubectl logs -n test-ciam am-pattern-3-is-deployment-0 -f
kubectl logs -n test-ciam am-pattern-3-am-gateway-default-deployment-8b99bcbd5-h2f4q -f
kubectl -n test-ciam get pods
kubectl logs -n test-ciam am-pattern-3-am-gateway-default-deployment-8b99bcbd5-h2f4q -f
kubectl -n test-ciam get pods
kubectl logs -n test-ciam am-pattern-3-am-gateway-default-deployment-8b99bcbd5-h2f4q -f
kubectl logs -n test-ciam am-pattern-3-am-cp-1-deployment-567fcd5549-69sbs -f
exit
kubectl config current-context 
kubectl -n test-eregistry port-forward eregistry-pgo-cluster-instance1-zt6k-0 54328:5432
kubectl -n test-eregistry port-forward eregistry-pgo-cluster-instance1-zt6k-0 54322:5432
exit
ll
cd add_profile/
node -v
npm -v
npm init
ll
npm install
ll
touch app.js
ll
npm i fs
npm d fs
npm r fs
npm i dotenv
touch .env
config
ll
exit
kubectl config current-context 
kubectl config use-context bydgoszcz-test-app 
docker volume prune exit
docker volume prune
docker compose -f compose.yaml down
docker volume ls
docker volume prune
docker volume ls
docker volume rm wso2apim-with-is-as-km_volume_db 
docker compose -f compose.yaml up
docker volume prune
docker compose -f compose.yaml down
docker compose ls
docker compose ls --all
docker image ls
docker volume rm wso2apim-with-is-as-km_volume_db
docker compose -f compose.yaml up
docker compose -f compose.yaml down
docker compose -f compose.yaml down'
docker compose -f compose.yaml down
docker network ls
docker network prune 
docker container -ls
docker container ls
docker container ls --all
docker container rm wso2-bootstrap-bootstrap-1 
docker image ls
docker image rm wso2-bootstrap-bootstrap:latest wso2apim-with-is-as-km-db:latest 
docker container ls --all
docker image ls
docker container ls
docker container ls --all
docker network 
docker network ls
ll
docker compose up
docker compose down
docker volume rm wso2apim-with-is-as-km_volume_db wso2apim-with-is-as-km_volume_db 
docker compose up
docker compose down
docker volume rm wso2apim-with-is-as-km_volume_db
docker compose up
docker volume rm wso2apim-with-is-as-km_volume_db
docker compose stop
docker volume rm wso2apim-with-is-as-km_volume_db
docker compose down
docker volume rm wso2apim-with-is-as-km_volume_db
docker compose up
docker compose down
docker volume rm wso2apim-with-is-as-km_volume_db
docker compose up
docker compose down
docker volume rm wso2apim-with-is-as-km_volume_db
docker compose up
docker compose up --detach 
docker 
kubectl exec -it -n test-ciam am-pattern-3-am-cp-1-deployment-567fcd5549-69sbs -- /bin/bash
kubectl -n test-ciam port-forward wso2db-pgo-cluster-instance1-sv6x-0 54322:432
kubectl -n test-ciam port-forward wso2db-pgo-cluster-instance1-ngdc-0 54322:432
kubectl -n test-ciam port-forward wso2db-pgo-cluster-instance1-sv6x-0 54322:5432
kubectl -n test-ciam logs wso2db-pgo-cluster-instance1-ngdc-0 -f
cd ..
cd 
cd o4b/scripts/
ll
nvim .
nvim
cd ~
cd .config/
ll
mv ~/.config/nvim{,.bak.20240822}
ll
mv nvim.bak nvim.bak.20240724
ll
cd ~/.local/share/
ll
mv nvim.bak nvim.bak.20240724
ll
mv nvim{,.bak.20240724}
ll
cd nvim.bak.20240724/
ll
nvim
cd nvim/
ll
cd ..
ll
cd ..
ll
cd nvim.bak.20240724/
ll
mv nvim/ nvim.bak.20240823
ll
mv nvim.bak.20240823/ ../nvim.bak.20240823
ll
cd ..
ll
cd nvim.bak.20240823/
ll
cd ..
ll
cd nvim
ll
cd ..
cd state/
ll
mv nvim.bak/ nvim.bak.20240724
ll
mv nvim nvim.bak.20240723
mv nvim nvim.bak.20240723 nvim.bak.20240823
mv nvim.bak.20240723 nvim.bak.20240823
ll
cd ~/.cache/
ll
mv nvim.bak/ nvim.bak.20240724
mv nvim nvim.bak.20240823
ll
cd ~
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
ll
cd .config/nvim
ll
nvim .
cd 
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
kitty
cd .local/
ll
cd kitty.app/
;;
ll
cd bin/
ll
./kitt
./kitty
cd ..
ll
cd bin/
ll
man ls
man ln
cat fd 
cd fd
ll
man ln
ln -s ~/.local/kitty.app/bin/kitty
ll
ln -s ~/.local/kitty.app/bin/kitten 
ll
man ln
cd
nano .bashrc 
kitty
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
echo 'kitty.desktop' > ~/.config/xdg-terminals.list
cd .config/
ll
cd kitty/
ll
cp kitty-master/dracula.conf kitty-master/diff.conf .
ll
rm -rf kitty-master
ll
ll -H
ls -alH
ls -al
ls -H
ls -h
man ls
ls -alh
echo "include dracula.conf" >> ~/.config/kitty/kitty.conf
ll
exit
htop
nvim .
source ~/.bashrc 
clear
cd
pwd
nvim .
pwd
cd o4b/
ll
kubectl config current-context 
kubectl -n test-ciam port-forward wso2db-pgo-cluster-instance1-sv6x-0 54322:5432
kubectl -n test-eregistry port-forward eregistry-pgo-cluster-instance1-zt6k-0 54322:5432
tmux
ll
cd gnome-terminal/
ll
./install.sh 
cd gnome-terminal/
./install.sh 
exit
sudo nala update
sudo nala list --upgradable 
nvim .config/kitty/kitty.conf 
exit
tmux
exit
ll
tmux
nvim .config/kitty/kitty.conf 
ll
nvim ~/.config/kitty/kitty.conf 
exit
ll
tmux
tmux 
tmux --help
tmux -help
tmux ?
man tmux
tmux 
cd .config/kitty/
nvim .
cd ..
cd o4b/
nvim .
cd ..
cd .config/
ll
cd gtk-4.0/
ll
nano settings.ini 
cd ..
cd gtk-3.0/
ll
nano settings.ini 
ll
cd 
nvim .
tmux
cd
ll
nvim
exit
nvim .
nvim .
tmux
exit
journalctl 
journalctl -f
sudo journalctl -o verbose -f
sudo journalctl -f
cd gitlab.o4b.tech/
ll
cd pkuszyk/
ll
cd scripts/
ll
nvim .
whereis ripgrep
ripgrep
nvim .
cd 
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
nano .bashrc 
ll
nano .bash_aliases 
config 
ll
cd .local/bin/
;;
ll
cd /usr/bin/
ll
cd
whereis config
nano .bash_aliases 
nano .bashrc 
ll
nano .profile 
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bash_aliases 
nano .bash_aliases 
config status
config add .bashrc .bash_aliases .profile 
config commit -m "add .bashrc, .bash_aliases and .profile"
config push
git remote add origin https://github.com/kuszyp/cfg.git
git remote add origin git@github.com:kuszyp/cfg.git
config remote add origin git@github.com:kuszyp/cfg.git
config push
config push --set-upstream origin master
ll
cd .cfg/
ll
cd ..
rm -rf .cfg/
git init --bare --initial-branch=main $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config add .bashrc 
config commit -m "Add .bashrc"
commit push
config push
config remote add origin git@github.com:kuszyp/cfg.git
config push
config push --set-upstream origin main
nvim .ssh/known_hosts 
config push --set-upstream origin main
config remote add origin https://github.com/kuszyp/cfg.git
config remote delete origin
config remote remove origin
config remote add origin https://github.com/kuszyp/cfg.git
config push --set-upstream origin main
config push
config pull
config pull origin main
config pull
config branch --set-upstream-to=origin/main main
config pull
config config pull.rebase true
config pull
config push
config pull
cd .cfg/
ll
cd ..
ll
nvim .
sudo nala update
sudo nala upgrade
exit
htop
exit
python3 -m pip install --user --upgrade pynvim
cd
sudo nala install python3-pynvim 
exit
fish
cd ..
cd 
nvim .
htop
exit
nvim .
cd ..
nvim .
config add .config/nvim
config status
config -f "Add nvim config"
config commit -f "Add nvim config"
config commit -m "Add nvim config"
config push
config status
config add README.md 
config commit -m "Update README.md"
config push
clear
config status
echo ".cfg" >> .gitignore
ll
config add .tmux.conf .tmux
cd .tmux/plugins/tmux-continuum/
ll
git pull
rm -rf .git
ll
cd ..
ll
cd tmux-resurrect/
;;
ll
git pull
rm -rf .git
cd ..
cd tmux-sensible/
ll
git pull
rm -rf .git
cd ..
ll
cd tmux-themepack/
ll
git pull
rm -rf .git
cd ..
ll
cd tmux
ll
git pull
ll
cd ..
ll
cd tpm/
ll
git pull
rm -rf .git
cd ..
ll
cd vim-tmux-navigator/
git pull
cd ..
ll
cd ..
config add .tmux.conf .tmux
config status
config submodule add https://github.com/dracula/tmux .tmux/plugins/tmux
config delete .tmux/plugins/tmux
config del .tmux/plugins/tmux
config remove .tmux/plugins/tmux
config restore --staged .tmux/plugins/tmux
config restore --staged .tmux/plugins/vim-tmux-navigator/
config status
config submodule add https://github.com/dracula/tmux .tmux/plugins/tmux
config submodule add https://github.com/christoomey/vim-tmux-navigator .tmux/plugins/vim-tmux-navigator
config status
config commit -m "Add tmux"
config pull
config push
ll
cd git
ll
cat README.md 
git clone https://github.com/cykerway/complete-alias.git
ll
cd ..
ll
llcd git
ll
cd git
LL
ll
rm -rf complete-alias/
ll
cd ..
git clone https://github.com/cykerway/complete-alias.git
cp complete-alias/ ~/.complete_alias
cp complete-alias ~/.complete_alias
cd complete-alias/
ll
cd ..
cp complete-alias/complete_alias ~/.complete_alias
echo ". ~/.complete_alias" >> ~/.bash_completion
echo "complete -F _complete_alias config" >> ~/.complete_alias 
nano .bashrc 
nano .complete_alias 
ll
nano .bash_completion 
nano .bashrc 
source .bashrc 
config status
nvim README.md 
sudo nala install bash-completion 
nvim README.md 
config status 
config add .bashrc .bash_aliases .bash_completion
config commit -m "Update .bashrc and add .bash_aliases and .bash_completion"
config status 
config add complete-alias/ .complete_alias
config remove complete-alias/
config rm complete-alias/
config status 
config restore --staged complete-alias/
config status 
ll
config status 
config add README.md
cat .gitconfig 
cat .gitmodules 
cat .git-credentials 
config add .gitmodules .gitconfig .gitignore
config commit -m "Add git settings"
git push
command push
config push
config add .config/kitty/ .config/user-dirs.dirs .config/user-dirs.locale
config add .config/nvim.bak.20240822/
config add .local/share/tmux/ .local/share/nvim .local/share/nvim.bak.20240823/
config status 
config restore --staged .local/share/tmux/
config status 
config restore --staged .local/share/nvim
config status 
config restore --staged .local/share/nvim.bak.20240823/
config status 
ll
config commit -m "Add config for kitty and user-dir and bak nvim config"
config push
npm i -g neovim
sudo npm i -g neovim
ll
cd .local/
ll
cd share/
ll
cd ..
cd .config/
ll
cd ..
cd .local/
ll
cd share/
ll
cd ..
cd 
python3
python3 --version
kitten choose-fonts
kitten 
kitten choose_fonts
nvim ~/.config/kitty/
nvim -version
cd 
nvim
cd o4b/scripts/
ll
nvim .
config add ~/.config/fish 
config status
config add ~/.config/nvim
config add ~/.config/lazygit
config status
config status -u
config cd ~
cd ~
config commit -m "Add fish config and lazygit config"
config push
config cd ~
pwd
nvim .
nvim
nvim .
nvim
nvim .
nvim
nvim .
nvim
nvim .
nvim
nvim .
nvim
config status
config add .config/nvim
config status
config commit -m "Update nvim config"
config push
nvim .
nvim -version
nvim -version
exit
nvim .
exit
nvim
exit
nvim -version
nvim
whereis nvim
nano ~/.bashrc 
sudo nala remove nvim
sudo nala remove vim
sudo apt cache vim
sudo apt install nvim
sudo apt install vim
sudo apt install nvim
whereis nvim
cd /usr/bin/
ll
cd /etc/alternatives/
ll
cd /usr/bin/
whereis nvim
cd /usr/share/
ll
cd vim/
ll
cd vim90/
ll
cat debian.vim 
ll
cd doc/
ll
cat README.Debian 
clear
cd ..
cd nvim/
ll
cd runtime/
ll
cd ftplugin/
;;
ll
cd ..
ll
cd lua/
ll
cd vim/
ll
cd ..
ll
cd ..
update-alternatives --config vim
update-alternatives --config nvim
set -u
whereis nvim
sudo nala install nvim
tmux
nvim .config/kitty/
exit
nvim .
clear
kitty
cd Downloads/
ll
sudo apt install ./nvim-linux64.deb 
sudo nala remove neovim
sudo nala install ./nvim-linux64.deb 
sudo nala update
sudo nala upgrade
cd
nvim
whereis nvim
nvim -version
cd /opt/nvim-linux64/
ll
cd bin/
ll
./nvim -version
cd ..
ll
cd ..
ll
sudo rm -rf nvim-linux64/
ll
cd
nvim .bashrc 
cd /etc/
ll
cd alternatives/
ll
cd ..
ll
cd default/
ll
cd ..
cd profile.d/
ll
cat maven.sh 
cat bash_completion.sh 
cd ..
ll
cd vim/
ll
cat vimrc
cat vimrc.tiny 
ll
cd ..
ll
cat profile
cd environment.d/
ll
cd ..
cat environment
ll
cat bash.bashrc 
cd ..
whereis nvim
nvim
source ~/.config/kitty/kitty.conf 
kitten --help
kitten choose-fonts
mv * /usr/share/fonts/
sudo mv * /usr/share/fonts/
cd /usr/share/fonts
ll
sudo chmod -R 766 *
ll
sudo chmod -R 755 *
ll
tmux
OB=+
cd /usr/share/fonts
ll
cd SourceCodePro/
ll
cd ..
ll
cd truetype/
ll
cd noto/
ll
cd ..
ll
cd opentype/
ll
cd cantarell/
ll
cd ..
ll
cd urw-base35/
ll
cd ..
ll
cd X11/
ll
cd misc/
ll
cd ..
ll
cd roboto/
ll
cd ll
cd ..
ll
mc
sudo mc
ll
cd truetype/
ll
cd noto/
ll
cd ..
kitten choose-fonts
kitty list-fonts
sudo journalctl -f
cd /var/log/
ll
tmux
fc-match monospace
fish
nvim
nvim .
nvim
nvim .
exit
nvim .config/kitty/
clear
exit
cd
fc-match mono
exit
exit
nvim .
clear
nvim .
exit
clear
exit
tmux
u
exit
nvim
exit
kitten choose-fonts
tmux
kubectl config current-context 
kubectl -n test-ciam get-pods
kubectl -n test-ciam get pods
kubectl -n test-ciam delete pod am-pattern-3-is-deployment-0 
kubectl -n test-ciam get pods
cat /etc/hosts
git config pull.rebase true
clear
config stqatus
config status 
config add .bashrc .config/kitty/ .config/nvim
config status 
config commit -m "chore: update .bashrc, kitty and nvim config"
config push
pwd
nvim .
exit
vexit
exit
nvim .
clear
nvim .
exit
whereis lazygit
config status 
nvim 
nvim .
exit
nvim .
nvim .
cd
sudo npm i -g markdown-top
npm install --global markdown-toc
sudo npm install --global markdown-toc
nvim .
nvim
nvim .
yarn exec env:
yarn exec env
corepack enable
sudo corepack enable
yarn exec env
cd o4b/scripts/
cd add_profile/
yarn exec env
nvim .
cd
nano .bashrc 
exit
tmux
exit
exit
nvim .
nvim .bashrc 
nvim .
exit
cd github.com/
cd kuszyp/docker/
exit
tmux
tmux
cd .tmux/
ll
cd plugins/
ll
cd t
cd tpm/
ll
cat README.md 
ll
cd ..
ll
cd tmux
ll
cd ..
ll
cd ..
cd .config/
ll
cd ..
nvim .tmux
nvim .tmux.conf 
exit
nvim .
exit
nvim .
clear
cd 
nvim .tmux.conf 
exit
npm install crypto-js
cd github.com/kuszyp/docker/
ll
nvim .
pwd
qa
nvim .
nvim .,
nvim .
m`function postRequest(lib, requestUrl, requestData, requestHeaders) {
  return new Promise((resolve, reject) => {
    const postData = querystring.stringify(requestData);

    let headers = { 'Content-Length': Buffer.byteLength(postData) };
    Object.keys(requestHeaders).forEach((i) => {
      headers[i] = requestHeaders[i];
    });

    const request = lib.request(requestUrl, {
      method: 'POST',
      headers: headers
    }, (response) => {
      let data = '';

      // COllect the response body data
      response.on('data', (chunk) => {
        data += chunk;
      });

      // Resolve the promise once all data is received
      response.on('end', () => {
        resolve(JSON.parse(data));
      });
    }).on('error', (err) => {
      reject(err);
    });

    request.write(postData);
    request.end();
  });
}
````````12~2~const { v4: uuidv4 } = require("uuid");2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~2~:q
exit
nvim .
clear
config status
config commit -m "rename nvim plugins configs"
config push
config status 
nvim ~/.cfg/config 
cd 
ll
git config --list --show-origin --show-scope 
config status
config add .bashrc .config/nvim .tmux.conf
config status
config commit -m "chore: rename nvim setup plugins files"
config push
config status
clear
cd o4b/scripts/add_profile/
ll
node app.js 
npm install querystring
node app.js 
clear
node app.js 
clear
node app.js 
clear
node app.js 
npm install uuid
node app.js 
exit
kubectl -n test-eregistry port-forward eregistry-pgo-cluster-instance1-zt6k-0 54322:5432
exit
kubectl config current-context 
kubectl -n test-eregistry port-forward services/portal-registry-service 8090:8080
exit
kubectl -n test-ciam port-forward wso2db-pgo-cluster-instance1-sv6x-0 54321:5432
exit
cd github.com/kuszyp/node-scripts/
ll
cd easyredmine-mock/
ll
npm install express
exit
nvim .
nvim
nvim .
cd github.com/kuszyp/docker/
ll
cd wso2apim-with-is-as-km/
ll
docker compose down
docker container ;s
docker container ls
docker container ls -all
docker container prune 
docker container ls -all
docker image ls
docker image rm wso2-bootstrap-bootstrap:latest wso2apim-with-is-as-km-db:latest wso2apim-with-is-as-km-is:latest 
docker image ls
docker image rm wso2apim-with-is-as-km-am:latest 
docker image ls
docker volume ls
docker volume rm wso2apim-with-is-as-km_volume_db 
docker volume ls
docker volume ls --all
docker compose up --detach 
cd ..
cd wso2-bootstrap/
ll
docker compose up
netstat -ltnp
sudo netstat -ltnp
sudo nala install net-tools 
netstat -ltnp
exit
cd github.com/kuszyp/node-scripts/easyredmine-mock/
ll
node issue.js 
node -version
node --version
history|grep docker
ll
docker compose up
exit
cd o4b/scripts/add_profile/
;;
ll
node server.js 
npm install express
node server.js 
cd ..
ll
cd scripts/
ll
git clone https://github.com/kuszyp/scripts.git .
git init
git branch -m main
git config --global init.defaultBranch main
git status
git add .
git status
git remote add origin https://github.com/kuszyp/scripts.git
fir commit -m "initial commit"
git commit -m "initial commit"
git push 
git push --set-upstream origin main
git pull
git branch --set-upstream-to=origin/main main 
git pull
git config pull.rebase true
git pull\
git pull
git status
git push
ll
cd ll
ll
cd ..
ll
cd crawler/
ll
cd ..
mv crawler/ java-crawler
ll
cd java-crawler/
ll
git init
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin https://github.com/kuszyp/java-crawler.git
git push 
git push --set-upstream origin main 
git pull
git log
cd ..
cd o4b/gitlab.o4b.tech/pu/ciam/apimanager-definitions/
ll
cd internal-services/
;;
ll
cd apis/
ll
mkdir easyredmine-actions-api
ll
cd easyredmine-actions-api/
cd ..
nvim .
exit
sudo nala install qnapi
qnapi Mr.Inbetween.S01E0*
exit
cd github.com/kuszyp/docker/
cd wso2apim-with-is-as-km/
docker logs wso2apim-with-is-as-km-am-1 
docker logs wso2apim-with-is-as-km-am-1 -f
docker compose down
docker ls
docker ps
docker ps --all 
docker image --all
docker image ls --all
docker image rm easyredmine-mock-easyredmine-server:latest wso2-bootstrap-bootstrap:latest wso2is-db:latest wso2is-is:latest wso2apim-with-is-as-km-db:latest 
docker image ls --all
docker image rm wso2apim-with-is-as-km-am:latest wso2apim-with-is-as-km-is:latest 
docker image ls --all
docker image rm wso2is-am:latest 
docker image ls --all
docker volume prune
docker volume ls
docker volume rm wso2apim-with-is-as-km_volume_db 
docker network 
docker network ls
docker network prune
docker network ls
cd ..
cd wso2-bootstrap/
docker compose up --detach 
docker logs wso2-bootstrap-bootstrap-1 -fg
docker logs wso2-bootstrap-bootstrap-1 -f
docker exec -it wso2apim-with-is-as-km-am-1 /bin/bash
cd ..
cd 
cd o4b/gitlab.o4b.tech/pu/ciam/docker/docker-apim/
ll
git pull
curl 'https://test-api.pm.bydgoszcz.pl/easyredmine-actions-api/1.0.0/issues'   -H 'sec-ch-ua: "Not)A;Brand";v="99", "Google Chrome";v="127", "Chromium";v="127"'   -H 'X-Language: PL'   -H 'sec-ch-ua-mobile: ?0'   -H 'Authorization: Bearer eyJ4NXQiOiJabVJoT1RGbE1UQTVOR014TVdVM04yWXdPV1l5TWpJeE5tTXlPRGcxT1dRM01URTRabVF6TkdJMU1UQXhNR1F3TTJSaFptWXdaV0UzTnpBNE9EZ3laZyIsImtpZCI6IlptUmhPVEZsTVRBNU5HTXhNV1UzTjJZd09XWXlNakl4Tm1NeU9EZzFPV1EzTVRFNFptUXpOR0kxTVRBeE1HUXdNMlJoWm1Zd1pXRTNOekE0T0RneVpnX1JTMjU2IiwidHlwIjoiYXQrand0IiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiJDSVRJWkVOU1wvMzY5YzgzZTYtZGQ4Zi00ZDAyLTk5YWItMzZkYzk1MWE5OWI4IiwiYXV0IjoiQVBQTElDQVRJT05fVVNFUiIsInBjcHIiOiJQTV9QUk9GSUxfRklSTU9XWV9BRE1JTklTVFJBVE9SIiwiYmluZGluZ190eXBlIjoic3NvLXNlc3Npb24iLCJwY2tpcCI6IlhYWC5MT0dJTkdPViIsImlzcyI6Imh0dHBzOlwvXC90ZXN0LWxvZ2luLnBtLmJ5ZGdvc3pjei5wbFwvb2F1dGgyXC90b2tlbiIsImdpdmVuX25hbWUiOiJvMDEiLCJjbGllbnRfaWQiOiJzdlJTZmFUUkVSSXNNalVyOGlyeXY0VkRpbzhhIiwicGNzdGsiOiJQTEFURk9STUFfTUlFSlNLQSIsImF1ZCI6InN2UlNmYVRSRVJJc01qVXI4aXJ5djRWRGlvOGEiLCJwY2FwayI6IktXS19IT0xESU5HX1NQT0xLQV9BS0NZSk5BXzM4ODgzMDg2NyIsIm5iZiI6MTcyNDkxOTI2MiwicGNpdmwiOiIxIiwiYXpwIjoic3ZSU2ZhVFJFUklzTWpVcjhpcnl2NFZEaW84YSIsInNjb3BlIjoiZW1haWwgaW50ZXJuYWxfbG9naW4gb3BlbmlkIHBjIHByb2ZpbGUiLCJwY2lkIjoiMmM4NDczOGYtMGJlZC00YjM2LTk5NDItNTYxNzkyNDk0Y2I2IiwiZXhwIjoxNzI0OTIyODYyLCJpYXQiOjE3MjQ5MTkyNjIsInBjYXRrIjoiUExBVEZPUk1BX01JRUpTS0EuTU5QX0JZREdPU1pDWiIsImZhbWlseV9uYW1lIjoiRmFtaWxpIG8wMSIsImJpbmRpbmdfcmVmIjoiZmM1YTE1MmYwMTM1OGMyZmJiYTIzODcxMzlhNTU2NDgiLCJqdGkiOiI2NDgzMDMyMi0zMGJlLTQ3NjUtYTE3Yi1mNjU5ODFiMTFhNzciLCJlbWFpbCI6Im8wMUBnbWlhbC5jb20iLCJwY3RsIjoiendwIn0.hPAKqgYYOQgGPh9fSq2RytYsKM2zrp3EEj8WnL0CpnYK0-a_KXmrJA3p1zftgS-fPEoC9WnH75wUrEUHu80auWzAksujejHrnYcFcyIzcVcumfvGs-lSOFmTrXd9zw7nJCJjLFhgPMMV7z2gu3lGJnpMSfCCj1CYZbg_-5NlV7ElhyH734LGSigiybR068KsiTSaXDQns4xeH1-O_CMdhEfMG_Ila0JqP4JsWkxgxygqBQkqntUhHaHV8_bfPhIiFu754uZlT0OrC4ekkHw1lQFLjpPkrhkrytgARC23wpmhyy9L4H3hKUFCi_qTJeAYUctf2ihnyhyAW79k6LVAlA'   -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'   -H 'Content-Type: application/json'   -H 'Accept: application/json, text/plain, */*'   -H 'X-Transaction-Id: 01ee0bd3-b036-461b-be8f-d9afe5e808a3'   -H 'Referer: http://localhost:9000/'   -H 'X-Request-Id: ee4994b1-37d9-44bc-baf4-edb77ef193b3'   -H 'sec-ch-ua-platform: "macOS"'   --data-raw '{"issue":{"subject":"Zgłoszenie utworzone przez formularz kontaktowy portalu mieszkańca dnia: 29-08-2024, 10:14","description":"<strong>Opis problemu: </strong></br>Test API EZ. </br></br>\n            <strong>Informacje dodatkowe:</strong>\n                </br>Temat zgłoszenia: Błąd techniczny\n                </br>Osoba zgłaszająca: KWK HOLDING SPÓŁKA AKCYJNA\n                </br>Numer telefonu zgłaszającego: 123456789\n                </br>Klucz aktywnego profilu: KWK_HOLDING_SPOLKA_AKCYJNA_388830867","project_id":181,"tracker_id":3,"easy_email_to":"lsachryn@o4b.pl"}}'
clear
curl 'https://test-api.pm.bydgoszcz.pl/easyredmine-actions-api/1.0.0/issues' -H 'sec-ch-ua: "Not)A;Brand";v="99", "Google Chrome";v="127", "Chromium";v="127"'   -H 'X-Language: PL'   -H 'sec-ch-ua-mobile: ?0'   -H 'Authorization: Bearer eyJ4NXQiOiJabVJoT1RGbE1UQTVOR014TVdVM04yWXdPV1l5TWpJeE5tTXlPRGcxT1dRM01URTRabVF6TkdJMU1UQXhNR1F3TTJSaFptWXdaV0UzTnpBNE9EZ3laZyIsImtpZCI6IlptUmhPVEZsTVRBNU5HTXhNV1UzTjJZd09XWXlNakl4Tm1NeU9EZzFPV1EzTVRFNFptUXpOR0kxTVRBeE1HUXdNMlJoWm1Zd1pXRTNOekE0T0RneVpnX1JTMjU2IiwidHlwIjoiYXQrand0IiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiJDSVRJWkVOU1wvMzY5YzgzZTYtZGQ4Zi00ZDAyLTk5YWItMzZkYzk1MWE5OWI4IiwiYXV0IjoiQVBQTElDQVRJT05fVVNFUiIsInBjcHIiOiJQTV9QUk9GSUxfRklSTU9XWV9BRE1JTklTVFJBVE9SIiwiYmluZGluZ190eXBlIjoic3NvLXNlc3Npb24iLCJwY2tpcCI6IlhYWC5MT0dJTkdPViIsImlzcyI6Imh0dHBzOlwvXC90ZXN0LWxvZ2luLnBtLmJ5ZGdvc3pjei5wbFwvb2F1dGgyXC90b2tlbiIsImdpdmVuX25hbWUiOiJvMDEiLCJjbGllbnRfaWQiOiJzdlJTZmFUUkVSSXNNalVyOGlyeXY0VkRpbzhhIiwicGNzdGsiOiJQTEFURk9STUFfTUlFSlNLQSIsImF1ZCI6InN2UlNmYVRSRVJJc01qVXI4aXJ5djRWRGlvOGEiLCJwY2FwayI6IktXS19IT0xESU5HX1NQT0xLQV9BS0NZSk5BXzM4ODgzMDg2NyIsIm5iZiI6MTcyNDkxOTI2MiwicGNpdmwiOiIxIiwiYXpwIjoic3ZSU2ZhVFJFUklzTWpVcjhpcnl2NFZEaW84YSIsInNjb3BlIjoiZW1haWwgaW50ZXJuYWxfbG9naW4gb3BlbmlkIHBjIHByb2ZpbGUiLCJwY2lkIjoiMmM4NDczOGYtMGJlZC00YjM2LTk5NDItNTYxNzkyNDk0Y2I2IiwiZXhwIjoxNzI0OTIyODYyLCJpYXQiOjE3MjQ5MTkyNjIsInBjYXRrIjoiUExBVEZPUk1BX01JRUpTS0EuTU5QX0JZREdPU1pDWiIsImZhbWlseV9uYW1lIjoiRmFtaWxpIG8wMSIsImJpbmRpbmdfcmVmIjoiZmM1YTE1MmYwMTM1OGMyZmJiYTIzODcxMzlhNTU2NDgiLCJqdGkiOiI2NDgzMDMyMi0zMGJlLTQ3NjUtYTE3Yi1mNjU5ODFiMTFhNzciLCJlbWFpbCI6Im8wMUBnbWlhbC5jb20iLCJwY3RsIjoiendwIn0.hPAKqgYYOQgGPh9fSq2RytYsKM2zrp3EEj8WnL0CpnYK0-a_KXmrJA3p1zftgS-fPEoC9WnH75wUrEUHu80auWzAksujejHrnYcFcyIzcVcumfvGs-lSOFmTrXd9zw7nJCJjLFhgPMMV7z2gu3lGJnpMSfCCj1CYZbg_-5NlV7ElhyH734LGSigiybR068KsiTSaXDQns4xeH1-O_CMdhEfMG_Ila0JqP4JsWkxgxygqBQkqntUhHaHV8_bfPhIiFu754uZlT0OrC4ekkHw1lQFLjpPkrhkrytgARC23wpmhyy9L4H3hKUFCi_qTJeAYUctf2ihnyhyAW79k6LVAlA'   -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'   -H 'Content-Type: application/json'   -H 'Accept: application/json, text/plain, */*'   -H 'X-Transaction-Id: 01ee0bd3-b036-461b-be8f-d9afe5e808a3'   -H 'Referer: http://localhost:9000/'   -H 'X-Request-Id: ee4994b1-37d9-44bc-baf4-edb77ef193b3'   -H 'sec-ch-ua-platform: "macOS"'   --data-raw '{"issue":{"subject":"Zgłoszenie utworzone przez formularz kontaktowy portalu mieszkańca dnia: 29-08-2024, 10:14","description":"<strong>Opis problemu: </strong></br>Test API EZ. </br></br>\n            <strong>Informacje dodatkowe:</strong>\n                </br>Temat zgłoszenia: Błąd techniczny\n                </br>Osoba zgłaszająca: KWK HOLDING SPÓŁKA AKCYJNA\n                </br>Numer telefonu zgłaszającego: 123456789\n                </br>Klucz aktywnego profilu: KWK_HOLDING_SPOLKA_AKCYJNA_388830867","project_id":181,"tracker_id":3,"easy_email_to":"lsachryn@o4b.pl"}}'
exit
kubectl -n test-ciam logs am-pattern-3-am-gateway-default-deployment-566b498d55-gwjth -f
kubectl -n test-ciam logs am-pattern-3-am-gateway-default-deployment-566b498d55-qtctn -f
exit
cd github.com/kuszyp/
ll
cd node-scripts/
ll
cd easyredmine-mock/
ll
docker compose down
docker compose up --detach 
docker logs easyredmine-mock-easyredmine-server-1 -f
exit
kubectl -n test-eregistry port-forward portal-registry-service-66d5dfdf77-28wfg 8090:8080
exit
cd o4b/gitlab.o4b.tech/pu/ciam/
ll
cd docker/
ll
cd docker-init-is/
ll
git pull
cp PU-IS-soapui-project.xml ~/github.com/kuszyp/docker/wso2-bootstrap/
cd 
cd github.com/kuszyp/
ll
cd scripts/
ll
cd ..
ll
mkdir node-scripts
ll
cd node-scripts/
ll
cd add_profile/
;;
ll
cd ..
cd 
cd github.com/kuszyp/node-scripts/
mkdir easyredmine-mock
ll
mv add_profile/ add-profile
ll
cd easyredmine-mock/
npm init
nvim .
cd ..
cd o4b/gitlab.o4b.tech/pu/ciam/apimanager-definitions/internal-services/
;;
ll
cd apis/
;;
ll
cd profile-process-api/
nvim .
cd 
cd github.com/kuszyp/
cd node-scripts/
cd add-profile/
ll
nvim .
node app.js 
exit
