It is githubcode
####################
commit changes here

2nd changes are here#########
##########
yes  now we are editing######

Jenkins .....
Jenkin instance
    1  hostname
    2  ip a s
    3  free -h
    4  cat /proc/cpu_info
    5  cat /proc/cpuinfo
    6  sudo yum update -y
    7  sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
    8  rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
    9  yum upgrade
   10  sudo yum install java-17-amazon-corretto -y
   11  sudo yum install jenkins -y
   12  sudo systemctl enable jenkins
   13  sudo systemctl start jenkins
   14  systemctl status jenkins
   15  rpmquery jenkins
   16  cat /var/lib/jenkins/secrets/initialAdminPassword
   17  history




dev-server instance###
[root@dev-one project-x]# history
    1  yum install git -y
    2  ssh-keygen
    3  cat id_rsa.pub
    4  ll
    5  cd .ssd
    6  cd .ssh/
    7  cat id_rsa.pub
    8  cd ..
    9  mkdir /project-x
   10  cd /project-x
   11  git init
   12  vim index.html
   13  git add index.html
   14  git status
   15  git commit -m "first commit" index.html
   16  git branch -M main
   17  git remote add origin git@github.com:Divyaa059/devpps-pro.git


S3################################

     1yum update -y
Search amazon cli …..
    2  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    3  unzip awscliv2.zip
    4  sudo ./aws/install
    5  yum install python* -y
    6  aws --version
    7  aws configure
Web repo sanjaygurujiii
    8  sudo yum install automake fuse fuse-devel gcc-c++ git libcurl-devel libxml2-devel make openssl-devel
    9  git clone https://github.com/s3fs-fuse/s3fs-fuse.git
   10  ll
Go to  s3fs-fuse
./configure --prefix=/usr --with-openssl
   15  cd s3fs-fuse
   16  ll
   17  cd autogen.sh
   18  cd /autogen.sh
   19  ./autogen.sh
   20  ./configure --prefix=/usr --with-openssl
   21  make install
   22  cd ..
   23  vim /etc/passwd-s3fs
   24  sudo chmod 640 /etc/passwd-s3fs
   25  s3fs devps59 /mnt -o passwd_file=/etc/passwd-s3fs
   26  df -h
vpc##################################
    4  yum install httpd -y
    5  vim /var/www/html/index.html
    6  systemctl restart httpd
    7  systemctl enable httpd
    8  vim di.pem
    9  chmod 400 di.pem
   10  ssh -i "di.pem" ec2-user@10.0.1.120
    ping google.com 

########VPC WITH PEER CONNECTION
 
REGION 1:
Create a VPC 10.0.0.0/16
Create IGW and attach with VPC
ADD Subnet public :10.0.0.0/24
            private : 10.0.1.0/25
ADD Route Tables Public > connect with public subnet > edit routs and enable IGW
                  private > connect with private subnet
 
REGION 2:
Create a VPC 20.0.0.0/16
Create IGW and attach with VPC
ADD Subnet public :20.0.0.0/24
            private : 20.0.1.0/24
ADD Route Tables Public > connect with public subnet > edit routs and enable IGW
                  private > connect with private subnet
 

CREATE PUBLIC AND PRIVATE INSTANCES...................................................
Public --> my-vpc
            public-subnet
            public ip enable
            SG - SSH, HTTP, ALL ICMP IPv4
Private --> my-vpc
            private-subnet
            public ip disable
            SG - SSH, HTTP, ALL ICMP IPv4
 
 
INSTANCE 1 & 2 (public) :
 
