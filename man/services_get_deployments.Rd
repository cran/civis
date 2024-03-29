% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{services_get_deployments}
\alias{services_get_deployments}
\title{Get details about a Service deployment}
\usage{
services_get_deployments(service_id, deployment_id)
}
\arguments{
\item{service_id}{integer required. The ID of the owning Service}

\item{deployment_id}{integer required. The ID for this deployment}
}
\value{
A list containing the following elements:
\item{deploymentId}{integer, The ID for this deployment.}
\item{userId}{integer, The ID of the owner.}
\item{host}{string, Domain of the deployment.}
\item{name}{string, Name of the deployment.}
\item{dockerImageName}{string, The name of the docker image to pull from DockerHub.}
\item{dockerImageTag}{string, The tag of the docker image to pull from DockerHub (default: latest).}
\item{displayUrl}{string, A signed URL for viewing the deployed item.}
\item{instanceType}{string, The EC2 instance type requested for the deployment.}
\item{memory}{integer, The memory allocated to the deployment, in MB.}
\item{cpu}{integer, The cpu allocated to the deployment, in millicores.}
\item{state}{string, The state of the deployment.}
\item{stateMessage}{string, A detailed description of the state.}
\item{maxMemoryUsage}{number, If the deployment has finished, the maximum amount of memory used during the deployment, in MB.}
\item{maxCpuUsage}{number, If the deployment has finished, the maximum amount of cpu used during the deployment, in millicores.}
\item{createdAt}{string, }
\item{updatedAt}{string, }
\item{serviceId}{integer, The ID of owning Service}
}
\description{
Get details about a Service deployment
}
