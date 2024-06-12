# Terragrunt Module for Connecting two or more VPCs with different environments using Terragrunt Modules 

This repository contains Terragrunt modules for connecting two or more VPCs with different environments using Terragrunt Modules.

## Directory Structure

- **modules**: Contains modules for VPCs and transit gateway.
- **root**: Contains Terragrunt configurations for connecting both VPCs with dev and stage environments using transit gateway configuration in Terragrunt.

## Usage

To use this Terragrunt module, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the root directory of the repository.
3. Ensure you have Terragrunt installed on your machine.
4. Run the following command to apply the configurations:

   ```bash
   terragrunt run-all apply


This command will apply the configurations defined in the root directory, connecting the specified VPCs with the desired environments using the transit gateway configuration.

Make sure to review and customize the configurations according to your specific requirements before applying them.

For more information on Terragrunt commands and usage, refer to the [Terragrunt Documentation](https://terragrunt.gruntwork.io/docs/).
