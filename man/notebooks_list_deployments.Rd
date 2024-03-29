% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{notebooks_list_deployments}
\alias{notebooks_list_deployments}
\title{List deployments for a Notebook}
\usage{
notebooks_list_deployments(
  notebook_id,
  deployment_id = NULL,
  limit = NULL,
  page_num = NULL,
  order = NULL,
  order_dir = NULL
)
}
\arguments{
\item{notebook_id}{integer required. The ID of the owning Notebook}

\item{deployment_id}{integer optional. The ID for this deployment}

\item{limit}{integer optional. Number of results to return. Defaults to 20. Maximum allowed is 50.}

\item{page_num}{integer optional. Page number of the results to return. Defaults to the first page, 1.}

\item{order}{string optional. The field on which to order the result set. Defaults to created_at. Must be one of: created_at.}

\item{order_dir}{string optional. Direction in which to sort, either asc (ascending) or desc (descending) defaulting to desc.}
}
\value{
An array containing the following fields:
\item{deploymentId}{integer, The ID for this deployment.}
\item{userId}{integer, The ID of the owner.}
\item{host}{string, Domain of the deployment.}
\item{name}{string, Name of the deployment.}
\item{dockerImageName}{string, The name of the docker image to pull from DockerHub.}
\item{dockerImageTag}{string, The tag of the docker image to pull from DockerHub (default: latest).}
\item{instanceType}{string, The EC2 instance type requested for the deployment.}
\item{memory}{integer, The memory allocated to the deployment, in MB.}
\item{cpu}{integer, The cpu allocated to the deployment, in millicores.}
\item{state}{string, The state of the deployment.}
\item{stateMessage}{string, A detailed description of the state.}
\item{maxMemoryUsage}{number, If the deployment has finished, the maximum amount of memory used during the deployment, in MB.}
\item{maxCpuUsage}{number, If the deployment has finished, the maximum amount of cpu used during the deployment, in millicores.}
\item{createdAt}{string, }
\item{updatedAt}{string, }
\item{notebookId}{integer, The ID of owning Notebook}
}
\description{
List deployments for a Notebook
}
