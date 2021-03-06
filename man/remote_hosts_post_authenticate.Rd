% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{remote_hosts_post_authenticate}
\alias{remote_hosts_post_authenticate}
\title{Authenticate against a remote host using either a credential or a user name and password}
\usage{
remote_hosts_post_authenticate(
  id,
  credential_id = NULL,
  username = NULL,
  password = NULL
)
}
\arguments{
\item{id}{integer required. The ID of the remote host.}

\item{credential_id}{integer optional. The credential ID.}

\item{username}{string optional. The user name for remote host.}

\item{password}{string optional. The password for remote host.}
}
\value{
An empty HTTP response
}
\description{
Authenticate against a remote host using either a credential or a user name and password
}
