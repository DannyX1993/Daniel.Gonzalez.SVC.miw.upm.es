#!/bin/bash

export workspace=~/Documents/workspace/Daniel.Gonzalez.SVC.miw.upm.es
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export M2_HOME=~/Documents/workspace/apache-maven-3.3.9
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
echo "-----------------------------------------"
echo "(C) MIW"
echo "-----------------------------------------"
echo Workspace --- $workspace
echo JAVA_HOME --- $JAVA_HOME
echo M2_HOME   --- $M2_HOME
cd $workspace
echo "============ mvn clean test (develop por defecto) ======================================================="
mvn clean test
echo "============ mvn package -Denvironment.type=preproduction (preproduction) ======================================================="
mvn package -Denvironment.type=preproduction