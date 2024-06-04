variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "website_suffix" {
  description = "Name of the file for website suffix"
  type        = string
}

variable "frontend_dir" {
  description = "Location of frontend directory files"
  type = string
}