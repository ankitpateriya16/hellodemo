# hellodemo
Install and configure the Jenkins architecture on Azure VM
Use the required plugins to run the build 
  > install maven pluging
      > go to manage jenkins => pluging => available pluging => search maven and install maven integration pluging 
      > go to manage jenkins => tool => add maven in bottom => give uniqe name and save it 
create pipeline
  > new item => give name of the project => select pipeline and save
  > select project => configure => add below pileline and save
  > than build now to run the pipeline


Click on build and check the output. 
Expose the application on the respective ports so that the user can access the deployed application and open tcp port for azure VM
