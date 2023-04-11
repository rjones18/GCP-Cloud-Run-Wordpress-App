# GCP-Cloud-Run-Golang-App

In this project, I have proficiently executed the deployment of a containerized Golang application on the Google Cloud Run service, utilizing Terraform for infrastructure as code (IaC) management. To streamline the deployment process, I implemented a Continuous Deployment (CD) strategy by seamlessly integrating the GitHub repository with Google Cloud Source Repositories.

The deployment workflow is powered by two distinct Cloud Build pipelines. The first pipeline automates the deployment of Terraform infrastructure code to set up the Cloud Run environment, while the second pipeline efficiently generates and deploys updated Docker images to Cloud Run. This dual-pipeline approach ensures rapid and consistent deployment of changes to the application.

To bolster the application's accessibility and user experience, I employed Google Domains to provision and assign a custom domain name, thereby enabling users to interact with the application through a user-friendly web address. This comprehensive implementation demonstrates a robust and scalable containerized application deployment strategy on the Cloud Run platform.

## Architecture Breakdown

The application is broken down into the architecture below:

![applications](https://github.com/rjones18/Images/blob/main/GCP%20NodeJs2.png)
