#!/bin/bash
# Install Jenkins
sudo hostnamectl set-hostname jenkins
sudo yum install wget git nano tree unzip -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y  
# Add required dependencies for the jenkins package
sudo yum install java-11-openjdk -y  
sudo yum install jenkins -y  
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins


