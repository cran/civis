% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{databases_get_table_privilegesschema_name}
\alias{databases_get_table_privilegesschema_name}
\title{Show table privileges}
\usage{
databases_get_table_privilegesschema_name(id, schema_name, table_name)
}
\arguments{
\item{id}{integer required. The ID of the database}

\item{schema_name}{string required. The name of the schema}

\item{table_name}{string required. The name of the table}
}
\value{
A list containing the following elements:
\item{grantee}{string, Name of the granted user or group}
\item{granteeType}{string, User or group}
\item{privileges}{array, Privileges that the grantee has on this resource}
\item{grantablePrivileges}{array, Privileges that the grantee can grant to others for this resource}
}
\description{
Show table privileges
}
