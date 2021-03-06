% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{admin_post_announcements}
\alias{admin_post_announcements}
\title{Post an announcement}
\usage{
admin_post_announcements(subject, body, released_at = NULL)
}
\arguments{
\item{subject}{string required. The subject of this announcement.}

\item{body}{string required. The body of this announcement.}

\item{released_at}{string optional. The date and time this announcement was released.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID of this announcement}
\item{subject}{string, The subject of this announcement.}
\item{body}{string, The body of this announcement.}
\item{releasedAt}{string, The date and time this announcement was released.}
\item{createdAt}{string, }
\item{updatedAt}{string, }
}
\description{
Post an announcement
}
