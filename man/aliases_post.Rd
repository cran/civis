% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{aliases_post}
\alias{aliases_post}
\title{Create an Alias}
\usage{
aliases_post(object_id, object_type, alias, display_name = NULL)
}
\arguments{
\item{object_id}{integer required. The id of the object}

\item{object_type}{string required. The type of the object. Valid types include: cass_ncoa, container_script, geocode, python_script, r_script, salesforce_export, javascript_script, sql_script, project, notebook, workflow, template_script, template_report, service, report, tableau and service_report.}

\item{alias}{string required. The alias of the object}

\item{display_name}{string optional. The display name of the Alias object. Defaults to object name if not provided.}
}
\value{
A list containing the following elements:
\item{id}{integer, The id of the Alias object.}
\item{objectId}{integer, The id of the object}
\item{objectType}{string, The type of the object. Valid types include: cass_ncoa, container_script, geocode, python_script, r_script, salesforce_export, javascript_script, sql_script, project, notebook, workflow, template_script, template_report, service, report, tableau and service_report.}
\item{alias}{string, The alias of the object}
\item{userId}{integer, The id of the user who created the alias}
\item{displayName}{string, The display name of the Alias object. Defaults to object name if not provided.}
}
\description{
Create an Alias
}
