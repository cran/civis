% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{read_civis}
\alias{read_civis}
\alias{read_civis.numeric}
\alias{read_civis.character}
\alias{read_civis.sql}
\alias{read_civis.civis_script}
\title{Read tables and files from Civis Platform}
\usage{
read_civis(x, ...)

\method{read_civis}{numeric}(x, using = read.csv, verbose = FALSE, ...)

\method{read_civis}{character}(x, database = NULL, ...)

\method{read_civis}{sql}(
  x,
  database = NULL,
  using = utils::read.csv,
  job_name = NULL,
  hidden = TRUE,
  verbose = FALSE,
  ...
)

\method{read_civis}{civis_script}(x, using, regex = NULL, ...)
}
\arguments{
\item{x}{\code{"schema.table"}, \code{sql("query")}, or a file id.}

\item{...}{arguments passed to \code{using}.}

\item{using}{function, Function to convert the file to a data frame or to unserialize.
the file (e.g. \code{read.csv} or \code{readRDS}).}

\item{verbose}{bool, Set to TRUE to print intermediate progress indicators.}

\item{database}{string, Name of database where data frame is to be uploaded.
If no database is specified, uses \code{options(civis.default_db)}.}

\item{job_name}{string, Name of the job (default: \code{"Civis Export Via R Client"}).}

\item{hidden}{bool, Whether the job is hidden.}

\item{regex}{Regex of matching run output names.}
}
\description{
\code{read_civis} loads a table from Redshift as a data frame if
given a \code{"schema.table"} or \code{sql("query")} as the first argument, or
loads a file from Amazon S3 (the files endpoint) if a file id is given.
Run outputs from any Civis platform script
are returned if a \code{\link{civis_script}} is given.

A default database can be set using \code{options(civis.default_db = "my_database")}.
If there is only one database available,
this database will automatically be used as the default.
}
\details{
By default, \code{read_civis.numeric} assumes the file is a CSV. For reading
a serialized R object, set \code{using = readRDS} for example.

If \code{using = NULL}, \code{read_civis.civis_script}
will return all JSONValues with name matching \code{regex}.
Otherwise all File run outputs matching \code{regex} will be read into memory
with \code{using}.
Results are always a named list.
If the script has no outputs, an empty list will be returned.
}
\section{Methods (by class)}{
\itemize{
\item \code{read_civis(numeric)}: Return a file as a data frame

\item \code{read_civis(character)}: Return all columns from a table as a data frame.

\item \code{read_civis(sql)}: Return a SQL query as a data frame.

\item \code{read_civis(civis_script)}: Return run outputs of a \code{civis_script} as a named list.

}}
\examples{
\dontrun{
# Read all columns in a single table
df <- read_civis("schema.my_table", database = "my_database")

# Read data from a SQL select statement
query <- sql("SELECT * FROM table JOIN other_table USING id WHERE var1 < 23")
df <- read_civis(query, database = "my_database")

# Read an R object from the files endpoint.
id <- write_civis_file(df)
df <- read_civis(id)

# Read a text file or csv from the files endpoint.
id <- write_civis_file("my_csv.csv")
df <- read_civis(id)

# Read JSONValues from a civis script
vals <- read_civis(civis_script(1234))

# Read File run outputs from a civis script
df <- read_civis(civis_script(1234), regex = '.csv', using = read.csv)
obj <- read_civis(civis_script(1234), regex = '.rds', using = readRDS)

# Gracefully handle when read_civis.sql returns no rows
query <- sql("SELECT * FROM table WHERE 1 = 2")
mean_x <- tryCatch({
  df <- read_civis(query, database = "my_database")
  mean(df$x)
}, empty_result_error = function(e) {
   NA
})
}
}
\seealso{
Other io: 
\code{\link{download_civis}()},
\code{\link{query_civis_file}()},
\code{\link{query_civis}()},
\code{\link{write_civis_file}()},
\code{\link{write_civis}()}
}
\concept{io}
