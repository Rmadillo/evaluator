% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encode.R
\name{derive_controls}
\alias{derive_controls}
\title{Derive control difficulty parameters for a given qualitative scenario}
\usage{
derive_controls(capability_ids, capabilities, mappings)
}
\arguments{
\item{capability_ids}{Comma-delimited list of capabilities in scope for a scenario.}

\item{capabilities}{Dataframe of master list of all qualitative capabilities.}

\item{mappings}{Qualitative mappings dataframe.}
}
\value{
A dataframe of quantitative estimate parameters for the capabilities
applicable to a given scenario.
}
\description{
Given a comma-separated list of control IDs in a scenario, identify
the qualitative rankings associated with each scenario, convert to
their quantitative parameters, and return a dataframe of the set of
parameters.
}
\examples{
data(capabilities)
capability_ids <- c("1, 3")
mappings <- data.frame(type = "diff", label = "1 - Immature", l = 0, ml = 2, h = 10,
                       conf = 3, stringsAsFactors = FALSE)
derive_controls(capability_ids, capabilities, mappings)
}
