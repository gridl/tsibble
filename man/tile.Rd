% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tile.R
\name{tile}
\alias{tile}
\alias{tile_dfr}
\alias{tile_dfc}
\title{Tiling window calculation}
\usage{
tile(.x, .f, ..., .size = 1)

tile_dfr(.x, .f, ..., .size = 1, .id = NULL)

tile_dfc(.x, .f, ..., .size = 1)
}
\arguments{
\item{.x}{An object to slide over.}

\item{.f}{A function, formula, or atomic vector.

If a \strong{function}, it is used as is.

If a \strong{formula}, e.g. \code{~ .x + 2}, it is converted to a function. There
are three ways to refer to the arguments:
\itemize{
\item For a single argument function, use \code{.}
\item For a two argument function, use \code{.x} and \code{.y}
\item For more arguments, use \code{..1}, \code{..2}, \code{..3} etc
}

This syntax allows you to create very compact anonymous functions.

If \strong{character vector}, \strong{numeric vector}, or \strong{list}, it
is converted to an extractor function. Character vectors index by name
and numeric vectors index by position; use a list to index by position
and name at different levels. Within a list, wrap strings in \code{\link[=get-attr]{get-attr()}}
to extract named attributes. If a component is not present, the value of
\code{.default} will be returned.}

\item{...}{Additional arguments passed on to \code{.f}.}

\item{.size}{An integer for window size. If positive, moving forward from left
to right; if negative, moving backward (from right to left).}

\item{.id}{If not \code{NULL} a variable with this name will be created
giving either the name or the index of the data frame.}
}
\description{
Tiling window without overlapping observations:
\itemize{
\item \code{tile()} always returns a list.
\item \code{tile_lgl()}, \code{tile_int()}, \code{tile_dbl()}, \code{tile_chr()} use the same
arguments as \code{tile()}, but return vectors of the corresponding type.
\item \code{tile_dfr()} \code{tile_dfc()} return data frames using row-binding & column-binding.
}
}
\examples{
x <- 1:5
lst <- list(x = x, y = 6:10, z = 11:15)
tile_dbl(x, mean, .size = 2)
tile_lgl(x, ~ mean(.) > 2, .size = 2)
tile(lst, ~ ., .size = 2)
}
\seealso{
\itemize{
\item \link{tile2}, \link{ptile}
\item \link{slide} for sliding window with overlapping observations
\item \link{stretch} for expanding more observations
}
}
\alias{tile_lgl}
\alias{tile_chr}
\alias{tile_dbl}
\alias{tile_int}
