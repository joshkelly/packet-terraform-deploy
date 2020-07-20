# packet-terraform-deploy

Create a variables.tf using the variables_template.tf
- Replace `<Packet API Token>` and `<Project ID>` with the updated values.

Perform the following commands:
```
terraform plan -var "auth_token=$TOKEN"
terraform apply
```
