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
    echo -ne "Creating project:             0%"\\r
    python3 $ABSOLUTE_PATH_TO_INITIALIZER/Project_Initializer/project_initializer.py $1 $GITHUB_API_TOKEN
    echo -ne "Creating project: ##          20%"\\r
    cd $1
    echo -ne "Creating project: ###         30%"\\r
    
    echo -ne "README:" > README.md
    echo "Ignore files:" > .gitignore
    echo -ne "Creating project: ####        50%"\\r

    git init &> /dev/null
    echo -ne "Creating project: ######      60%"\\r
    git add . &> /dev/null
    echo -ne "Creating project: #######     70%"\\r
    git commit -m "Create project" &> /dev/null
    echo -ne "Creating project: ########    80%"\\r
    git remote add origin https://github.com/$GITHUB_USERNAME/$1.git &> /dev/null
    echo -ne "Creating project: #########  90%"\\r
    git push -u origin master &> /dev/null
    echo "Creating project: ########## 100%"

    echo "${GREEN}Project $1 is created. Happy coding!"
    xdg-open https://github.com/$GITHUB_USERNAME/$1
    code .
fi