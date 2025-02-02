% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MainFun.R
\name{DataInfo.link}
\alias{DataInfo.link}
\title{Exhibit basic data information}
\usage{
DataInfo.link(
  data,
  diversity = "TD",
  row.tree = NULL,
  col.tree = NULL,
  row.distM = NULL,
  col.distM = NULL
)
}
\arguments{
\item{data}{a \code{list} of \code{data.frames}, each \code{data.frames} represents col.species-by-row.species abundance matrix.}

\item{diversity}{selection of diversity type: \code{'TD'} = 'Taxonomic diversity', \code{'PD'} = 'Phylogenetic diversity', and \code{'FD'} = 'Functional diversity'.}

\item{row.tree}{(required only when \code{diversity = "PD"}), a phylogenetic tree of row assemblage in the pooled network row assemblage.}

\item{col.tree}{(required only when \code{diversity = "PD"}), a phylogenetic tree of column assemblage in the pooled network column assemblage.}

\item{row.distM}{(required only when \code{diversity = "FD"}), a species pairwise distance matrix for all species of row assemblage in the pooled network row assemblage.}

\item{col.distM}{(required only when \code{diversity = "FD"}), a species pairwise distance matrix for all species of column assemblage in the pooled network column assemblage.}
}
\value{
a data.frame of basic data information incliuding sample size, observed species richness, sample coverage estimate, and the first ten abundance frequency counts.
}
\description{
\code{DataInfo.link}: exhibits basic data information
}
\examples{
#' ## Taxonomic diversity
data(beetles)
DataInfo.link(data = beetles, diversity = 'TD')


## Phylogenetic diversity
data(beetles)
data(beetles_col_tree)
DataInfo.link(data = beetles, diversity = 'PD', col.tree = beetles_col_tree)


## Functional diversity
data(beetles)
data(beetles_col_distM)
DataInfo.link(data = beetles, diversity = 'FD', col.distM = beetles_col_distM)
}
