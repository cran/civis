% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{enhancements_patch_cass_ncoa}
\alias{enhancements_patch_cass_ncoa}
\title{Update some attributes of this CASS/NCOA Enhancement}
\usage{
enhancements_patch_cass_ncoa(
  id,
  name = NULL,
  schedule = NULL,
  parent_id = NULL,
  notifications = NULL,
  source = NULL,
  destination = NULL,
  column_mapping = NULL,
  use_default_column_mapping = NULL,
  perform_ncoa = NULL,
  ncoa_credential_id = NULL,
  output_level = NULL,
  limiting_sql = NULL,
  batch_size = NULL
)
}
\arguments{
\item{id}{integer required. The ID for the enhancement.}

\item{name}{string optional. The name of the enhancement job.}

\item{schedule}{list optional. A list containing the following elements: 
\itemize{
\item scheduled boolean, If the item is scheduled.
\item scheduledDays array, Days of the week, based on numeric value starting at 0 for Sunday. Mutually exclusive with scheduledDaysOfMonth
\item scheduledHours array, Hours of the day it is scheduled on.
\item scheduledMinutes array, Minutes of the day it is scheduled on.
\item scheduledRunsPerHour integer, Deprecated in favor of scheduled minutes.
\item scheduledDaysOfMonth array, Days of the month it is scheduled on, mutually exclusive with scheduledDays.
}}

\item{parent_id}{integer optional. Parent ID that triggers this enhancement.}

\item{notifications}{list optional. A list containing the following elements: 
\itemize{
\item urls array, URLs to receive a POST request at job completion
\item successEmailSubject string, Custom subject line for success e-mail.
\item successEmailBody string, Custom body text for success e-mail, written in Markdown.
\item successEmailAddresses array, Addresses to notify by e-mail when the job completes successfully.
\item successEmailFromName string, Name from which success emails are sent; defaults to "Civis."
\item successEmailReplyTo string, Address for replies to success emails; defaults to the author of the job.
\item failureEmailAddresses array, Addresses to notify by e-mail when the job fails.
\item stallWarningMinutes integer, Stall warning emails will be sent after this amount of minutes.
\item successOn boolean, If success email notifications are on.
\item failureOn boolean, If failure email notifications are on.
}}

\item{source}{list optional. A list containing the following elements: 
\itemize{
\item databaseTable list . A list containing the following elements: 
\itemize{
\item schema string, The schema name of the source table.
\item table string, The name of the source table.
\item remoteHostId integer, The ID of the database host for the table.
\item credentialId integer, The id of the credentials to be used when performing the enhancement.
\item multipartKey array, The source table primary key.
}
}}

\item{destination}{list optional. A list containing the following elements: 
\itemize{
\item databaseTable list . A list containing the following elements: 
\itemize{
\item schema string, The schema name for the output data.
\item table string, The table name for the output data.
}
}}

\item{column_mapping}{list optional. A list containing the following elements: 
\itemize{
\item address1 string, The first address line.
\item address2 string, The second address line.
\item city string, The city of an address.
\item state string, The state of an address.
\item zip string, The zip code of an address.
\item name string, The full name of the resident at this address. If needed, separate multiple columns with `+`, e.g. `first_name+last_name`
\item company string, The name of the company located at this address.
}}

\item{use_default_column_mapping}{boolean optional. Defaults to true, where the existing column mapping on the input table will be used. If false, a custom column mapping must be provided.}

\item{perform_ncoa}{boolean optional. Whether to update addresses for records matching the National Change of Address (NCOA) database.}

\item{ncoa_credential_id}{integer optional. Credential to use when performing NCOA updates. Required if 'performNcoa' is true.}

\item{output_level}{string optional. The set of fields persisted by a CASS or NCOA enhancement.For CASS enhancements, one of 'cass' or 'all.'For NCOA enhancements, one of 'cass', 'ncoa' , 'coalesced' or 'all'.By default, all fields will be returned.}

\item{limiting_sql}{string optional. The limiting SQL for the source table. "WHERE" should be omitted (e.g. state='IL').}

\item{batch_size}{integer optional. The maximum number of records processed at a time. Note that this parameter is not available to all users.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID for the enhancement.}
\item{name}{string, The name of the enhancement job.}
\item{type}{string, The type of the enhancement (e.g CASS-NCOA)}
\item{createdAt}{string, The time this enhancement was created.}
\item{updatedAt}{string, The time the enhancement was last updated.}
\item{author}{list, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{state}{string, The status of the enhancement's last run}
\item{schedule}{list, A list containing the following elements: 
\itemize{
\item scheduled boolean, If the item is scheduled.
\item scheduledDays array, Days of the week, based on numeric value starting at 0 for Sunday. Mutually exclusive with scheduledDaysOfMonth
\item scheduledHours array, Hours of the day it is scheduled on.
\item scheduledMinutes array, Minutes of the day it is scheduled on.
\item scheduledRunsPerHour integer, Deprecated in favor of scheduled minutes.
\item scheduledDaysOfMonth array, Days of the month it is scheduled on, mutually exclusive with scheduledDays.
}}
\item{parentId}{integer, Parent ID that triggers this enhancement.}
\item{notifications}{list, A list containing the following elements: 
\itemize{
\item urls array, URLs to receive a POST request at job completion
\item successEmailSubject string, Custom subject line for success e-mail.
\item successEmailBody string, Custom body text for success e-mail, written in Markdown.
\item successEmailAddresses array, Addresses to notify by e-mail when the job completes successfully.
\item successEmailFromName string, Name from which success emails are sent; defaults to "Civis."
\item successEmailReplyTo string, Address for replies to success emails; defaults to the author of the job.
\item failureEmailAddresses array, Addresses to notify by e-mail when the job fails.
\item stallWarningMinutes integer, Stall warning emails will be sent after this amount of minutes.
\item successOn boolean, If success email notifications are on.
\item failureOn boolean, If failure email notifications are on.
}}
\item{runningAs}{list, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{myPermissionLevel}{string, Your permission level on the object. One of "read", "write", or "manage".}
\item{source}{list, A list containing the following elements: 
\itemize{
\item databaseTable list . A list containing the following elements: 
\itemize{
\item schema string, The schema name of the source table.
\item table string, The name of the source table.
\item remoteHostId integer, The ID of the database host for the table.
\item credentialId integer, The id of the credentials to be used when performing the enhancement.
\item multipartKey array, The source table primary key.
}
}}
\item{destination}{list, A list containing the following elements: 
\itemize{
\item databaseTable list . A list containing the following elements: 
\itemize{
\item schema string, The schema name for the output data.
\item table string, The table name for the output data.
}
}}
\item{columnMapping}{list, A list containing the following elements: 
\itemize{
\item address1 string, The first address line.
\item address2 string, The second address line.
\item city string, The city of an address.
\item state string, The state of an address.
\item zip string, The zip code of an address.
\item name string, The full name of the resident at this address. If needed, separate multiple columns with `+`, e.g. `first_name+last_name`
\item company string, The name of the company located at this address.
}}
\item{useDefaultColumnMapping}{boolean, Defaults to true, where the existing column mapping on the input table will be used. If false, a custom column mapping must be provided.}
\item{performNcoa}{boolean, Whether to update addresses for records matching the National Change of Address (NCOA) database.}
\item{ncoaCredentialId}{integer, Credential to use when performing NCOA updates. Required if 'performNcoa' is true.}
\item{outputLevel}{string, The set of fields persisted by a CASS or NCOA enhancement.For CASS enhancements, one of 'cass' or 'all.'For NCOA enhancements, one of 'cass', 'ncoa' , 'coalesced' or 'all'.By default, all fields will be returned.}
\item{limitingSQL}{string, The limiting SQL for the source table. "WHERE" should be omitted (e.g. state='IL').}
\item{batchSize}{integer, The maximum number of records processed at a time. Note that this parameter is not available to all users.}
\item{archived}{string, The archival status of the requested item(s).}
}
\description{
Update some attributes of this CASS/NCOA Enhancement
}
