# GCP-Cloud-Run-Golang-App

In this project, I have proficiently executed the deployment of a containerized Weather Golang application on the Google Cloud Run service, utilizing Terraform for infrastructure as code (IaC) management. To streamline the deployment process, I implemented a Continuous Deployment (CD) strategy by seamlessly integrating the GitHub repository with Google Cloud Source Repositories and Snyk for vulnerability monitoring.

The deployment workflow is powered by two distinct Cloud Build pipelines. The first pipeline automates the deployment of Terraform infrastructure code to set up the Cloud Run environment, while the second pipeline efficiently generates and deploys updated Docker images to Cloud Run. This dual-pipeline approach ensures rapid and consistent deployment of changes to the application.

The application's code leverages Gin, a powerful HTTP framework, to serve HTML files efficiently. It also incorporates CSS and JavaScript to enhance the user interface with responsive styling. By utilizing the OpenCage and OpenWeather APIs, the application can retrieve and display weather information from any location worldwide.

To bolster the application's accessibility and user experience, I employed Google Domains to provision and assign a custom domain name, thereby enabling users to interact with the application through a user-friendly web address. This comprehensive implementation demonstrates a robust and scalable containerized application deployment strategy on the Cloud Run platform, with added security measures provided by Snyk.

Link to Website: https://golang-app.reggietestgcpdomain.com 

## Architecture Breakdown

The application is broken down into the architecture below:

![applications](https://github.com/rjones18/Images/blob/main/Screen%20Shot%202023-04-12%20at%207.48.39%20PM.png)
