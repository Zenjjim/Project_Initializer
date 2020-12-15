import sys
import os
from github import Github


def create_github_repo():
  foldername = str(sys.argv[1])
  accessToken = str(sys.argv[2])
  try:
    if not os.path.exists(foldername):
      os.makedirs(foldername)
      user = Github(accessToken).get_user()
      user.create_repo(foldername)
  except:
    pass


if __name__ == "__main__":
    create_github_repo()
