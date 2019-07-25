provider "google" {
 credentials = "${var.credentials}"
 region      = "${var.region}"
 project     = "${var.project_id}"
} 
variable "project_id" {
	 description = "The ID of the project in which the cloudSQL will be created."
}
variable "region" {
	description = "The region of service"
}
variable "credentials" {
	description = "The credentials of service account"
	default = "cloud-project-243405-5e6d114db477.json"
} 

variable "composer_name"{
	description = "name of the comoposer environment"
}