% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/methods-MatrixSelection.R
\name{selectRadius}
\alias{selectRadius}
\alias{selectCenterPixel}
\alias{selectSubmatrix}
\alias{selectCoordinates}
\alias{selectBlock}
\alias{selectTopLeft}
\alias{selectTopRight}
\alias{selectBottomRight}
\alias{selectBottomLeft}
\alias{selectCorners}
\alias{selectRows}
\alias{selectCols}
\alias{selectInner}
\alias{selectOuter}
\alias{show,MatrixSelection-method}
\alias{selectRadius,numeric-method}
\alias{selectCenterPixel,numeric-method}
\alias{selectSubmatrix,matrix-method}
\alias{selectCoordinates,numeric-method}
\alias{selectBlock,numeric-method}
\alias{selectTopLeft,numeric-method}
\alias{selectTopRight,numeric-method}
\alias{selectBottomRight,numeric-method}
\alias{selectBottomLeft,numeric-method}
\alias{selectCorners,numeric-method}
\alias{selectRows,numeric-method}
\alias{selectCols,numeric-method}
\alias{selectInner,numeric-method}
\alias{selectOuter,numeric-method}
\title{Visualize selection for a MatrixSelection object}
\usage{
selectRadius(x, buffer, invert = FALSE)

selectCenterPixel(mhDist, buffer, invert = FALSE)

selectSubmatrix(m, invert = FALSE)

selectCoordinates(rowInd, colInd, buffer, invert = FALSE)

selectBlock(rowInd, colInd, buffer, invert = FALSE)

selectTopLeft(n, buffer, inset = 0, invert = FALSE)

selectTopRight(n, buffer, inset = 0, invert = FALSE)

selectBottomRight(n, buffer, inset = 0, invert = FALSE)

selectBottomLeft(n, buffer, inset = 0, invert = FALSE)

selectCorners(n, buffer, inset = 0, invert = FALSE)

selectRows(rows, buffer, invert = FALSE)

selectCols(cols, buffer, invert = FALSE)

selectInner(n, buffer, invert = FALSE)

selectOuter(n, buffer, invert = FALSE)

\S4method{show}{MatrixSelection}(object)

\S4method{selectRadius}{numeric}(x, buffer, invert = FALSE)

\S4method{selectCenterPixel}{numeric}(mhDist, buffer, invert = FALSE)

\S4method{selectSubmatrix}{matrix}(m, invert = FALSE)

\S4method{selectCoordinates}{numeric}(rowInd, colInd, buffer, invert = FALSE)

\S4method{selectBlock}{numeric}(rowInd, colInd, buffer, invert = FALSE)

\S4method{selectTopLeft}{numeric}(n, buffer, inset = 0, invert = FALSE)

\S4method{selectTopRight}{numeric}(n, buffer, inset = 0, invert = FALSE)

\S4method{selectBottomRight}{numeric}(n, buffer, inset = 0, invert = FALSE)

\S4method{selectBottomLeft}{numeric}(n, buffer, inset = 0, invert = FALSE)

\S4method{selectCorners}{numeric}(n, buffer, inset = 0, invert = FALSE)

\S4method{selectRows}{numeric}(rows, buffer, invert = FALSE)

\S4method{selectCols}{numeric}(cols, buffer, invert = FALSE)

\S4method{selectInner}{numeric}(n, buffer, invert = FALSE)

\S4method{selectOuter}{numeric}(n, buffer, invert = FALSE)
}
\arguments{
\item{x}{Integer vector of manhattan distances
to select.}

\item{buffer}{Integer describing the number of pixels
surrounding the central pixel.}

\item{invert}{Boolean indicating whether to invert
the selection.}

\item{mhDist}{Integer vector of manhattan distances
to select along with center pixel.}

\item{m}{matrix with 1's indicating selected positions and
0's indicated unselected positions.}

\item{rowInd}{Integer describing the row indices.}

\item{colInd}{Integer describing the column indices.}

\item{n}{Integer describing the number of outer pixels
to select. Must be length of one.}

\item{inset}{Integer describing the number of pixels to
inset the selection from the outer edge of the matrix.
Default of 0 uses no inset.}

\item{rows}{Integer describing which rows to select.}

\item{cols}{Integer describing which cols to select.}

\item{object}{A MatrixSelection object.}
}
\value{
A text-based visualization of the select matrix
 indices.

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).

Numeric vector of matrix indices (byRow).
}
\description{
Note: that buffer must be the same
as the selection functions to work appropriately

For `selectCoordinates`, `rowInd` and `colInd` are paired
such that the selected position in the matrix is
`c(rowInd[1:i], colInd[1:j])` for `i` rows and `j` columns.
}
\examples{
res <- selectCenterPixel(0, 3)
show(res)
selectRadius(x=c(2,3,4), buffer=5, invert=FALSE)
selectCenterPixel(0, 5)
selectSubmatrix(m = matrix(rep(c(1,0,1), 3), nrow=3, ncol=3))
selectCoordinates(rowInd=1:3, colInd=1:3, buffer=5)
selectBlock(rowInd=1:3, colInd=1:3, buffer=5)
selectTopLeft(n=3, buffer=5, inset=1, invert=FALSE)
selectTopRight(n=3, buffer=5, inset=1, invert=FALSE)
selectBottomRight(n=3, buffer=5, inset=1, invert=FALSE)
selectBottomLeft(n=3, buffer=5, inset=1, invert=FALSE)
selectCorners(n=3, buffer=5, inset=1, invert=FALSE)
selectRows(rows=1:3, buffer=5, invert=FALSE)
selectCols(cols=1:3, buffer=5, invert=FALSE)
selectInner(n=1, buffer=5, invert=FALSE)
selectOuter(n=1, buffer=5, invert=FALSE)
}
