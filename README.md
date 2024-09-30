# Couchbase Capella with Terraform Example
![Couchbase Capella](https://img.shields.io/badge/Couchbase_Capella-Enabled-red)
[![License: MIT](https://cdn.prod.website-files.com/5e0f1144930a8bc8aace526c/65dd9eb5aaca434fac4f1c34_License-MIT-blue.svg)](/LICENSE)

This repository contains a Terraform example to create a new bucket on a Couchbase Capella cluster. It uses the [Couchbase Capella provider for Terraform](https://registry.terraform.io/providers/couchbasecloud/couchbase-capella/latest).

![Terraform and Couchbase diagram](README_IMAGES/capella-terraform-diagram-dark.png#gh-dark-mode-only)
![Terraform and Couchbase diagram](README_IMAGES/capella-terraform-diagram.png#gh-light-mode-only)

Couchbase Capella is a fully managed Database-as-a-Service (DBaaS) that provides a seamless experience for deploying, managing, and scaling data in the cloud. Capella offers a permanent [free tier](https://www.couchbase.com/blog/free-tier-capella-dev-available/).

Terraform is an open-source Infrastructure as Code (IaC) tool that allows you to define, provision, and manage cloud infrastructure in a declarative and consistent manner using human-readable configuration files.

## Prerequisites

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [Couchbase Capella Account](https://cloud.couchbase.com/)

## Usage

1. Clone the repository

Using the GitHub CLI:

```bash
gh repo clone hummusonrails/couchbase-capella-terraform-example
```

Using Git:

```bash
git clone git@github.com:hummusonrails/couchbase-capella-terraform-example.git
```

2. Change into the directory

```bash
cd couchbase-capella-terraform-example
```

3. Initialize the Terraform configuration

```bash
terraform init
```

4. Set the required environment variables

Create a new file named `terraform.tfvars` and add the following content:

```hcl
auth_token      = "YOUR_CAPELLA_API_TOKEN"
organization_id = "YOUR_CAPELLA_ORGANIZATION_ID"
project_id      = "YOUR_CAPELLA_PROJECT_ID"
cluster_id      = "YOUR_CAPELLA_CLUSTER_ID"
```

This [blog post](https://www.couchbase.com/blog/terraform-provider-couchbase-capella/) explains where to find the required values in the Couchbase Capella UI.

In a production environment, it is recommended to use a secrets management tool to store sensitive information. Either way, make sure to add `terraform.tfvars` to your `.gitignore` file.

5. Apply the Terraform configuration

```bash
terraform apply -var-file=terraform.tfvars
```

6. Confirm the changes

Type `yes` when prompted to confirm the changes.

7. Verify the bucket creation

Check the Couchbase Capella UI to verify that the bucket has been created successfully.

## Further Reading

To learn more about Couchbase Capella and Terraform, check out the following resources:

- [Terraform Provider for Couchbase Capella](https://www.couchbase.com/blog/terraform-provider-couchbase-capella/)
- [Terraform Provider Documentation](https://registry.terraform.io/providers/couchbasecloud/couchbase-capella/latest/docs)
- [Couchbase Capella Terraform Getting Started Documentation](https://docs.couchbase.com/cloud/terraform/index.html)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
