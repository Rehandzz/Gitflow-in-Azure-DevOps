BRANCH=$1;

. $HOME/gitflow/modules/force.sh
. $HOME/gitflow/modules/show.sh
. $HOME/gitflow/modules/try.sh
. $HOME/gitflow/modules/verify.sh

verifyInGitRepo;
verifyBranchNameProvided $BRANCH;
verifyNoUncommitedChanges;

forceBranchUpdateFromOrigin "develop";
tryCreateBranch "release/$BRANCH" "develop";
tryCheckout "release/$BRANCH";
tryPushAndSetUpstream;
showSuccess "The new release branch was created";