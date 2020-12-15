#!/bin/sh

GITHUB_USERNAME="username"
GITHUB_API_TOKEN="XXXXXXXXX"
ABSOLUTE_PATH_TO_PROJECTS_FOLDER="$HOME/ABC/"
ABSOLUTE_PATH_TO_INITIALIZER="$HOME/XYZ/"

RED=`tput setaf 1`
GREEN=`tput setaf 2`

cd $ABSOLUTE_PATH_TO_PROJECTS_FOLDER

if [ -z $1 ];
then
    echo "${RED}No project name"

elif [ -d $1 ]
then 
    echo "${RED}Project already exists"
else
    echo "Creating repo"
    python3 $ABSOLUTE_PATH_TO_INITIALIZER/Project_Initializer/project_initializer.py $1 $GITHUB_API_TOKEN

    cd $1
    
    echo "README:" > README.md
    echo "Ignore files:" > .gitignore

    echo "Initialing project"
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m "Create project" &> /dev/null
    git remote add origin https://github.com/$GITHUB_USERNAME/$1.git &> /dev/null
    git push -u origin master &> /dev/null

    echo "${GREEN}Project $1 is created. Happy coding!"
    xdg-open https://github.com/$GITHUB_USERNAME/$1
    code .
fi