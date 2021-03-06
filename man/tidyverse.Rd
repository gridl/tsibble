% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dplyr-join.R, R/dplyr-verbs.R, R/tidyr-verbs.R
\name{left_join.tbl_ts}
\alias{left_join.tbl_ts}
\alias{right_join.tbl_ts}
\alias{inner_join.tbl_ts}
\alias{full_join.tbl_ts}
\alias{semi_join.tbl_ts}
\alias{anti_join.tbl_ts}
\alias{tidyverse}
\alias{arrange.tbl_ts}
\alias{arrange.grouped_ts}
\alias{filter.tbl_ts}
\alias{slice.tbl_ts}
\alias{select.tbl_ts}
\alias{rename.tbl_ts}
\alias{mutate.tbl_ts}
\alias{transmute.tbl_ts}
\alias{summarise.tbl_ts}
\alias{summarize.tbl_ts}
\alias{group_by.tbl_ts}
\alias{ungroup.grouped_ts}
\alias{gather.tbl_ts}
\alias{spread.tbl_ts}
\alias{nest.tbl_ts}
\alias{unnest.lst_ts}
\title{Tidyverse methods for tsibble}
\usage{
\method{left_join}{tbl_ts}(x, y, by = NULL, copy = FALSE,
  suffix = c(".x", ".y"), ...)

\method{right_join}{tbl_ts}(x, y, by = NULL, copy = FALSE,
  suffix = c(".x", ".y"), ...)

\method{inner_join}{tbl_ts}(x, y, by = NULL, copy = FALSE,
  suffix = c(".x", ".y"), ...)

\method{full_join}{tbl_ts}(x, y, by = NULL, copy = FALSE,
  suffix = c(".x", ".y"), ...)

\method{semi_join}{tbl_ts}(x, y, by = NULL, copy = FALSE, ...)

\method{anti_join}{tbl_ts}(x, y, by = NULL, copy = FALSE, ...)

\method{arrange}{tbl_ts}(.data, ...)

\method{arrange}{grouped_ts}(.data, ..., .by_group = FALSE)

\method{filter}{tbl_ts}(.data, ...)

\method{slice}{tbl_ts}(.data, ...)

\method{select}{tbl_ts}(.data, ..., .drop = FALSE)

\method{rename}{tbl_ts}(.data, ...)

\method{mutate}{tbl_ts}(.data, ..., .drop = FALSE)

\method{transmute}{tbl_ts}(.data, ..., .drop = FALSE)

\method{summarise}{tbl_ts}(.data, ..., .drop = FALSE)

\method{summarize}{tbl_ts}(.data, ..., .drop = FALSE)

\method{group_by}{tbl_ts}(.data, ..., add = FALSE)

\method{ungroup}{grouped_ts}(x, ...)

\method{gather}{tbl_ts}(data, key = "key", value = "value", ...,
  na.rm = FALSE, convert = FALSE, factor_key = FALSE)

\method{spread}{tbl_ts}(data, key, value, fill = NA, convert = FALSE,
  drop = TRUE, sep = NULL)

\method{nest}{tbl_ts}(data, ..., .key = "data")

\method{unnest}{lst_ts}(data, ..., key = id(), .drop = NA,
  .id = NULL, .sep = NULL, .preserve = NULL)
}
\arguments{
\item{x}{tbls to join}

\item{y}{tbls to join}

\item{by}{a character vector of variables to join by.  If \code{NULL}, the
default, \code{*_join()} will do a natural join, using all variables with
common names across the two tables. A message lists the variables so
that you can check they're right (to suppress the message, simply
explicitly list the variables that you want to join).

To join by different variables on x and y use a named vector.
For example, \code{by = c("a" = "b")} will match \code{x.a} to
\code{y.b}.}

\item{copy}{If \code{x} and \code{y} are not from the same data source,
and \code{copy} is \code{TRUE}, then \code{y} will be copied into the
same src as \code{x}.  This allows you to join tables across srcs, but
it is a potentially expensive operation so you must opt into it.}

\item{suffix}{If there are non-joined duplicate variables in \code{x} and
\code{y}, these suffixes will be added to the output to disambiguate them.
Should be a character vector of length 2.}

\item{...}{same arguments accepted as its dplyr generic.}

\item{.data}{A \code{tbl_ts}.}

\item{.by_group}{If \code{TRUE}, will sort first by grouping variable. Applies to
grouped data frames only.}

\item{.drop}{\code{FALSE} returns a tsibble object as the input. \code{TRUE} drops a
tsibble and returns a tibble.}

\item{add}{When \code{add = FALSE}, the default, \code{group_by()} will
override existing groups. To add to the existing groups, use
\code{add = TRUE}.}

