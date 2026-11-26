# Project 12: Infrastructure CI Trigger (Terraform Plan)

## Overview
This project runs Terraform format checks, initialization, validation, and plan generation automatically via GitHub Actions on pushes to main, uploading the generated plan file as a workflow artifact.


## Files in Repository
- main.tf: Terraform configuration for the project.
- .github/workflows/terraform-plan.yml: GitHub Actions CI workflow running terraform plan and uploading the plan artifact.
- .gitignore: Ignores local Terraform state, cache, and temporary plan files.
  

## Steps on Linux VM
1. Go to ~/projects/project12.
2. Run terraform fmt, terraform init, terraform validate, and terraform plan -out=tfplan.
3. Stage, commit, and push changes to the main branch on GitHub.
4. Open the Actions tab in GitHub, confirm the workflow run passes, and check that terraform-plan-artifact appears under Artifacts.
