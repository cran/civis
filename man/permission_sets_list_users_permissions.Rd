% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{permission_sets_list_users_permissions}
\alias{permission_sets_list_users_permissions}
\title{Get all permissions for a user, in this permission set}
\usage{
permission_sets_list_users_permissions(id, user_id)
}
\arguments{
\item{id}{integer required. The ID for this permission set.}

\item{user_id}{integer required. The ID for the user.}
}
\value{
An array containing the following fields:
\item{resourceName}{string, The name of the resource.}
\item{read}{boolean, If true, the user has read permission on this resource.}
\item{write}{boolean, If true, the user has write permission on this resource.}
\item{manage}{boolean, If true, the user has manage permission on this resource.}
}
\description{
Get all permissions for a user, in this permission set
}
