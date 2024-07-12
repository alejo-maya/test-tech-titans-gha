
# Run Time Inputs

This readme is created to explain the operation of workflows that request inputs at runtime.

All files linked to this feature are prefixed with 'RTI' at the beginning in order to keep them organized since GitHub does not allow to separate workflows into different directories.

#### Runtime inputs created so far:
- Specify a Terraform Variable File


## Specify a Terraform Variable File
This workflow is designed to request the specification of a variables file (.tfvars) for a Terraform plan. 

#### Trigger
- Can be called by any other workflow.
- Can be tested through the manual workflow **"rti-test-specify-tfvarfile.yml"**, this workflow was created specifically to test this functionality.

#### Inputs
- varfile_path: The path to the directory where the variable files are located.

#### Outputs
- varfile: The variable file specified.

#### Permissions
- Permissions are given to write to the repository content and handle issues.

#### Steps
- Create Issue Requesting Variables File 
    - Use actions/github-script to create an issue requesting that the variables file be specified via a comment.

- Wait for Input and Verify Variables File
    - Waits for the comment on the issue with a variables file.
    - Verify that the comment is valid (ending in .tfvars).
    - Check that the file exists in the repository and specifically in the directory indicated in the input.
    - If the file is valid and exists, the workflow proceeds.
    - If it is invalid or does not exist, it prompts the user to enter a correct file.

- Close Issue on Completion:
    - Based on the outcome of the workflow (success, failure or cancellation), comments on the corresponding issue and closes it.

- Final Result:
    - The specified variable file is stored as an output of the job and can be used in subsequent workflows.
