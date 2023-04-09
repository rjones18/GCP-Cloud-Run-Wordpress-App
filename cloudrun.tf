resource "google_cloud_run_service" "default" {
  name     = "cloudrun-srv"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/alert-flames-286515/wordpress-docker-image:latest"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}