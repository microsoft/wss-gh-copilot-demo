# WSS GitHub Copilot Demo
This reposistory demonstrates how Hyper Velocity Engineering (HVE) principles can be applied using agents to accelerate business contexts. By leveraging the same tools as engineering teams, business stakeholers can exercise more control over agent behavior and personas, as well as model flexibility.

This walks through a research -> plan -> implement workflow that shows how business context can inform and flow into engineering outcomes. 

# Some Prerequisites
To complete this workflow, a few things are required:

* Install [VSCode](https://code.visualstudio.com/download)
  * Install GitHub Copilot Extension
  * Install GitHub Copilot Chat Extension
  * Install HVE Core Extention
* Git installed and configured locally. Note: When attempting source control operations, VScode will prompt you to install git is not available. 
* Sign-up for an Enterprise Managed User (EMU) GitHub Account
  * Access to a GitHub Copilot subscription
  * Sign into your GitHub account in VSCode
* Clone this repository locally

# A Story in Three Parts

This examples leverages a few of the agents that are available in the [HVE Core repository](https://github.com/microsoft/hve-core), including the `task-researcher`, `task-planner` and `task-implementer` agents. 

## 1) You want market insights and research into the latest industry events

### Research
In your VSCode workspace for the repo, if it's not already open, open a window to the Copilot Chat window (View-->Chat). In the main chat interface, select the `task-researcher` agent and `Claude Opus 4.5`.

In the prompt dialog box, copy and paste the following:

> Compare and contrast the biggest announcements that came out of the 2025 Amazon's AWS re: invent and Microsoft Ignite events. Limit your research to the top 1 search link for both events, using bing.com. 

...and hit the send button. Copilot should start researching this request. As it fetches external Urls, it will ask for permission to do so -- hit 'Allow' to continue. This will take a few minutes.

### Plan

>Based on the research on AWS re:invent and Microsoft Ingnite announcements, create a high level pitch that highlights the strenghts of three Microsoft products, that can be used by our sales and account teams.

### Implement
Using the output from the `task-planner` agent, use the `task-implementor` agent to create the final pitch document.

## 2) You want a pitch that is customized to a specific customer/partner


## 3) Choose Your Own Adventure!
* Try mixing and matching different prompts and models to get different results. 
* Try increasing the external sources used in the research step. 
