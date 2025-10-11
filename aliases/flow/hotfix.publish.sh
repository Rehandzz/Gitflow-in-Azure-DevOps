. $HOME/gitflow/modules/get.sh
. $HOME/gitflow/modules/show.sh
. $HOME/gitflow/modules/try.sh
. $HOME/gitflow/modules/verify.sh

verifyInGitRepo;
verifyBranchTypeIs "hotfix";
verifyNoUncommitedChanges;
verifyUpToDateBranch;

if [[ -z "$1" ]]; then
    showError "Please provide a Pull Request title as argument."
    exit 1
fi

FULL_ARG="$1"
PR_TITLE=$(echo "$FULL_ARG" | cut -d '|' -f1 | xargs)
PR_DESCRIPTION=$(echo "$FULL_ARG" | cut -d '|' -f2 | xargs)
PR_REVIEWERS=$(echo "$FULL_ARG" | cut -d '|' -f3 | xargs)

tryCreatePullRequest "$PR_TITLE" "$PR_DESCRIPTION" "$PR_REVIEWERS"
showSuccess "Hotfix Pull Request(s) created."