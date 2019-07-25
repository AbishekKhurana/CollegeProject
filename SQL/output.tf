output "public_ip_address" {
      value         = "${google_sql_database_instance.master.public_ip_address}"
}
output "id" {
      value         = "${google_sql_database.sampledb.id}"
}
output "name" {
      value         = "${google_sql_database.sampledb.name}"
}
output"connection_name"{
		value       = "${google_sql_database_instance.master.connection_name}"
		}
output"user_name"{
		value       = "${google_sql_user.users.name}"
		}
output"password"{
		value       = "${google_sql_user.users.password}"
		}