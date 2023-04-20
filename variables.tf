variable "my_aws_region" {
    type = string
    description = "This variable is used to specify region"
}

variable "my_access_key" {
    type = string
    description = "This variable is used to specify access_key"
}

variable "my_secret_key" {
    type = string
    description = "This variable is used to specify access_key"
}

variable "my_domain_name" {
    type = string
}

variable "my_web_sub_domain_name" {
    type = string
}


variable "my_mail_sub_domain_name" {
    type = string
}

variable "my_gitlab_sub_domain_name" {
    type = string
}

variable "my_db_sub_domain_name" {
    type = string
}

variable "my_artifactory_sub_domain_name" {
    type = string
}

variable "my_local_aws_private_key_path" {
    type = string
  
}

variable "my_key_name" {
    type = string 
}

variable "my_web_want" {
    type = bool
}

variable "my_web_count" {
    type = number

}

variable "my_mail_want" {
    type = bool
}

variable "my_mail_count" {
    type = number
}

variable "my_gitlab_want" {
    type = bool
}

variable "my_gitlab_count" {
    type = number
}

variable "my_db_want" {
    type = bool
}

variable "my_db_count" {
    type = number
}

variable "my_artifactory_want" {
    type = bool
}

variable "my_artifactory_count" {
    type = number
}

