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
```bash
git flow.help
git fh
```

Initialize a repository
```bash
git flow.init
git fi
```

Feature branch workflow
```bash
git flow.feature.start my-feature     # or git ffs my-feature  
git flow.feature.publish               # or git ffp  
```

Release branch workflow
```bash
git flow.release.start v1.0             # or git frs v1.0  
# finalize release
git flow.release.publish                # or git frp  
# (or combined)  
git flow.release.all v1.0                # or git fra v1.0  
```

Hotfix branch workflow
```bash
git flow.hotfix.start hotfix-123        # or git fhs hotfix-123  
git flow.hotfix.publish                 # or git fhp  
```

Other utilities
```bash
git general.clean     # clean up merged branches  
git general.ignore.force   # enforce .gitignore rules  
```

## Contribution Guidelines

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for instructions on how to contribute.

## License

This project is licensed under the [Apache 2.0 License](LICENSE).
