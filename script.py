import sys
import os
from github import Github

accessToken = ""
path = "C:\\YourPath"

def create():
  foldername = str(sys.argv[1])
  newpath = path + "\\" + foldername
  if not os.path.exists(newpath):
    os.makedirs(newpath)
    user = Github(accessToken).get_user()
    repo = user.create_repo(foldername)

if __name__ == "__main__":
    create()