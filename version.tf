terraform {
    required_version = "1.12.2"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
    backend "s3" {
        bucket = "my-s3-backend-bucket-prod-punarva-2025"
        key    = "prod/terraform.tfstate"
        region = "ap-south-1"
        encrypt = true
        use_lockfile = true
         
    }
}