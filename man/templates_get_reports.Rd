% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{templates_get_reports}
\alias{templates_get_reports}
\title{Get a Report Template}
\usage{
templates_get_reports(id)
}
\arguments{
\item{id}{integer required.}
}
\value{
A list containing the following elements:
\item{id}{integer, }
\item{name}{string, The name of the template.}
\item{category}{string, The category of this report template.  Can be left blank.  Acceptable values are: dataset-viz}
\item{createdAt}{string, }
\item{updatedAt}{string, }
\item{useCount}{integer, The number of uses of this template.}
\item{archived}{boolean, Whether the template has been archived.}
\item{techReviewed}{boolean, Whether this template has been audited by Civis for security vulnerability and correctness.}
\item{author}{list, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{authCodeUrl}{string, A URL to the template's stored code body.}
\item{provideAPIKey}{boolean, Whether reports based on this template request an API Key from the report viewer.}
\item{hidden}{boolean, The hidden status of the item.}
}
\description{
Get a Report Template
}
