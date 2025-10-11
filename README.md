# Gitflow for Azure DevOps

[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)   [![Build Status](https://img.shields.io/badge/build-not%20configured-lightgrey)](link-to-ci)   [![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](releases)  

## Description

This tool helps you implement the **GitFlow** branching strategy in Azure DevOps, by wrapping Git commands with scripts that integrate with Azure DevOps / VSTS / TFS for branch policies, pull requests, and automation.

It enables developers to use familiar `git flow`‑style commands while enforcing workflows via pull requests rather than direct merges.

## Branching Model

This project uses the [**GitFlow**](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) branching strategy:

- `main`: production-ready code
- `develop`: integration branch for new features
- `feature/*`: feature branches created from `develop`
- `release/*`: release branches created from `develop`
- `hotfix/*`: urgent fixes created from `main`

![Gitflow Diagram](https://nvie.com/img/git-model@2x.png)

## Key Features

- Initialize GitFlow branches (`develop`, `release`, `hotfix`) in Azure DevOps  
- Commands to create, publish, finish feature, release, hotfix branches  
- Enforces pull request usage (rather than direct pushes)  
- Supports local branch cleanup and enforcement of `.gitignore` rules  
- Cross‑platform support (Windows, optionally scripts for macOS / Linux)  

## Prerequisites

- [Git](https://git-scm.com/downloads) installed  
- [Azure DevOps CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) / [VSTS CLI](https://github.com/Azure/azure-devops-cli-extension/releases/tag/0.1.4) configured  
- Personal Access Token (PAT) with rights to create PRs & branches  
- (Optionally) Azure DevOps / TFS instance URL and permissions  

## Installation

```bash
git clone https://github.com/YourOrg/Gitflow-in-Azure-DevOps.git
cd Gitflow-in-Azure-DevOps
./install.bat
```

## Usage
Getting Help
You can run any of the below commands to get a cheatsheet for the tool:
```bash
git flow.help
git fh
```

Initialize a repository
To configure a repository to use this tool, you need to execute any of the below commands, this should be done only once per repository:
```bash
git flow.init
git fi
```

Feature branch workflow
You can create a new feature branch by running any of the below commands:
```bash
git flow.feature.start $feature_branch_name
git ffs $feature_branch_name
```
When you're done with your changes, you can publish the branch to develop by running any of the below commands on a checked out feature branch, this will create a pull request on the server:
```bash
git flow.feature.publish "$PR_title | $PR_description | $reviewer_id"
git ffp "$PR_title | $PR_description | $reviewer_id"
```

Release branch workflow
You can create a new release branch by running any of the below commands:
```bash
git flow.release.start $release_branch_name
git frs $release_branch_name 
```
When you're done with your adjustments, you can publish the branch to develop and master by running any of the below commands on a checked out release branch, this will create two pull request on the server:
```bash
git flow.release.publish "$PR_title | $PR_description | $reviewer_id"
git frp "$PR_title | $PR_description | $reviewer_id"
```
In cases when you're certain that no adjustments are needed before the release, you can perform the two above actions at the same time by running any of the below commands:
```bash
git flow.release.all $release_branch_name
git fra $release_branch_name
```

Hotfix branch workflow
You can create a new hotfix branch by running any of the below commands:
```bash
git flow.hotfix.start $hotfix_branch_name
git fhs $hotfix_branch_name
```
When you're done with your changes, you can publish the branch to develop and master by running any of the below commands on a checked out hotfix branch, this will create two pull request on the server:
```bash
git flow.hotfix.publish "$PR_title | $PR_description | $reviewer_id"
git fhp "$PR_title | $PR_description | $reviewer_id"
```

Other utilities
When you want to do a local cleanup and remove all the branches already merged to develop and master, you can run the below command:
```bash
git general.clean
git gcl
```
When you want to force the application of the rules in the .gitignore file on an existing repository, you can run the below command:
```bash
git general.ignore.force
git gif
```

## Contribution Guidelines

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for instructions on how to contribute.

## License

This project is licensed under the [Apache 2.0 License](LICENSE).
