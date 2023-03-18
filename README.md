# Infra CI/CD example for IDCF Cloud
```
$ export TF_VAR_api_key=<your-api-key>
$ export TF_VAR_secret_key=<your-secret-key>
```

```
$ vi dev.tfvars
cidr_list  = ["<your-ip-1>/32", "<your-ip-2>/32"]
```

```
$ cd terraform/environments/<name>/
$ terraform plan -var-file dev.tfvars
$ terraform apply -var-file dev.tfvars
$ terraform destroy
```
