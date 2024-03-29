% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{remote_hosts_patch}
\alias{remote_hosts_patch}
\title{Update some attributes of this Remote Host}
\usage{
remote_hosts_patch(
  id,
  name = NULL,
  type = NULL,
  url = NULL,
  description = NULL
)
}
\arguments{
\item{id}{integer required. The ID of the remote host.}

\item{name}{string optional. The human readable name for the remote host.}

\item{type}{string optional. The type of remote host. One of: RemoteHostTypes::Bigquery, RemoteHostTypes::Bitbucket, RemoteHostTypes::GitSSH, RemoteHostTypes::Github, RemoteHostTypes::GoogleDoc, RemoteHostTypes::JDBC, RemoteHostTypes::Postgres, RemoteHostTypes::Redshift, RemoteHostTypes::S3Storage, and RemoteHostTypes::Salesforce}

\item{url}{string optional. The URL for the remote host.}

\item{description}{string optional. The description of the remote host.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID of the remote host.}
\item{name}{string, The human readable name for the remote host.}
\item{type}{string, The type of remote host. One of: RemoteHostTypes::Bigquery, RemoteHostTypes::Bitbucket, RemoteHostTypes::GitSSH, RemoteHostTypes::Github, RemoteHostTypes::GoogleDoc, RemoteHostTypes::JDBC, RemoteHostTypes::Postgres, RemoteHostTypes::Redshift, RemoteHostTypes::S3Storage, and RemoteHostTypes::Salesforce}
\item{url}{string, The URL for the remote host.}
\item{description}{string, The description of the remote host.}
\item{myPermissionLevel}{string, Your permission level on the object. One of "read", "write", or "manage".}
\item{user}{list, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{createdAt}{string, }
\item{updatedAt}{string, }
}
\description{
Update some attributes of this Remote Host
}
