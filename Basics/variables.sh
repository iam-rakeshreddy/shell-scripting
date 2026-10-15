#!/bin/bash

name="Virat Kohli"
age=37

# Both of this works --$variable_name / ${variable_name}

echo "Hello! My name is ${name} and I'm ${age} old"      

#using commands in variables

HOSTNAME=$(hostname)
ipaddr=$(ifconfig)
current_directory=$(pwd)

echo "Name of the host is $HOSTNAME"
echo "IP of device is $ipaddr"
echo "current working directory is $current_directory"