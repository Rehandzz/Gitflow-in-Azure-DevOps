BRANCH=$1;

. $HOME/gitflow/modules/force.sh
. $HOME/gitflow/modules/show.sh
. $HOME/gitflow/modules/try.sh
. $HOME/gitflow/modules/verify.sh

verifyInGitRepo;
verifyBranchNameProvided $BRANCH;
verifyNoUncommitedChanges;

forceBranchUpdateFromOrigin "develop";
tryCreateBranch "feature/$BRANCH" "develop";
tryCheckout "feature/$BRANCH";
tryPushAndSetUpstream;
showSuccess "The new feature branch was created";