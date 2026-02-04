# WSS GitHub Copilot Demo

This repository demonstrates how Hyper Velocity Engineering (HVE) principles can be applied using agents to accelerate business contexts. By leveraging the same tools as engineering teams, business stakeholders can exercise more control over agent behavior and personas, as well as model flexibility.

This walks through a research -> plan -> implement workflow that shows how business context can inform and flow into engineering outcomes.

## Table of Contents

* [Some Prerequisites](#some-prerequisites)
* [A Story in Three Parts](#a-story-in-three-parts)
  * [1) You want market insights and research into the latest industry events](#1-you-want-market-insights-and-research-into-the-latest-industry-events)
  * [2) You want a pitch that is customized to a specific customer/partner](#2-you-want-a-pitch-that-is-customized-to-a-specific-customerpartner)
  * [3) Choose Your Own Adventure!](#3-choose-your-own-adventure) 

# Some Prerequisites
To complete this workflow, a few things are required:

* Install [VSCode](https://code.visualstudio.com/download)
  * Install [GitHub Copilot Extension](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
  * Install [GitHub Copilot Chat Extension](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat)
  * Install [HVE Core Extension](https://github.com/microsoft/hve-core)
* Git installed and configured locally. Note: When attempting source control operations, VScode will prompt you to install git if it is not available. 
* Sign-up for an Enterprise Managed User (EMU) GitHub Account (if you completed the prereq steps sent in email before the event, this is already completed)
* Clone this repository locally
  1. Launch VS Code by typing *VS Code* into the Start menu and hitting Enter

    ![Screenshot of VS code at launch](docs/images/1%20-%20VS%20Code%20at%20launch.png)
 
  2. Choose *View->Source Control*

    ![Screenshot of view menu](docs/images/2%20-%20Source%20Control.png)

  3. Click *Clone Repo* in the Source Control panel

    ![Screenshot of source control pane](docs/images/3%20-%20Clone%20Repo.png)

  4. In the selection box, choose *Clone from GitHub*

    ![Screenshot of clone from github option](docs/images/4%20-%20Choose%20from%20GitHub.png)

  5. Choose *Allow* in the VS Code Dialog sign in confirmation dialog.  Note: This must open in your Work profile Edge browser to allow for single sign on with your corporate account.
  
    ![Screenshot of login confirmation](docs/images/5%20-%20Allow%20Login.png)
  
  6. A browser window will pop up to allow sign-in.  Choose *Continue* with your GitHub EMU account that you provisioned in the prereq steps sent before the event
  
    ![Screenshot of browser SSO](docs/images/6%20-%20SSO%20Login%20in%20Browser.png)
  
  7. Click *Authorize* in the browser window to allow GitHub Copilot Access
  
    ![Screenshot of GitHub Copilot Access authorization](docs/images/7%20-%20Allow%20Copilot%20Access.png)
  
  8. Click *Authorize Visual-Studio-Code* in the final authorization page
  
    ![Screenshot of authorization web dialog](docs/images/8%20-%20Authorize%20VS%20Code.png)
  
  9. After authorization is complete, the website will prompt you to return to VS Code.  Click the *Open* button in the dialog.
  
    ![Screenshot of prompt to reopen VS Code](docs/images/9%20-%20Open%20VS%20Code.png)
  
  10. In VS Code, type the repo name *microsoft/wss-gh-copilot-demo* and select it from the results list
  
    ![Screenshot of clone menu](docs/images/10%20-%20Type%20&%20select%20repo.png)
  
  11. In the file dialog box, select a destination folder.  You may accept the default location, which will be your user profile folder aka %userprofile% aka c:\<username>\.
  
    ![Screenshot of file dialog](docs/images/11%20-%20Select%20Destination%20Folder.png)
  
  12. You will see a progress bar while Git clones the repo locally
  
    ![Screenshot of progress bar](docs/images/12%20-%20Progress%20Bar.png)
  
  13. You will see a confirmation dialog when complete.  You may close this dialog.
  
    ![Screenshot of confirmation dialog](docs/images/13%20-%20Confirmation.png)
  
  14. Choose *File->Open Folder...* in VS Code
  
    ![Screenshot of File->Open Folder](docs/images/14%20-%20File%20-%20Open%20Folder.png)
  
  15. Select the folder where you cloned the repo previously
  
    ![Screenshot of file picker](docs/images/15%20-%20Confirm%20Folder.png)
  
  16. Choose *Trust* to allow the folder contents with the HVE extensions (Note: the dialog shown is slightly different from this screenshot)
  
    ![Screenshot of trust folder dialog](docs/images/16%20-%20Trust%20Folder.png)

# A Story in Three Parts

This example leverages a few of the agents that are available in the [HVE Core repository](https://github.com/microsoft/hve-core), including the `task-researcher`, `task-planner` and `task-implementor` agents. 

## 1) You want market insights and research into the latest industry events

### Research
In your VSCode workspace for the repo, if it's not already open, open a window to the Copilot Chat window (View --> Chat). 

![Screenshot of View->Chat](docs/images/17%20-%20View%20Chat.png)

In the main chat interface, select the `task-researcher` agent and `Claude Opus 4.5` model.

![Screenshot of Agent selector](docs/images/18%20-%20Agent%20Task-Researcher.png)

In the prompt dialog box, copy and paste the following:

> Compare and contrast the biggest announcements that came out of the 2025 AWS re: invent and Microsoft Ignite events. Limit your research to the top search link for both events, using Bing Search. 

...and hit the send button. 

![Screenshot of prompt and send button](docs/images/19%20-%20Prompt%20and%20Send.png)

Copilot should start researching this request. As it fetches external Urls, it will ask for permission to do so -- hit 'Allow' to continue. This will take a few minutes.

This will create a timestamp-based markdown file in `.copilot-tracking/research`

![Screenshot of researcher result](docs/images/20%20-%20Task%20Researcher%20Result.png)

### Plan
Reference the previous research output as context to the `task-planner` agent and use this prompt to create a plan:

> Based on the research on AWS re:invent and Microsoft Ignite announcements, create a high level pitch that highlights the strengths of three Microsoft products, that can be used internally by our Microsoft sales and account teams.

![Screenshot of task planner prompt](docs/images/22%20-%20Send%20Task%20Planner%20Agent%20Input.png)

This will create markdown files in `.copilot-tracking/plan` and `.copilot-tracking/details`

![Screenshot of task planner result](docs/images/23%20-%20Task%20Planner%20Results.png)

### Implement
Using the output from the `task-planner` agent, use the `task-implementor` agent to create the final pitch document.

First switch to the `task-implementor` agent:

![Screenshot of switching to task-implementor](docs/images/24%20-%20Switch%20to%20Implementor%20Agent.png)

Then run the prompt to create a final document:

> Create the final pitch document

![Screenshot of implementor prompt](docs/images/27%20-%20Implementor%20prompt.png)

The task will complete and summarize what it did.

![Screenshot of task complete](docs/images/28%20-%20Implementor%20Result.png)

The final document output will be in `doc/sales` folder. 

![Screenshot of final doc](docs/images/29%20-%20Docs%20Result.png)

If you open the final document, right-click the tab, and choose *Open Preview*, you can see markdown formatting applied

![Screenshot of open preview menu item](docs/images/30%20-%20See%20Preview.png)

That looks better!

![Screenshot of final result](docs/images/31%20-%20Preview%20Result.png)

## 2) You want a pitch that is customized to a specific customer/partner
Re-run the `task-implementor` agent to create a targeted version of the high-level pitch, using this prompt:

> Create a different version of the pitch, specific to customer `<insert customer name>`. Reference this press release Url to tailor the pitch to be relevant and highly relatable to that customer: `<insert press release Url>`

Optional: run the `task-reviewer` agent to review the pitch and provide suggestions and improvements.

## 3) Choose Your Own Adventure!
* Try mixing and matching different prompts and models to get different results. 
* Try increasing the external sources used in the research step. 
