# Dockerize OAI Harvester Manager 
Build image using version 0.5 of the OAI harvester manager
New images will be built and available on docker hub

### Building
`docker-compose build`

### Configure the harvester
Configure the harvester for your own needs. The only configuration file is `config.xml`
It is linked in the container. 

After your configuration file is fixed, please restart the harvester to let the harvester read and run your config file. 

Please find the documentation of the configuration in https://github.com/clarin-eric/oai-harvest-manager#configuration


