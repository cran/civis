% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{workflows_get_executions_tasks}
\alias{workflows_get_executions_tasks}
\title{Get a task of a workflow execution}
\usage{
workflows_get_executions_tasks(id, execution_id, task_name)
}
\arguments{
\item{id}{integer required. The ID for the workflow.}

\item{execution_id}{integer required. The ID for the workflow execution.}

\item{task_name}{string required. The URL-encoded name of the task.}
}
\value{
A list containing the following elements:
\item{name}{string, The name of the task.}
\item{mistralState}{string, The state of this task. One of idle, waiting, running, delayed, success, error, or cancelled}
\item{mistralStateInfo}{string, Extra info associated with the state of the task.}
\item{runs}{array, An array containing the following fields: 
\itemize{
\item id integer, The ID of the run.
\item jobId integer, The ID of the job associated with the run.
\item myPermissionLevel string, Your permission level on the job. One of "read", "write", "manage", or "nil".
\item state string, The state of the run.
\item createdAt string, The time that the run was queued.
\item startedAt string, The time that the run started.
\item finishedAt string, The time that the run completed.
}}
\item{executions}{array, An array containing the following fields: 
\itemize{
\item id integer, The ID of the execution.
\item workflowId integer, The ID of the workflow associated with the execution.
\item myPermissionLevel string, Your permission level on the workflow. One of "read", "write", "manage", or "nil".
\item state string, The state of this workflow execution.
\item createdAt string, The time this execution was created.
\item startedAt string, The time this execution started.
\item finishedAt string, The time this execution finished.
}}
}
\description{
Get a task of a workflow execution
}
