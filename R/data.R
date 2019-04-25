#' narrowPeak extraCols
#'
#' The extraCols values to import narrowPeak files with rtracklayer.
#'
#' @format A named character vector with 4 values:
#' \describe{
#'   \item{signalValue}{"numeric"}
#'   \item{pValue}{"numeric"}
#'   \item{qValue}{"numeric"}
#'   \item{peak}{"integer"}
#' }
#'
#' @source \url{https://charlesjb.github.io/How_to_import_narrowPeak/}
"extraCols_narrowPeak"

#' broadPeak extraCols
#'
#' The extraCols value to import broadPeak files with rtracklayer.
#'
#' @format A named character vector with 3 values:
#' \describe{
#'   \item{signalValue}{"numeric"}
#'   \item{pValue}{"numeric"}
#'   \item{qValue}{"numeric"}
#' }
#'
#' @source \url{https://charlesjb.github.io/How_to_import_narrowPeak/}
"extraCols_broadPeak"
