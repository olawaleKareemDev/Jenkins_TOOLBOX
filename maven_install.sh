#Remove

#!/bin/sh

version=3.9.1

#Remove old maven and install build tools
apt-get purge maven -y 
apt-get install wget -y
apt-get install tar -y


# install java jdk
apt-get install software-properties-common
apt-get update
add-apt-repository ppa:linuxuprising/java
echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu focal main" | tee /etc/apt/sources.list.d/linuxuprising-java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 73C3DB2A
apt-get update
apt install oracle-java17-installer --install-recommends



apt install oracle-java17-installer


# url_java="https://javadl.oracle.com/webapps/download/AutoDL?BundleId=247939_0ae14417abb444ebb02b9815e2103550"
# wget $url_java

url="https://dlcdn.apache.org/maven/maven-3/${version}/source/apache-maven-${version}-src.tar.gz"
echo $url
wget $url

tarFile="apache-maven-${version}-src.tar.gz"
echo $tarFile
tar -xvf $tarFile

folder="apache-maven-${version}"
echo $folder
cp -r $folder /opt

touch /etc/profile.d/env.sh
echo export MAVEN_HOME=/opt/apache-maven-${version} >> /etc/profile.d/env.sh
echo export PATH=$PATH:$MAVEN_HOME/bin >> /etc/profile.d/env.sh

cat /etc/profile.d/env.sh

export PATH=/opt/apache-maven-${version}/bin:$PATH
