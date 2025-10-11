. $HOME/gitflow/modules/show.sh
. $HOME/gitflow/modules/verify.sh

verifyInGitRepo;
verifyNoUncommitedChanges;

git rm -r --cached .
git add .
git commit -m ".gitignore rules were forced on the repository"
showSuccess "A commit was created removing the ignored files";