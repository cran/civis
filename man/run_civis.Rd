% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scripts.R
\name{run_civis}
\alias{run_civis}
\title{Evaluate an R expression in a Civis Platform container}
\usage{
run_civis(expr, ...)
}
\arguments{
\item{expr}{code to evaluate}

\item{...}{arguments to \code{\link{CivisFuture}}}
}
\description{
Evaluate an R expression in a Civis Platform container
}
\details{
\code{run_civis} blocks until completion. For non-blocking calls,
use futures directly with \code{\link{civis_platform}}.
Attempts are made at detecting and installing necessary packages
within the container, and detecting global variables required in \code{expr}.
}
\examples{
\dontrun{
run_civis(2+2)

# specify required resources, and a specific image
run_civis(2+2,
  required_resources = list(cpu = 1024, memory = 2048),
  docker_image_name='image',
  docker_image_tag = 'latest')

}
}
\seealso{
Other script_utils: 
\code{\link{civis_script}()},
\code{\link{fetch_output_file_ids}()},
\code{\link{run_template}()}
}
\concept{script_utils}
