Install and configure the Jenkins architecture on Azure VM.

user the this file setup-jenkins.sh for java and jenkins and docker-setup for docker installation.

Expose the application on the respective ports so that the user can access the deployed application and open tcp port for azure VM

Use the required plugins to run the build:-  
1. go to manage jenkins => pluging => available pluging => search maven and install maven integration pluging.  
2. go to manage jenkins => tool => add maven in bottom => give uniqe name and save it 

create pipeline:- 
1. new item => give name of the project => select pipeline and save. 
2. select project => configure => add data from pileline.txt and save

than build now to run the pipeline:- 
Click on build and check the output console. 

in linux machine container must created 
docker ps -a


