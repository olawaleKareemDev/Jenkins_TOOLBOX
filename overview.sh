https://github.com/jenkinsci/docker


# docker

    docker run -p 8080:8080 -p 50000:50000 --restart=on-failure jenkins/jenkins:lts-jdk11
    2077bfacb1b54685be847275244936dc

    Links to useful information about pipeline syntax:

    https://www.jenkins.io/doc/book/pipeline/syntax/

    https://www.jenkins.io/doc/pipeline/steps/workflow-basic-steps/


# install maven via apt

    docker exec -it 27e627789da0 sh
    docker exec -it -u root 27e627789da0 bin/bash
    apt-get update
    apt-get install maven

# install maven manually to give ease of version

    apt-get install wget
    apt-get install vim
    wget https://dlcdn.apache.org/maven/maven-3/3.8.8/source/apache-maven-3.8.8-src.tar.gz -P /tmp
    tar xf /tmp/apache-maven-*.tar.gz -C /opt
    ln -s /opt/apache-maven-3.8.4 /opt/maven
    vi /etc/profile.d/maven.sh
   29  nano /etc/profile.d/maven.sh
   30  apt-get install vim
   31  vi /etc/profile.d/maven.sh
   32  chmod +x  /etc/profile.d/maven.sh
   33  source /etc/profile.d/maven.sh




## docker
    docker logs --follow  bce34bb3c617
    d8d827a3d401425c924c72d9b4f10ae5
    /var/jenkins_home/secrets/initialAdminPassword

    apt-get install wget -y
    apt-get install tar -y
    apt-get install vim -y

    wget https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.tar.gz
    tar -xvf apache-maven-3.9.1-bin.tar.gz
    mv apache-maven-3.9.1 /opt/

    vi /root/.profile

        M2_HOME='/opt/apache-maven-3.9.1'
        PATH="$M2_HOME/bin:$PATH"
        export PATH

    source  /root/.profile


# Jenins new tutorial

    https://github.com/ricardoandre97/jenkins-resources