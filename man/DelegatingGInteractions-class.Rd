% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClasses.R
\docType{class}
\name{DelegatingGInteractions-class}
\alias{DelegatingGInteractions-class}
\title{Virtual class for delegating GInteractions}
\value{
DelegatingGInteractions virtual class
}
\description{
Uses a delegate `GInteractions` object during
initialization to assign its `GInteractions` slots.
}
\section{Slots}{

\describe{
\item{\code{delegate}}{A `GInteractions` object used to initialize
`GInteractions`-specific slots.}
}}

\seealso{
[InteractionSet::GInteractions]
}
\keyword{internal}
