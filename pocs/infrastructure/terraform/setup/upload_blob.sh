#!/bin/bash

# Variables
STORAGE_ACCOUNT_NAME="swttpocrhrtfstate001"
CONTAINER_NAME="terraform-state"
FILE_PATH="./terraform.tfstate"
BLOB_NAME="sw-tt-pocue-rhr-setup.tfstate"
RESOURCE_GROUP="sw-tech-titans-pocue-rhr-rg001"
KEY="terraform.tfstate"
SUBSCRIPTION_ID="a5a86e7a-a5a4-4a0f-98b6-605001cf22b2"
TENANT_ID="b25036e3-de39-4fec-a4aa-bda41b870d38"


# Check if the storage account exists
account_exists=$(az storage account check-name --name $STORAGE_ACCOUNT_NAME --query 'nameAvailable')

if [ "$account_exists" = "false" ]; then
    echo "Storage account $STORAGE_ACCOUNT_NAME exists."
else
    echo "Storage account $STORAGE_ACCOUNT_NAME does not exist. Exiting..."
    exit 1
fi

# Upload the file
az storage blob upload --overwrite \
  --account-name $STORAGE_ACCOUNT_NAME \
  --container-name $CONTAINER_NAME \
  --file $FILE_PATH \
  --name $BLOB_NAME

if [ $? -eq 0 ]; then
    echo "File uploaded successfully to blob $BLOB_NAME in container $CONTAINER_NAME."
else
    echo "Failed to upload the file."
fi

# Create a backend configuration file
cat <<EOF > backend.tf
terraform {
  backend "azurerm" {
    resource_group_name   = "$RESOURCE_GROUP"
    storage_account_name  = "$STORAGE_ACCOUNT_NAME"
    container_name        = "$CONTAINER_NAME"
    key                   = "$BLOB_NAME"
    subscription_id       = "$SUBSCRIPTION_ID"
    tenant_id             = "$TENANT_ID"
    use_oidc              = true
  }
}
EOF

# Initialize Terraform with the new backend configuration
echo "Reinitializing Terraform with backend configuration..."
terraform init -reconfigure

if [ $? -eq 0 ]; then
    echo "Terraform has been configured to use the remote backend."
else
    echo "Failed to configure Terraform backend."
fi
