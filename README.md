# Sflights model deployment
This project is an extension for CAP flights data model project bringing additional scripts

- clone the project and run in a devcontainer
- altenatively you can open it in codespaces
- all needed libraries  such as cf and cds CLIs will be preinstalled
- run `npm run init` to install dependencies
- login to cloud foundry using `cf login` or `npm run login`
- deploy the project using `npm run deploy` command

As a result you should have `hana-cloud-sflight-db` HDI container created and deployed containing mock data

Now you can connect to the database and check if tables are created. For that you can do following things:
- Get a service key ( created with a first deploy ) using `cf service-key hana-cloud-sflight-db hana-cloud-sflight-db-key`
- Copy JSON from a previous command ( only credentials, aka `jq .credentials` and provide it as an input for Hana Database Explorer extension in VS Code/Codespaces

Again - this project is not must. It's just the example how data model can be extended and redeployed from the scratch. Also this project shows that it's possible to do CAP development/deployment on BTP without BAS and using very nice features such as devcontainer for example
  
