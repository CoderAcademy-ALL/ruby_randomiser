#!/bin/bash
echo "Hello, welcome to template maker"
echo "Please name your project"
read PROJECT
echo "Your project will be called ${PROJECT}"
mkdir $PROJECT 
cd $PROJECT
mkdir src
mkdir ppt
mkdir docs
touch README.md