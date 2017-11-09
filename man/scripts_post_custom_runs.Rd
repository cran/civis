% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{scripts_post_custom_runs}
\alias{scripts_post_custom_runs}
\title{Start a run}
\usage{
scripts_post_custom_runs(id)
}
\arguments{
\item{id}{integer required. The ID of the custom.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID of the run.}
\item{customId}{integer, The ID of the custom.}
\item{state}{string, The state of the run, one of 'queued' 'running' 'succeeded' 'failed' or 'cancelled'.}
\item{isCancelRequested}{boolean, True if run cancel requested, else false.}
\item{startedAt}{string, The time the last run started at.}
\item{finishedAt}{string, The time the last run completed.}
\item{error}{string, The error, if any, returned by the run.}
}
\description{
Start a run
}