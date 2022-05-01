variable "region" {
    type = string
    default = "us-east-1"
}

variable "ami"{
    type = string
    default = "ami-09d56f8956ab235b3"
}

variable "inst-type"{
    type = string
    default = "t2.micro"
}

variable "subnet"{
    type = list
    default = ["subnet-0527b2ae4674aae33" , "subnet-0f713ae42002f7f62"]
}

variable "sec_group"{
    type = string
    default = "sg-0323f191c892ffcf1"
}

