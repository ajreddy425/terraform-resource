

module "vpc" { // module "module_logical_name"  // logical_name can be anytging
  source      = "./modules/networking"
  vpc_cidr    = "192.168.0.0/16"
  vpc_tag     = "tf-my-vpc"
  subnet_cidr = "192.168.0.0/24"
  subnet_tag  = "tf-subnet"
}


module "ec2" {
  source = "./modules/compute"
  ec2_tag = "tf-ec2"
  sub_id = module.vpc.subnet_id  // module.module_logical_name_networking.output_logical_name
}


// for each and every module you have to give terraform init command 