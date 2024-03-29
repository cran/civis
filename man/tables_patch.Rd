% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{tables_patch}
\alias{tables_patch}
\title{Update a table}
\usage{
tables_patch(
  id,
  ontology_mapping = NULL,
  description = NULL,
  primary_keys = NULL,
  last_modified_keys = NULL
)
}
\arguments{
\item{id}{integer required. The ID of the table.}

\item{ontology_mapping}{list optional. The ontology-key to column-name mapping.  See /ontology for the list of valid ontology keys.}

\item{description}{string optional. The user-defined description of the table.}

\item{primary_keys}{array optional. A list of column(s) which together uniquely identify a row in the data.These columns must not contain NULL values.}

\item{last_modified_keys}{array optional. The columns indicating when a row was last modified.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID of the table.}
\item{databaseId}{integer, The ID of the database.}
\item{schema}{string, The name of the schema containing the table.}
\item{name}{string, Name of the table.}
\item{description}{string, The description of the table, as specified by the table owner}
\item{isView}{boolean, True if this table represents a view. False if it represents a regular table.}
\item{rowCount}{integer, The number of rows in the table.}
\item{columnCount}{integer, The number of columns in the table.}
\item{sizeMb}{number, The size of the table in megabytes.}
\item{owner}{string, The database username of the table's owner.}
\item{distkey}{string, The column used as the Amazon Redshift distkey.}
\item{sortkeys}{string, The column used as the Amazon Redshift sortkey.}
\item{refreshStatus}{string, How up-to-date the table's statistics on row counts, null counts, distinct counts, and values distributions are. One of: refreshing, stale, or current.}
\item{lastRefresh}{string, The time of the last statistics refresh.}
\item{dataUpdatedAt}{string, The last time that Civis Platform captured a change in this table.Only applicable for Redshift tables; please see the Civis help desk for more info.}
\item{schemaUpdatedAt}{string, The last time that Civis Platform captured a change to the table attributes/structure.Only applicable for Redshift tables; please see the Civis help desk for more info.}
\item{refreshId}{string, The ID of the most recent statistics refresh.}
\item{lastRun}{list, A list containing the following elements: 
\itemize{
\item id integer, 
\item state string, 
\item createdAt string, The time that the run was queued.
\item startedAt string, The time that the run started.
\item finishedAt string, The time that the run completed.
\item error string, The error message for this run, if present.
}}
\item{primaryKeys}{array, The primary keys for this table.}
\item{lastModifiedKeys}{array, The columns indicating an entry's modification status for this table.}
\item{tableTags}{array, An array containing the following fields: 
\itemize{
\item id integer, Table Tag ID
\item name string, Table Tag Name
}}
\item{ontologyMapping}{list, The ontology-key to column-name mapping.  See /ontology for the list of valid ontology keys.}
}
\description{
Update a table
}
