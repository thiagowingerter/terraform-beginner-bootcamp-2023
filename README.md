# Terraform Beginner Bootcamp 2023

##Links

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

https://www.copahost.com/blog/bash-commenting-3-ways-to-use-comments/#:~:text=In%20Bash%2C%20the%20%E2%80%9C%23%E2%80%9D,%22%20%23%20This%20is%20another%20comment.

https://pt.wikipedia.org/wiki/Shebang

https://www.gitpod.io/docs/configure/workspaces/tasks

###AWS correct configured user

```json
{
    "UserId": "AIDAZYKJQ1K6UHDWY7QAX",
    "Account": "12345678912",
    "Arn": "arn:aws:iam::12345678912:user/terraform-beginner-bootcamp"
}
```
*texto com informacoes ficticias para exemplo apenas*.

### Principal link para Terraform

(Terraform Registry)[https://registry.terraform.io/]

# Terraform Basics

### Terraform Registry

Terraform sources their providers and modules from the Terraform registry wich located at registry.

- **Providers** is an interface to API that allow you to create resourses in Terraform.
- **Modules** are a way to refactor or make large amount of terraform code modular, portable and shareable.

### Terraform Console

We can see a list of all the terraform commands by simply typing `terraform`

#### Terraform Init

At the start of the new Terraform project we will run `terraform init` to download the binaries for the terraform providers that we'll use in this project.

##### Terraform Plan

This will generate out a changeset, about the state of our infrastructure and what will be changed.

We can output this cahngeset ie. "plan" to be passed to an apply, but often you can just ignore outputting.

#### Terraform Apply

This will run the plan and pass the changeset to be executed by terraform. Apply shoud prompt yes or no.

If we want to automatically approve an apply we can provide the auto flag ie. `terraform apply --auto-approve`.

#### Terraform Destroy

`terraform destroy` - This will destroy resources. You can also use the flag `--auto-approve` to skip the prompt

## Terraform Lock Files

`.terraform.lock.hcl` contains the locked versioning for the providers or modules that should be used with this project.

The terraform Lock File **should be committed** to your version control System (VCS) eg. GitHub

#### Terraform State Files

`.terraform.tfstate` contain information about the current state of your infrastructure.

This file **should not be committed** to your VCS.

This file can contain sensitive data.

If you lose this file, you lose knowning the state of your infrastructure.

`.terraform.tfstate.backup` is the previous state file state.

### Terraform Directory

`.terraform` directory contains binaries of terraform providers.