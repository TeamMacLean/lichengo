% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{enrich}
\alias{enrich}
\title{run clusterProfiler::enricher on vector of gene IDs}
\usage{
enrich(genes, assembly = NULL, pval = 0.05, ...)
}
\arguments{
\item{genes}{character vector of gene IDs of interest}

\item{assembly}{selected assembly name}
}
\value{
enricher object
}
\description{
run clusterProfiler::enricher on vector of gene IDs
}
