variable "Environment" {
  default = "dev"
}

variable "instance_names" {
  type = list
  default = ["cart", "mongodb","shipping"]

}  

variable "zone_id" {
  default = "Z01531431MDS8NV0SCY71"
}

variable "domain_name" {
  default = "mgunti.space"
  
}