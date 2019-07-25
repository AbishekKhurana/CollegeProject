
variable "project_id" {
	 description = "The ID of the project in which the API will be enabled."
}
variable "region" {
	description = "The region of service"
}
variable "credentials" {
	description = "The credentials of service account"
	default = "cloud-project-243405-5e6d114db477.json"
} 