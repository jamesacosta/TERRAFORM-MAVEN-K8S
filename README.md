# Dockerization and deployment to kubernetes of a java Maven application using terraform

This repository contains information on how to deploy a java Maven app to kubernetes.

#### REMEMBER IT IS POSSIBLE NOT TO SEE THE APPLICATION BECAUSE IT WORKS WITH A MONGODB ATLAS CLUSTER.
## STEPS

### 1. Clone this repository using 

```bash
https://github.com/jamesacosta/TERRAFORM-MAVEN-K8S.git
```
 
#### 1.1 Now, you can build the Docker image by running the following command at the command line, being in the directory where the Dockerfile is located:

```Powershell
docker build -t name_image .
```

#### 1.2 Once the image has been built correctly, you can run a container from that image using the following command to check that the application is running correctly:

```Powershell
docker run -d -p 8080:8080 name_image
```

#### 1.3 Now, to run a deployment with Terraform:

          1.Make sure you have Terraform installed and configured correctly on your system.
          
          2.Navigate to the directory where your Terraform configuration is located.
          
          3.Run the Terraform commands needed to initialize, schedule, and apply your infrastructure changes. For example:

```Powershell
terraform init
terraform plan
terraform apply
```
