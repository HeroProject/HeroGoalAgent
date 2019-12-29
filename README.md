# HeroGoalAgent

Requirements
- NAO v6
- Connection between robot and computer (running the cbsr-server)
- Internet connection for cbsr-server
- Google Dialogflow account

Instructions
1. Install the Cloud-Based Social Robotics Architecture (cbsr): https://socialrobotics.atlassian.net/wiki/spaces/CBSR/pages/983051/How+2+Install
2. Install the agent programming language GOAL: https://goalapl.atlassian.net/wiki/spaces/GOAL/pages/33041/Download+and+Install+GOAL
3. Import HeroDialogflowAgent.zip to your Google Dialogflow account: https://cloud.google.com/dialogflow/docs/agents-settings#export
4. Install Choregraphe behaviors and sound files on the Nao robot. See instructions in the respectrive resources subfolders.
5. Run cbsr-server and connect Nao robot to server (see instruction at step 1)
6. Download private key file of Dialogflow agent (json file): https://cloud.google.com/dialogflow/docs/quick/setup#sa-create and add it to the root of the GOAL agent folder. Make sure the _flowkey_ property in the Interactive_storytelling.mas2g file corresponds with the file name/path of the Dialogflow agent private key file and the _flowagent_ property with the Project ID of your dialogflow agent.
7. Copy the story you want to play (from the stories folder) to the script.pl file.
8. Run the GOAL agent for the storytelling to begin.

