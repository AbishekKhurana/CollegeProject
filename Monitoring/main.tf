provider "google" {
 credentials = "${var.credentials}"
 region      = "${var.region}"
 project     = "${var.project_id}"
} 
resource "google_monitoring_alert_policy" "alert_policy" {
  display_name = "$(var.name)"
  combiner = "OR"
  conditions {
    display_name = "test condition"
    condition_threshold {
      filter = "$(var.filter)"
      duration = "60s"
      comparison = "COMPARISON_GT"
      aggregations {
        alignment_period = "60s"
        per_series_aligner = "ALIGN_RATE"
      }
    }
  }

  user_labels = {
    foo = "bar"
  }
}