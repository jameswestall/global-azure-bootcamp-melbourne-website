# Introduction

Demo repo for deploying an example app to both AKS and Container Apps

## Steps for Demo

1. Show AKS Cluster deployment using akscli.txt
2. Deploy Container Apps using AZ Cli - containerapps-cli.txt
3. Deploy Container Apps via VS Code - containerapps-vscode.txt
4. Deploy Container Apps via Bicep - containerapps.bicep
   - `az deployment group create --resource-group capps-demo-rg --template-file ./containerapps.bicep`
5. Deploy Container Apps via Terraform - containerapps.tf
   - `terraform init`
   - `terraform plan`
   - `terraform apply -auto-approve`
6. Deploy app to AKS using kubectl - aksdeploy.txt
7. Deploy app via Bicep - aksbicepdeploy.txt
8. Pipeline for deploying Container Apps
9. Pipeline for deploying app to AKS
