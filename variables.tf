variable "vpcCidr" {
    type = string
    default = "10.0.0.0/16"  
}
variable "AZ1" {
    type = string
    default = "us-east-1a"  
}
variable "AZ2" {
    type = string
    default = "us-east-1b"  
}
variable "PubSN1Cidr" {
    type = string
    default = "10.0.0.0/24"  
}

variable "PubSN2Cidr" {
    type = string
    default = "10.0.1.0/24"  
}

variable "PrvtSN1Cidr" {
    type = string
    default = "10.0.2.0/24"  
}

variable "PrvtSN2Cidr" {
    type = string
    default = "10.0.3.0/24"  
}

variable "PrvtSN3Cidr" {
    type = string
    default = "10.0.4.0/24"  
}

variable "PrvtSN4Cidr" {
    type = string
    default = "10.0.5.0/24"  
}

variable "MyIP" {
    type = string
    default = "73.77.239.2/32"
}

variable "logs_bucket" {
  type = string  
}