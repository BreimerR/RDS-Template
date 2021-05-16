# Usage
Using this configurations require abit of knowledge on aws but it will
at least get your RDS database running and accessible via the internet
> NB
>> Please remember to remote internet  
>> access once you are tested and satisfied with  
>> your working database instance


## Steps
- Configure environment variables 
  > Note
  >> For intellij users .idea/workspace contains  
  >> a template of variables that you can edit 
  >> Do remember to add variable "var_name"{}  
  >> into variables directory for all variables
  >> declared as env variables
  >> also do same for auto.tfvars
  >> *.auto.tfvars is really important as it is

- Create Internet gateway
- Create a VPC
- Create subnets
- Create route tables
- Associate route tables to parts
- Associate internet gateway with route table
- Create RDS instance


#### TIP
Once configurations are stable you just need to plug in other parts
of your infrastructure to this VPC inorder for the database to be internaly 
access within your application. 