% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{users_list}
\alias{users_list}
\title{List users}
\usage{
users_list(
  feature_flag = NULL,
  account_status = NULL,
  query = NULL,
  group_id = NULL,
  group_ids = NULL,
  organization_id = NULL,
  exclude_groups = NULL,
  limit = NULL,
  page_num = NULL,
  order = NULL,
  order_dir = NULL
)
}
\arguments{
\item{feature_flag}{string optional. Return users that have a feature flag enabled.}

\item{account_status}{string optional. The account status by which to filter users. May be one of "active", "inactive", or "all". Defaults to active.}

\item{query}{string optional. Return users who match the given query, based on name, user, email, and id.}

\item{group_id}{integer optional. The ID of the group by which to filter users. Cannot be present if group_ids is.}

\item{group_ids}{array optional. The IDs of the groups by which to filter users. Cannot be present if group_id is.}

\item{organization_id}{integer optional. The ID of the organization by which to filter users.}

\item{exclude_groups}{boolean optional. Whether or to exclude users' groups. Default: false.}

\item{limit}{integer optional. Number of results to return. Defaults to 20. Maximum allowed is 10000.}

\item{page_num}{integer optional. Page number of the results to return. Defaults to the first page, 1.}

\item{order}{string optional. The field on which to order the result set. Defaults to name. Must be one of: name, user.}

\item{order_dir}{string optional. Direction in which to sort, either asc (ascending) or desc (descending) defaulting to asc.}
}
\value{
An array containing the following fields:
\item{id}{integer, The ID of this user.}
\item{user}{string, The username of this user.}
\item{name}{string, The name of this user.}
\item{email}{string, The email of this user.}
\item{active}{boolean, Whether this user account is active or deactivated.}
\item{primaryGroupId}{integer, The ID of the primary group of this user.}
\item{groups}{array, An array containing the following fields: 
\itemize{
\item id integer, The ID of this group.
\item name string, The name of this group.
\item slug string, The slug of this group.
\item organizationId integer, The ID of the organization associated with this group.
\item organizationName string, The name of the organization associated with this group.
}}
\item{createdAt}{string, The date and time when the user was created.}
\item{currentSignInAt}{string, The date and time when the user's current session began.}
\item{updatedAt}{string, The date and time when the user was last updated.}
\item{lastSeenAt}{string, The date and time when the user last visited Platform.}
\item{suspended}{boolean, Whether the user is suspended due to inactivity.}
\item{createdById}{integer, The ID of the user who created this user.}
\item{lastUpdatedById}{integer, The ID of the user who last updated this user.}
}
\description{
List users
}
