BRANCH=$1;

. $HOME/gitflow/modules/verify.sh

verifyInGitRepo;
verifyBranchNameProvided $BRANCH;

git flow.release.start $BRANCH;
git flow.release.publish;