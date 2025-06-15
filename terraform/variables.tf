# terraform/variables.tf

variable "mgc_access_key" {
  description = "Magalu Cloud Access Key"
  type        = string
  sensitive   = true
}

variable "mgc_secret_key" {
  description = "Magalu Cloud Secret Key"
  type        = string
  sensitive   = true
}