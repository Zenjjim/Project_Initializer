@echo off
cd /d C:\Users\Zaim Imran\Documents\Projects
IF [%1]==[] GOTO :Done
IF exist %1 GOTO :Exists

python Project_Initializer\script.py %1
cd %1
type nul > README.md
@echo Project %1's read me:> README.md

git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/Zenjjim/%1.git
git push -u origin master
cls

@echo Project %1 is created
start chrome github.com/zenjjim/%1
:Exists
@echo Project exists already. Try again
:Done
