alias git="hub"
alias gpom="git push origin maggie"
alias gptm="git push tom master"
alias gcm="git checkout master"
alias gpl="git log --pretty=oneline --graph --all"
alias gpr="git pull-request -o"
alias gs="git status"
alias gb="git branch"

#
# Assumes you've done the PR merge on github while sitting in a branch, then
# switches back to master, pulls the latest and deletes the old branch
#
function closeBranch() {
  currentBranch=`git rev-parse --abbrev-ref HEAD`
  if [[ "$currentBranch" == 'master' ]]; then
    echo "Don't try to close the master branch, dummy."
    exit 1
  fi

  git checkout master

  git remote show tom > /dev/null 2>&1

  if [ 0 -eq $? ]; then
      git pull origin master
      git push tom master
  else
    git pull origin master
  fi

  git branch -D $currentBranch
}

