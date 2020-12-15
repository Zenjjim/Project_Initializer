# Project ProjectInitializer
## Install:
Clone project:
```
git clone https://github.com/Zenjjim/Project_Initializer.git
cd Project_Initializer
```
Fill constants in project_initializer.sh:
```
GITHUB_USERNAME="username"
GITHUB_API_TOKEN="XXXXXXXXX"
ABSOLUTE_PATH_TO_PROJECTS_FOLDER="$HOME/ABC/"
ABSOLUTE_PATH_TO_INITIALIZER="$HOME/XYZ/"
```
Install python dependency
```
pip3 install PyGithub
```
Set `alias custom_command='source $HOME/XYZ/Project_Initializer/project_initializer.sh'` in .bashrc


## Usage:
In the terminal, use the command
```
custom_command <project_name>
```
to create a new project

---

## Steps:
#### CMD:
- [x] What kind of file to use?
- [x] Find directory with commands
- [x] Create folder
- [x] Connect with git
- [x] Open VScode
#### Git:
- [x] How to connect to Github
- [x] Login with token
- [x] Initialize project and link to folder
- [x] Open github repository
