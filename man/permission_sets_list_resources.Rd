% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{permission_sets_list_resources}
\alias{permission_sets_list_resources}
\title{List resources in a permission set}
\usage{
permission_sets_list_resources(
  id,
  limit = NULL,
  page_num = NULL,
  order = NULL,
  order_dir = NULL
)
}
\arguments{
\item{id}{integer required. The ID for this permission set.}

\item{limit}{integer optional. Number of results to return. Defaults to 50. Maximum allowed is 1000.}

\item{page_num}{integer optional. Page number of the results to return. Defaults to the first page, 1.}

\item{order}{string optional. The field on which to order the result set. Defaults to name. Must be one of: name, id, updated_at, created_at.}

\item{order_dir}{string optional. Direction in which to sort, either asc (ascending) or desc (descending) defaulting to asc.}
}
\value{
An array containing the following fields:
\item{permissionSetId}{integer, The ID for the permission set this resource belongs to.}
\item{name}{string, The name of this resource.}
\item{description}{string, A description of this resource.}
\item{createdAt}{string, }
\item{updatedAt}{string, }
}
\description{
List resources in a permission set
}
