% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mefisto.R
\name{set_covariates}
\alias{set_covariates}
\title{Add covariates to a MOFA model}
\usage{
set_covariates(object, covariates)
}
\arguments{
\item{object}{an untrained \code{\link{MOFA}}}

\item{covariates}{Sample-covariates to be passed to the model.
This can be either:
\itemize{
  \item{a character, specifying columns already present in the samples_metadata of the object}
  \item{a data.frame with columns "sample", "covariate", "value". Sample names need to match those present in the data}
  \item{a matrix with smaples in columns and covariate(s) in row(s)}
 }
Note that the covariate should be numeric and continuous.}
}
\value{
Returns an untrained \code{\link{MOFA}} with covariates filled in the corresponding slots
}
\description{
Function to add continuous covariate(s) to a \code{\link{MOFA}} object for smooth training (MEFISTO)
}
\details{
To activate the functional MEFISTO framework, specify smooth_options when preparing the training using \code{prepare_mofa}
}
\examples{
#' # Simulate data
dd <- make_example_data(sample_cov = seq(0,1,length.out = 100), n_samples = 100, n_factors = 4)

# Create MOFA object
sm <- create_mofa(data = dd$data)

# Add a covariate
sm <- set_covariates(sm, covariates = dd$sample_cov)
sm
}
