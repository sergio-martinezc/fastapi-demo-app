# main.tf
#update 8
# Configuración del proveedor de AWS
provider "aws" {
  region = "us-east-1" # O la región de tu preferencia
}

# Definición del bucket S3
# Yor escaneará este bloque y le añadirá las etiquetas
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "bucket-yor-traced" # El nombre que especificaste
  tags = {
    git_commit           = "f12b0f6812e8b3b0155de813b969ca8752966160"
    git_file             = "IaC/main.tf"
    git_last_modified_at = "2025-07-28 01:14:43"
    git_last_modified_by = "SERGIO.MARTINEZC@OUTLOOK.COM"
    git_modifiers        = "SERGIO.MARTINEZC"
    git_org              = "sergio-martinezc"
    git_repo             = "fastapi-demo-app"
    yor_name             = "s3_bucket"
    yor_trace            = "04dddd2b-df21-4e03-87b6-f90a81eb303b"
  }
}
