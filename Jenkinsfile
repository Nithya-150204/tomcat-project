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
----------------


 -create and instace with the security of http
-   1 sudo yum update -y
    2  yum install httpd -y
    3  systemctl start httpd
    4  systemctl enable httpd
    5  echo "hello everyone welcome to webserver" | sudo tee /var/www/html/index.html
    6  history
paste the id in google with http://(id)


---------
ands on lab and exersisescreate custome image

#!/bin/bash
yum update -y
yum install httpd -y
echo "heloo this is example for user" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd

-----------

 EFS

aws (normal)
ot@ip-172-31-14-229 efs]# history
    1  yum install nfs-utils -y
    2  systemctl restart nfs-server
    3  systemctl enable nfs-server
    4  systemctl status nfs-server
    5  mkdir efs
    6  sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 172.31.15.204:/ efs
    7  df -h
    8  cd /root/efs/
    9  touch devops.txt{1..10}
   10  ll
---------------
redhat-1b
 yum install nfs-utils -y
    2  systemctl start nfs-server
    3  systemctl enable nfs-server
    4  systemctl status nfs-server
    5  sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 172.31.15.204:/ efs
    6  mkdir remote
    7  sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 172.31.15.204:/ remote
    8  df -h
    9  cd /root/remote
   10  ll

-----------------
ubuntu

 apt-get update
    2  apt install nfs-common
    3  systemctl status nfs-common.service
    4  systemctl unmask nfs-common.service
    5  systemctl start nfs-common.service
    6  systemctl enable nfs-common.service
    7  systemctl status nfs-common.service
    8  mkdir devops
    9  sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 172.31.15.204:/ devops
   10  df -h
   11  cd /root/devops
   12  ll

----------------------------------------------------
create a instance 
create snapshot from root volume
from snapshot create a new vol ---data volume ---attach volume to instance
connect the instance through cmd
sudo su -
lsblk
mkfs.ext4 /dev/xvdb
df  -h
mkdir /data
mount /dev/xvdb /data/
df -h
cd /data
touch index.txt{1..20}
if you want to make the mount permanent like if any reboot happend then also the mount has to be there so for that
blkid
vim /etc/fstab
edit 1st line like this
UUID=abcd-1234 /data  ext4 dafaults,nofail 0 2
reboot and login again you will see your data
sudo su -
cd /data
ll

----------------------------------------------------------

 vpc:
1.vpc>create>my-vpc>10.0.0.0/16>
2.igw>attach to vpc
3.subnet > pub -1a-10.0.0.0/24
4.pri>1b-10.0.1.0/25
5.routetable>pub-subnet assco-edit routes-igw
pri-subnet Assoc -
6.create nategateway(pub)-allocate elastic ip-add to pri
7.ec2-pub-assign public enable-create sec grp,add http icmp
pri-create new key
8.connect public:
sudo su -
yum install httpd -y
systemctl restart httpd
systemctl enable httpd 
vim pri.pem(private key file name)
chmod 400 pri.pem
(now copy private instc id)
 sudo su -
ping google.com
