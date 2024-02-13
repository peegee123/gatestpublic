terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">= 2.1.0" # Specify the version or version constraint you want
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0" # Specify the version or version constraint you want
    }
  }
}

resource "null_resource" "folder_management" {
  triggers = {
    folder_path = "${path.module}/my_folder"
  }

  # Create the folder
  provisioner "local-exec" {
    command = "mkdir -p ${self.triggers.folder_path}"
  }

  # Delete the folder and its contents
  provisioner "local-exec" {
    when    = destroy
    command = "rm -rf ${self.triggers.folder_path}"
  }
}

resource "local_file" "my_file" {
  depends_on = [null_resource.folder_management]

  filename = "${null_resource.folder_management.triggers.folder_path}/my_file.txt"
  content  = "Hello, Terraform!"
}

