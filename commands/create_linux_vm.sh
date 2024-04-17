# Initialize Terraform

terraform init -upgrade

# Key points:
# The -upgrade parameter upgrades the necessary provider plugins to the newest version that complies with the configuration's version constraints.


# Create Terraform execution plan
terraform plan -out main.tfplan

# Key points:
# The terraform plan command creates an execution plan, but doesn't execute it. Instead, it determines what actions are necessary to create the configuration specified in your configuration files. This pattern allows you to verify whether the execution plan matches your expectations before making any changes to actual resources.
# The optional -out parameter allows you to specify an output file for the plan. Using the -out parameter ensures that the plan you reviewed is exactly what is applied.


# Apply Terraform execution plan
terraform apply main.tfplan

# Key points:
# The example terraform apply command assumes you previously ran terraform plan -out main.tfplan.
# If you specified a different filename for the -out parameter, use that same filename in the call to terraform apply.
# If you didn't use the -out parameter, call terraform apply without any parameters.


# Verify the results with Azure PowerShell

# Get Azure Resource Group Name.
$resource_group_name=$(terraform output -raw resource_group_name)

# Run Get-AzVm to display the names of all the Virtual Machines in the Resource Group.
Get-AzVm -ResourceGroupName $resource_group_name


# CLEANUP Azure
terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan

