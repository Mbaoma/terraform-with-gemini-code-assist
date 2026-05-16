# Infrastructure Deployment Guide: Cloud Storage

This guide provides the steps to deploy the private, multi-region Cloud Storage bucket using Terraform.

## Prerequisites

1.  **GCP Authentication**: Ensure you are authenticated with Google Cloud.
    ```bash
    gcloud auth application-default login
    ```
2.  **Terraform**: Ensure Terraform is installed on your local machine.

## Deployment Steps

1.  **Initialize Terraform**  
    Initialize the working directory and download the Google provider.
    ```bash
    terraform init
    ```

2.  **Format Configuration** (Best Practice)  
    Apply standard HCL formatting to all configuration files.
    ```bash
    terraform fmt
    ```

3.  **Validate Configuration**  
    Ensure the configuration is syntactically valid and internally consistent.
    ```bash
    terraform validate
    ```

4.  **Apply Infrastructure**  
    Review and apply the plan. Replace `[PROJECT_ID]` and `[BUCKET_NAME]` with your specific values.
    ```bash
    terraform apply -var="project_id=[PROJECT_ID]" -var="bucket_name=[BUCKET_NAME]" 
    ```