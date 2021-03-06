% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_mofa.R
\name{create_mofa_from_MultiAssayExperiment}
\alias{create_mofa_from_MultiAssayExperiment}
\title{create a MOFA object from a MultiAssayExperiment object}
\usage{
create_mofa_from_MultiAssayExperiment(
  mae,
  groups = NULL,
  save_metadata = FALSE
)
}
\arguments{
\item{mae}{a MultiAssayExperiment object}

\item{groups}{a string specifying column name of the colData to use it as a group variable. 
Alternatively, a character vector with group assignment for every sample.
Default is \code{NULL} (no group structure).}

\item{save_metadata}{logical indicating whether to incorporate the metadata from the MultiAssayExperiment object into the MOFA object}
}
\value{
Returns an untrained \code{\link{MOFA}} object
}
\description{
Method to create a \code{\link{MOFA}} object from a MultiAssayExperiment object
}
