% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{permission_sets_patch}
\alias{permission_sets_patch}
\title{Update some attributes of this Permission Set}
\usage{
permission_sets_patch(id, name = NULL, description = NULL)
}
\arguments{
\item{id}{integer required. The ID for this permission set.}

\item{name}{string optional. The name of this permission set.}

\item{description}{string optional. A description of this permission set.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID for this permission set.}
\item{name}{string, The name of this permission set.}
\item{description}{string, A description of this permission set.}
\item{author}{list, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{createdAt}{string, }
\item{updatedAt}{string, }
\item{archived}{string, The archival status of the requested item(s).}
}
\description{
Update some attributes of this Permission Set
}
