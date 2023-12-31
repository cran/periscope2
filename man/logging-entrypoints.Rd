% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logger.R
\name{logging-entrypoints}
\alias{logging-entrypoints}
\alias{logdebug}
\alias{loginfo}
\alias{logwarn}
\alias{logerror}
\title{Entry points for logging actions}
\usage{
logdebug(msg, ..., logger = "")

loginfo(msg, ..., logger = "")

logwarn(msg, ..., logger = "")

logerror(msg, ..., logger = "")
}
\arguments{
\item{msg}{the textual message to be output, or the format for the \dots
arguments}

\item{...}{if present, msg is interpreted as a format and the \dots values
are passed to it to form the actual message.}

\item{logger}{the name of the logger to which we pass the record}
}
\value{
no return value, prints log contents into R console and app log file
}
\description{
Generate a log record and pass it to the logging system.\cr
}
\details{
A log record gets timestamped and will be independently formatted by each
of the handlers handling it.\cr

Leading and trailing whitespace is stripped from the final message.
}