\item{data}{A data frame.}

\item{key}{Unquoted variables to create the key (via \link{id}) after unnesting.}

\item{value}{Names of new key and value columns, as strings or
symbols.

This argument is passed by expression and supports
\link[rlang:quasiquotation]{quasiquotation} (you can unquote strings
and symbols). The name is captured from the expression with
\code{\link[rlang:quo_name]{rlang::quo_name()}} (note that this kind of interface where
symbols do not represent actual objects is now discouraged in the
tidyverse; we support it here for backward compatibility).}

\item{na.rm}{If \code{TRUE}, will remove rows from output where the
value column in \code{NA}.}

\item{convert}{If \code{TRUE} will automatically run
\code{\link[=type.convert]{type.convert()}} on the key column. This is useful if the column
names are actually numeric, integer, or logical.}

\item{factor_key}{If \code{FALSE}, the default, the key values will be
stored as a character vector. If \code{TRUE}, will be stored as a factor,
which preserves the original ordering of the columns.}

\item{fill}{If set, missing values will be replaced with this value. Note
that there are two types of missingness in the input: explicit missing
values (i.e. \code{NA}), and implicit missings, rows that simply aren't
present. Both types of missing value will be replaced by \code{fill}.}

\item{drop}{If \code{FALSE}, will keep factor levels that don't appear in the
data, filling in missing combinations with \code{fill}.}

\item{sep}{If \code{NULL}, the column names will be taken from the values of
\code{key} variable. If non-\code{NULL}, the column names will be given
by "<key_name><sep><key_value>".}

\item{.key}{The name of the new column, as a string or symbol.

This argument is passed by expression and supports
\link[rlang:quasiquotation]{quasiquotation} (you can unquote strings
and symbols). The name is captured from the expression with
\code{\link[rlang:quo_name]{rlang::quo_name()}} (note that this kind of interface where
symbols do not represent actual objects is now discouraged in the
tidyverse; we support it here for backward compatibility).}

\item{.id}{Data frame identifier - if supplied, will create a new column
with name \code{.id}, giving a unique identifier. This is most useful if
the list column is named.}

\item{.sep}{If non-\code{NULL}, the names of unnested data frame columns
will combine the name of the original list-col with the names from
nested data frame, separated by \code{.sep}.}

\item{.preserve}{Optionally, list-columns to preserve in the output. These
will be duplicated in the same way as atomic vectors. This has
\link[dplyr:select]{dplyr::select} semantics so you can preserve multiple variables with
\code{.preserve = c(x, y)} or \code{.preserve = starts_with("list")}.}
}
\description{
\itemize{
\item \code{arrange()}: if not arranging key and index in past-to-future order, a warning is
likely to be issued.
\item \code{slice()}: if row numbers are not in ascending order, a warning is likely to
be issued.
\item \code{select()}: keeps the variables you mention as well as the index.
\item \code{transmute()}: keeps the variable you operate on, as well as the index and key.
\item The column-wise verbs, including \code{select()}, \code{transmute()}, \code{summarise()},
\code{mutate()} & \code{transmute()}, have an additional argument of \code{.drop = FALSE} for
tsibble. The index variable cannot be dropped for a tsibble. If any key variable
is changed, it will validate whether it's a tsibble internally. Turning
\code{.drop = TRUE} converts to a tibble first and then do the operations.
}
}
\details{
\itemize{
\item \code{summarise()} will not collapse on the index variable.
}
}
\examples{
# Sum over sensors ----
pedestrian \%>\%
  summarise(Total = sum(Count))
# Sum over sensors by days ----
pedestrian \%>\%
  index_by(Date) \%>\% 
  summarise(Total = sum(Count))
## .drop = TRUE ----
pedestrian \%>\%
  summarise(Total = sum(Count), .drop = TRUE)
tourism \%>\%
  group_by(Region, State) \%>\%
  summarise(geo_trips = sum(Trips))
# example from tidyr
stocks <- tsibble(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks \%>\% gather(stock, price, -time)
# example from tidyr
stocks <- tsibble(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocksm <- stocks \%>\% gather(stock, price, -time)
stocksm \%>\% spread(stock, price)
pedestrian \%>\% 
  nest(-Sensor)
pedestrian \%>\% 
  group_by(Sensor) \%>\% 
  nest()
nested_ped <- pedestrian \%>\% 
  nest(-Sensor)
nested_ped \%>\% 
  unnest(key = id(Sensor))
nested_tourism <- tourism \%>\% 
  nest(-Region, -State)
nested_tourism \%>\% 
  unnest(key = id(Region | State))
}
