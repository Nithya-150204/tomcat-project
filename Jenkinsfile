LiNUX
ques.Create the following users,groups and group membership
-A group named sysadm
-A user "harry" who belongs to sysadm as a secondary group.
-A user "natasha" who belongs to sysadm as a secondary group.
-A user "sarah" who does not have the access to an interactive shell and who is not a member of sysadm group.
-"harry" "natasha"  and "sarah" should all have password of password 
SOl:-
cat /etc/group
groupadd sysadm
cat /etc/group/ -i sysadm
useradd harry
passwd harry same for natasha and sarah
usermod -G sysadm harry
usermod -G sysadm natasha
usermod -s /sbin/nologin sarah
#####
##adding same user in 2 groups 
useradd -a -G sales Sam
useradd -a -G market Sam
cat /etc/group | grep -i sales
####################################################################################################################
ques.create a collabrative directory /shared/sysadm with th following characteristics:
-Group owernship of /shared/sysadm is sysadm
-The directory should be readable , writable and accesiable to member of sysadm . but not to any other user.
-Files created in /shared/sysadm automatically have group owernshipset to the sysadm group
sol:-
mkdir -p /shared/sysadm
ll -d /shared/sysadm
chgrp sysadm /shared/sysadm
ll -d /shared/syadm
chmod 770 /shared/sysadm
ll -d /shared/syadm
chmod g+s /shared/sysadm
su -harry
cd /shared/sysadm
ll touch harry-file
##########################################################################################################################
TOMCAT-SERVER
* first 3 instances dev-server , jenkins-server , web-server , tomcat-server
dev-server = t2.micro , size = 12
jenkins-server = t2.medium , size = 8
tomcat-server = t2,micro , size = 10
ON DEV-SERVER 
sudo su -
set hostname - dev-server.example.com
bash
yum install git 
CREATE A PUBLIC REPO AND CLONE
 1  yum install git
    2  history
    3  git clone git@github.com:sanjayguruji/web-repo.git
    4  git clone https://github.com/sanjayguruji/web-repo.git
    5  ssh-keygen
    6  cd .ssh/
    7  cat id_rsa.pub (add the ssh key to the github)
    8  cd
    9  cd web-repo
   10  git init
   11  git add .
   12  git commit -m devops -a
   13  git branch -M main
   14  git remote add origin git@github.com:mansi-lti/tomcat.git
   15  git remote remove origin
   16  git remote add origin git@github.com:mansi-lti/tomcat.git
   17  git push origin main
CONNECT TO JENKINS SERVER
sudo su -
hostname
bash
 wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
    2  rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
    3  yum upgrade
    4  yum install java-17-amazon-corretto -y
    5  yum install jenkins -y
    6  systemctl enable jenkins
    7  systemctl start jenkins
    8  systemctl status jenkins
go to the browser and copy ip-address:8080 and create webhook
after sign in install plugins like maven , deploy to container , github integration then restart the jenkins
yum install maven
CONNECT TO APACHE SERVER
sudo su -
hostname = apache.example.com
bash
yum install java*
from google copy the link for tomcat 9 download select tar.gz file
 yum install wget
 wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.106/bin/apache-tomcat-9.0.106.tar.gz
 tar -xzf apache-tomcat-9.0.106.tar.gz
 ll
move to jenkins server 
mvn -v (copy the maven home path and java path and paste in the jenkins web server under tools)
next create new item and start the build if not coming install git on jenkins server
next move to apache server 
 cd  apache-tomcat-9.0.106
 cd bin
  ll
  chmod +x startup.sh
  chmod =x shutdown.sh
  chmod +x shutdown.sh
open the medium and follow the steps
after runnig the ./startup copy the ip address with port no 8080
login manager app username and pass admin 
then the configuration part and create credentials with username depolyer and pass depolyer
add container
make changes from github and check wheather the changes are reflecting or not
####################################################################################################
Docker_installation & Containers
:: yum install docker*

:: docker pull jenkins/jenkins

:: docker ps

:: systemctl start docker

:: systemctl enable docker

:: docker info

:: docker ps

:: Creating a container for jenkins
-- docker run -itd --name <Name_of_container> -p 8080:8080 jenkins/jenkins

:: docker ps -a

:: docker exec -it <container_id> /bin/bash

:: after we logged into 
-- <public ip-address>:8080
-- copy the directoryy

:: cat <paste_directory>

:: copy the password and paste it in browser login page
###################################################################################################
jenkins_on_aws
:: up to date on your instance by using
--- yum update –y

:: Add the Jenkins repo using the following command
--- wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

:: Import a key file from Jenkins-CI to enable installation from the package
--- rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
--- yum upgrade

:: Install Java
--- yum install java-17-amazon-corretto -y

:: Install Jenkins
--- yum install jenkins -y

:: Enable the Jenkins service to start at boot
--- systemctl enable jenkins

:: Start Jenkins as a service
--- systemctl start jenkins


:: You can check the status of the Jenkins service using the command
--- systemctl status jenkins
