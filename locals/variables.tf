variable "instance_names" {
    type=list
    default=["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id" {
    type=string
    default= "ami-0b4f379183e5706b9"
}

variable "zone_id" {
    default= "Z09079071I9PB2SGNM2HI"
}

variable "domain_name" {
    default = "chintu.cloud"
}