variable "environment" {
  type = string
  default = "production"
  description = "environment type"
}
variable "resourcegroupname" {
  type = string
  description = "resourcegroupname"
}
variable "location" {
    type = string
    description = "location of the resource"
}
variable "storageaccountname" {
    type = string
    description = "storage account name"
}