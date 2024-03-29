% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{storage_hosts_list_dependencies}
\alias{storage_hosts_list_dependencies}
\title{List dependent objects for this object}
\usage{
storage_hosts_list_dependencies(id, user_id = NULL)
}
\arguments{
\item{id}{integer required. The ID of the resource that is shared.}

\item{user_id}{integer optional. ID of target user}
}
\value{
An array containing the following fields:
\item{objectType}{string, Dependent object type}
\item{fcoType}{string, Human readable dependent object type}
\item{id}{integer, Dependent object ID}
\item{name}{string, Dependent object name, or nil if the requesting user cannot read this object}
\item{permissionLevel}{string, Permission level of target user (not user's groups) for dependent object, or null if no target user}
\item{shareable}{boolean, Whether or not the requesting user can share this object.}
}
\description{
List dependent objects for this object
}
