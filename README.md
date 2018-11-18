# AWS STACK DEPLOYMENT
1. Create a user in AWS IAM with(Ec2,VPC,Route53)permissions to create the stack. 
2. Create AccessKey and SecretKey on the created user above. 
3. Update the AccessKey, SecretKey, and Region in the terraform.tfvars 
4. Run below commands in the terminal to provision the stack.(make sure current directory should be asesment-1)
5. Create Workspace to not conflict with any existing environments.                                                           
    #terraform workspace new assesment-1
6. Run select command to use the newly created workspace.                                                                         
    #terraform workspace select assesment-1
7. Run init command to download the provider plugins
    #terraform init
8. Get the list of resources plan which we create using terraform.                                                             
    #terraform plan
9.  provision the aws stack using below command.                                                                               
    #terraform apply 
    (OR) for pre approval run below command.                                       
    #terraform apply -auto-approve     

Once we ran the above command it starts creating the stack. It takes 20-25 minutes time. 

TASKS:
1. Creates Stack
2. Install docker and docker-compose in Instance.
3. It pulls the docker-compose deployment files from github(https://github.com/GogineniManojkumar/sentry-assesment.git)
4. Then it provisions the Docker containers using the docker-compose.yml
Docker Files path in Instance: /opt/sentry-assesment

# Sentry Deployment.
The first time we need to initialize the database migration manually. for that follow below steps 

1. Go to the docker-compose file directory. 
    #cd /opt/sentry-assesment
2. run following command to build the database. 
  #docker-compose -p assesment-manoj run --rm web upgrade
     Above command start new Docker container to Build the database. Use the interactive prompts to create a user account.
     the container will exit and remove after done with database build. (It takes 5-10 minutes time)
     
  Once done with above steps you can access the sentry application with ALB url using logins created while building the database. 
