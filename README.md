# AWS STACK DEPLOYMENT
1. Create a user in AWS IAM with(Ec2,VPC,Route53)permissions to create the stack. 
2. Create AccessKey and SecretKey on the created user above.                                                                         Note: Create ec2 Key pair and update in variabes.tf file
3. Update the AccessKey, SecretKey, and Region in the terraform.tfvars 
4. Run below commands in the terminal to provision the stack.(make sure current directory should be asesment-1)
5. Create Workspace to not conflict with any existing environments.                                                           
    #terraform workspace new assessment-1
6. Run select command to use the newly created workspace.                                                                         
    #terraform workspace select assessment-1
7. Run init command to download the provider plugins
    #terraform init
8. Get the list of resources plan which we create using terraform.                                                             
    #terraform plan
9.  provision the aws stack using below command.                                                                               
    #terraform apply 
    (OR) for pre approval run below command.                                       
    #terraform apply -auto-approve     

Once we ran the above command it starts creating the stack. It takes 30 minutes time. 

TASKS:
1. Creates Stack
2. Install docker and docker-compose in Instance.
3. It pulls the docker-compose deployment files from github(https://github.com/GogineniManojkumar/sentry-assessment1.git)
4. Then it provisions the Docker containers using the docker-compose.yml
Docker Files path in Instance: /opt/sentry-assessment1

  Once done with above steps you can access the sentry application with ALB url using logins created while building the database. 
  Default Logins:
  Username: admin@gmail.com
  Password: admin@1234
  
