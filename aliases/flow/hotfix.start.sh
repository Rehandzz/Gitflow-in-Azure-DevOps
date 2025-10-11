BRANCH=$1;

. $HOME/gitflow/modules/force.sh
. $HOME/gitflow/modules/show.sh
. $HOME/gitflow/modules/try.sh
. $HOME/gitflow/modules/verify.sh

verifyInGitRepo;
verifyBranchNameProvided $BRANCH;
verifyNoUncommitedChanges;

forceBranchUpdateFromOrigin "master";
tryCreateBranch "hotfix/$BRANCH" "master";
tryCheckout "hotfix/$BRANCH";
tryPushAndSetUpstream;
showSuccess "The new hotfix branch was created";