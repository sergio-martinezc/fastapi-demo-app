# main.tf
#update 5
# Configuración del proveedor de AWS
provider "aws" {
  region = "us-east-1" # O la región de tu preferencia
}

# Definición del bucket S3
# Yor escaneará este bloque y le añadirá las etiquetas
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "bucket-yor-traced" # El nombre que especificaste
} 
