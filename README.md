# Gitflow for Azure DevOps

[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)  
[![Build Status](https://img.shields.io/badge/build-not%20configured-lightgrey)](link-to-ci)  
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](releases)  

## Description

This tool helps you implement the **GitFlow** branching strategy in Azure DevOps, by wrapping Git commands with scripts that integrate with Azure DevOps / VSTS / TFS for branch policies, pull requests, and automation.

It enables developers to use familiar `git flow`‑style commands while enforcing workflows via pull requests rather than direct merges.

## Key Features

- Initialize GitFlow branches (`develop`, `release`, `hotfix`) in Azure DevOps  
- Commands to create, publish, finish feature, release, hotfix branches  
- Enforces pull request usage (rather than direct pushes)  
- Supports local branch cleanup and enforcement of `.gitignore` rules  
- Cross‑platform support (Windows, optionally scripts for macOS / Linux)  

## Prerequisites

- Git installed  
- Azure DevOps CLI / VSTS CLI configured  
- Personal Access Token (PAT) with rights to create PRs & branches  
- (Optionally) Azure DevOps / TFS instance URL and permissions  

## Installation

```bash
git clone https://github.com/YourOrg/Gitflow-in-Azure-DevOps.git
cd Gitflow-in-Azure-DevOps
./install.sh    # or install.bat on Windows