sudo su -
passwd root
yum install httpd -y
systemctl restart httpd
systemctl enable httpd
vim /etc/ssh/sshd_config
(enable permit root login, and first yes)
systemctl restart sshd
systemctl enable sshd

 
[IF REQUIRED JUST DO:
cd /var/www/html
echo "This is my server" > index.html
systemctl restart httpd
(enable 8080 port and paste the public ip in web to see index.html  http://publicip:8080)]
 

cat > hari.txt
Hi
(ctrl + d)-- to save
scp hari.txt root@(opposite region public ip):/tmp
 
TO CHECK WHETHER FILE IS TRANSFERED
 
cd /tmp  (in other region)
ll
 
(file will be present)
 
  
 
PEER CONNECTION (DEDICATED ROUTE)---------------------------------------------------------------------------
 
VPC (N.Virginia) > peer connections > peer name > zone: us-east-2 > select vpc > VPC_ID of Ohio > create peer connection.
 
once added ACCEPT it in the Ohio vpc peering
 
Then in both region route table > edit routes > select peer connection and CIDR vice versa 
   N.Virginia : 20.0.0.0/16
   Ohio : 10.0.0.0/16
 
 
After that check ping connection :
   N.V   : ping (private ip of public instance ohio )
   Ohio  : ping (private ip of public instance N.V )
 
 
cat > hari.txt
Hi
(ctrl + d)-- to save
scp hari.txt root@(opposite region private ip):/tmp
 
Use this and check whether data is transferred.
 
cd /tmp  (in other region)
ll

########################

Step-2:- Install the dependencies.
-> In CentOS or Red Haty

 
sudo Yum update
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
aws --version
aws configure
copp access key :secret key
 
sudo yum install automake fuse fuse-devel gcc-c++ git libcurl-devel libxml2-devel make openssl-devel

 
In Ubuntu or Debian
 
 
sudo apt-get install automake autotools-dev fuse g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config
Step-3:- Clone s3fs source code from git.
 
 
git clone https://github.com/s3fs-fuse/s3fs-fuse.git

 
Step-4:- Now change to source code  directory, and compile and install the code with the following commands:
 
 
cd s3fs-fuse/
 
ll
./autogen.sh
./configure --prefix=/usr --with-openssl
make
sudo make install
verify pkg
which s3fs
 
 
Step-7 :- Create a new file in /etc with the name passwd-s3fs and Paste the access key and secret key in the below format .
 
 
touch /etc/passwd-s3fs
vim /etc/passwd-s3fs
 
Your_accesskey:Your_secretkey

 
Step-8:- change the permission of file
 
 
sudo chmod 640 /etc/passwd-s3fs
 
 
########################
for mounting s3 bucket
 
s3fs sanjaynn /mnt -o passwd_file=/etc/passwd-s3fs
---------------------
IAM

Step-2:- Install the dependencies.
 
-> In CentOS or Red Hat

 sudo Yum update


sudo yum install automake fuse fuse-devel gcc-c++ git libcurl-devel libxml2-devel make openssl-devel
 

In Ubuntu or Debian


sudo apt-get install automake autotools-dev fuse g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config
Step-3:- Clone s3fs source code from git.


git clone https://github.com/s3fs-fuse/s3fs-fuse.git
 

Step-4:- Now change to source code  directory, and compile and install the code with the following commands:


ll
./autogen.sh
./configure --prefix=/usr --with-openssl
make
sudo make install
 
verify pkg
which s3fs


Step-7 :- Create a new file in /etc with the name passwd-s3fs and Paste the access key and secret key in the below format .

1
2
touch /etc/passwd-s3fs
vim /etc/passwd-s3fs
1
Your_accesskey:Your_secretkey
 

Step-8:- change the permission of file


sudo chmod 640 /etc/passwd-s3fs


########################
for mounting s3 bucket

# s3fs sanjaynn /mnt -o passwd_file=/etc/passwd-s3fs

#df -h

Note For Redhat s3 Mounting
s3fs -o iam_role="s3role" -o url="https://s3-ap-south-1.amazonaws.com" -o endpoint=ap-south-1 -o dbglevel=info -o curldbg -o allow_other -o use_cache=/tmp sanjaynetwork /var/s3fs-demofs

-----------------------------
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

---------------------
🔧 STEP 1: CREATE A VPC
Go to the AWS Console → VPC → Your VPCs → Create VPC.
Name tag: MyVPC
IPv4 CIDR block: 10.0.0.0/16
leave others default
➡️ Click Create VPC

🌐 STEP 2: CREATE SUBNETS
Go to VPC → Subnets → Create Subnet

🔹 2.1 Public Subnet
Name: PublicSubnet
VPC: Select MyCustomVPC
Availability Zone: Select one (e.g., us-east-1a)
CIDR block: 10.0.1.0/24 (gives 256 IPs)
Click Create subnet

🔹 2.2 Private Subnet
Name: PrivateSubnet
VPC: Same VPC
Availability Zone: Use a different one if possible (e.g., us-east-1b)
CIDR block: 10.0.2.0/24
Click Create subnet

🌍 STEP 3: CREATE AN INTERNET GATEWAY (IGW)
Go to VPC → Internet Gateways → Create Internet Gateway
Name: MyIGW
➡️ After creation, click on it → Actions → Attach to VPC → Select MyVPC

🔁 STEP 4: CONFIGURE ROUTE TABLES
🔹 4.1 Public Route Table
Go to VPC → Route Tables → Create Route Table
Name: PublicRouteTable
VPC: MyVPC
After creation:
Click on PublicRouteTable
Go to Routes → Edit Routes
Destination: 0.0.0.0/0
Target: Internet Gateway → MyInternetGateway
➡️ Subnet Associations tab → Associate it with PublicSubnet

📡 STEP 5: ENABLE AUTO PUBLIC IP FOR PUBLIC SUBNET
Go to VPC → Subnets → Select PublicSubnet
Click Actions →Edit subnet---- Modify auto-assign IP
Enable: ✅ Auto-assign public IPv4 address
Click Save

🔐 STEP 6: CREATE INSTANCES AND MODIFY SECURITY GROUPS
create instance name : public --key pair ---network settings --- VPC --select created MyVPC---Subnet --- PublicSubnet----auto assign --enable ----create security ---name : vpc-pub---------launch
create instance name : private --key pair ---network settings --- VPC --select created MyVPC---Subnet --- PrivateSubnet----auto assign --disable ----create security ---name : vpc-prv---------launch
Go to EC2 → Security Groups → Create security group
🔹 For Public EC2 Instance
Name: PublicEC2SG
VPC: MyVPC
Inbound rules:
SSH – Port 22 – Source: Your IP (x.x.x.x/32)
Outbound rules: Allow all (default)
🔹 For Private EC2 Instance
Name: PrivateEC2SG
Inbound rules:
SSH – Port 22 – Source: PublicEC2SG or 10.0.1.0/24
Outbound rules: Allow all

🌐 STEP 7: CREATE A NAT GATEWAY FOR PRIVATE INTERNET ACCESS
🔹 7.1 Allocate Elastic IP
Go to EC2 → Elastic IPs → Allocate → Allocate
🔹 7.2 Create NAT Gateway
Go to VPC → NAT Gateways → Create NAT Gateway
Subnet: PublicSubnet
Elastic IP: Use the one you just created
Name: MyNATGateway
➡️ Click Create and wait until it's available

🔄 STEP 8: UPDATE PRIVATE ROUTE TABLE
Go to VPC → Route Tables → Create Route Table
Name: PrivateRouteTable
VPC: MyVPC
After creation:
Routes → Edit Routes
Destination: 0.0.0.0/0
Target: NAT Gateway → MyNATGateway
Subnet Associations: Associate it with PrivateSubnet

GO TO INSTACE PUBLIC AND CONNECT THROUGH SSH IN TERMINAL
sudo su -
yum install httpd
systemctl enable httpd
systemctl start httpd
cd /var/www/html
vim index.html
copy ip address and paste in browser your index.html has to be visible  [in inbound rules add http ]
vim sanath.pem 
copy and paste key value 
chmod 400 sanath.pem
now connect the instance private through the instance public 
sudo su -
ping google.com

--------------------------------------
same for ohio region
###########
passwd root
vim /etc/ssh/sshd_config{rootpermitlogin ,yes}
systemctl enable sshd
systemctl start sshd
systemctl restart sshd

in both regions 
##########
vim index.txt
scp index.txt root@another regiop ip :/tmp

same for anther region
###########
create peering in any VPC and add another region and give VPC id  and create 
accept in another region

add perring in routes table for public and private 
in ip you have to give the vpc ipv4 ip 
same for public and private 

same for another region
#######################
