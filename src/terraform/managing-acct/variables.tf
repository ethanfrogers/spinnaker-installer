variable "spinnaker_instance_profile_name" {
  description = "The name of the role you want to use for the Spinnaker instance"
  default = "SpinnakerInstanceProfile"
}

variable "spinnaker_managed_profile_name" {
  description = "The name of the managed role you want Spinnaker to manage"
  default = "SpinnakerManagedProfile"
}

variable "spinnaker_ecr_access_policy_name" {
  description = "The ECR access policy name.  The Spinnaker instances uses ECR to download containers necessary to run Spinnaker"
  default = "SpinnakerECRAccessPolicy"
}

variable "armory_spinnaker_elb_name" {
  description = "The name of the ELB that spinnaker subservices will use"
  default = "armoryspinnaker-prod-elb"
}

variable "spinnaker_cache_replication_group_id" {
  description = "The name of the elasticache redis cluster"
  default = "spinnaker-cache"
}

variable "shared_credentials_file" {
  description = "The path of the shared credentials file to be used, default ~/.aws/credentials"
  default = "~/.aws/credentials"
}

variable "aws_profile" {
  description = "The profile to use to deploy all the Spinnaker infrastructure"
  default = "default"
}

variable "armory_spinnaker_cache_subnet_name" {
  description = "The name of the elasticache subnet security group"
  default = "armoryspinnaker-cache-subnet"
}

variable "spinnaker_access_policy_name" {
  description = "The name of the access policy you want spinnaker to have"
  default = "SpinnakerAccessPolicy"
}

variable "associate_public_ip_address" {
  description = "Wether or not the spinnaker instance itself has a public ip, defaults to false"
  default = "false"
}

variable "spinnaker_elb_sg_name" {
  description = "The name of the security group to give to allow web traffic to the dashboard"
  default = "spinnakerarmory-prod-elb"
}

variable "spinnaker_default_sg_name" {
  description = "The name of the default security group that allows Spinnaker sub-services to communicate"
  default = "armory-spinnaker-default"
}

variable "spinnaker_assume_policy_name" {
  description = "The name of the assume policy you want spinnaker to use"
  default = "SpinnakerAssumePolicy"
}

variable "spinnaker_asg_name" {
  description = "Name given to the default ASG for Spinnaker, this will also be the name of the app that show up in Spinnaker"
  default = "armoryspinnaker-prod-v000"
}

variable "spinnaker_s3_access_policy_name" {
  description = "By default Spinnaker uses S3 as it's backing store for pipelines & applications data and requires a policy"
  default = "SpinnakerS3AccessPolicy"
}

variable "vpc_id" {
  description = "The VPC in which you want Spinnaker to live."
}

variable "armory_s3_bucket" {
    description = "S3 Bucket to persist Spinnaker's state."
}

variable "s3_front50_path_prefix" {
  description = "Within the previously specified S3 bucket, this is the prefix to use for persisting Spinnaker's state."
  default = "front50"
}

variable "armory_subnet_id" {
  description = "The subnet in which you want Spinnaker to live."
}

variable "aws_region" {
  description = "The region in which you want Spinnaker to live."
}

variable "availability_zones" {
  description = "The availability zone(s) in which you want Spinnaker to live."
}

variable "instance_type" {
  description = "The instance type in which you want Spinnaker to live."
  default = "m3.2xlarge"
}

variable "key_name" { }

variable "asg_max" {
    default = 1
}

variable "asg_min" {
    default = 1
}

variable "asg_desired" {
    default = 1
}