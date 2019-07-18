import sys
import os
from github import Github

accessToken = "7bc2891f0d63b879e324ce97a3b839285041fbf8"
path = "C:\\Users\Zaim Imran\Documents\Projects"

def create():
  foldername = str(sys.argv[1])
  newpath = path + "\\" + foldername
  if not os.path.exists(newpath):
    os.makedirs(newpath)
    user = Github(accessToken).get_user()
    repo = user.create_repo(foldername)

if __name__ == "__main__":
    create()