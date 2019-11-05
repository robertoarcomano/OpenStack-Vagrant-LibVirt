#!/bin/bash
env TZ=Europe/Dublin
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install OpenStack on Centos
systemctl disable firewalld
systemctl stop firewalld
systemctl disable NetworkManager
systemctl stop NetworkManager

systemctl enable network
systemctl start network

# yum install -y centos-release-openstack-newton
yum install -y centos-release-openstack-train
yum update -y

yum install -y openstack-packstack
packstack --allinone

# Authentication data
cat /root/keystonerc_admin
