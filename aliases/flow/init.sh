. $HOME/gitflow/modules/force.sh
. $HOME/gitflow/modules/show.sh
. $HOME/gitflow/modules/try.sh
. $HOME/gitflow/modules/verify.sh

verifyInGitRepo;
verifyBranchNameIs "master";
verifyNoUncommitedChanges;
verifyUpToDateBranch;

forceBranchUpdateFromOrigin "master";
tryCreateBranch "develop" "master";
tryCheckout "develop";
tryPushAndSetUpstream;
showSuccess "The repository was initialized";