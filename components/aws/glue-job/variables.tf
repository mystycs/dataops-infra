##############################################
### Standard variables for all AWS modules ###
##############################################

variable "name_prefix" {
  description = "Standard `name_prefix` module input."
  type        = string
}
variable "environment" {
  description = "Standard `environment` module input."
  type = object({
    vpc_id          = string
    aws_region      = string
    public_subnets  = list(string)
    private_subnets = list(string)
  })
}
variable "resource_tags" {
  description = "Standard `resource_tags` module input."
  type        = map(string)
}

########################################
### Custom variables for this module ###
########################################

variable "s3_script_bucket_name" {
  description = "S3 script bucket for Glue transformation job."
  type        = string
}

variable "s3_source_bucket_name" {
  description = "S3 source bucket for Glue transformation job."
  type        = string
}

variable "s3_destination_bucket_name" {
  description = "S3 destination bucket for Glue transformation job."
  type        = string
}

variable "script_path" {
  description = "Path to Glue script."
  type        = string
}

variable "job_type" {
  description = "Type of Glue job (Spark or Python Shell)."
  type        = string
}