
resource "google_cloud_run_service" "example" {
  name     = "golang-service"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/alert-flames-286515/nodeapp:v2.0"
      }
      service_account_name = "test-83@alert-flames-286515.iam.gserviceaccount.com"      
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  autogenerate_revision_name = true
}

resource "google_cloud_run_service_iam_policy" "public_policy" {
  project  = "alert-flames-286515"
  location = google_cloud_run_service.example.location
  service  = google_cloud_run_service.example.name

  policy_data = data.google_iam_policy.public_binding.policy_data
}

data "google_iam_policy" "public_binding" {
  binding {
    role = "roles/run.invoker"

    members = [
      "allUsers"
    ]
  }
}

output "service_url" {
  value = google_cloud_run_service.example.status[0].url
}
