resource "google_cloudbuild_trigger" "example" {
  project = "alert-flames-286515"
  name    = "cloud-run-golang-trigger"
  disabled = false
  service_account = "projects/alert-flames-286515/serviceAccounts/cloudbuildaccount@alert-flames-286515.iam.gserviceaccount.com"

  trigger_template {
    repo_name   = "github_rjones18_gcp-cloud-run-golang-app"
    branch_name = "main"
  }
  filename = "cloudbuild_files/cloudbuild.yaml"
}