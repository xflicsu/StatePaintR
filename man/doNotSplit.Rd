% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statepaintr.R
\name{doNotSplit}
\alias{doNotSplit}
\title{doNotSplit}
\usage{
doNotSplit(decisionMatrix, functionalCategory)
}
\arguments{
\item{decisionMatrix}{of class decisionMatrix}

\item{functionalCategory}{a character vector indicating intervals described
by the functional category will never be split into smaller intervals}
}
\value{
a decisionMatrix; the abstractionLayer of the decision matrix will be
  altered to indicate that the functional category indicated must not be
  split.
}
\description{
doNotSplit
}
\details{
Some functional categories described in an abstraction layer may
  perform better or more like one expects if they are never split into
  smaller intervals due to being overlapped by other functional categories.
  One may indicate if this is the case with this function
}
\examples{
dm <- get.decision.matrix("5813b67f46e0fb06b493ceb0")
dm <- doNotSplit(decisionMatrix = dm, functionalCategory = "Core")
dm
}
