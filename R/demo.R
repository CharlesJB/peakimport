#' Get the file path to a specific file format demo file.
#'
#' Available format:
#'     * bed
#'     * narrowPeak
#'     * broadPeak
#'
#' @param format The file format to return. Default: "bed"
#'
#' @return The path to the file corresponding to the specified file format.
#'
#' @examples
#' get_demo_file() # Return path to bed file by default
#' get_demo_file(format = "narrowPeak")
#'
#' @export
get_demo_file <- function(format = c("bed", "narrowPeak", "broadPeak")) {
    format <- match.arg(format)
    if (format == "bed") {
        system.file("extdata",
                    "valid.bed",
                    package = "peakimport",
                    mustWork = TRUE)
    } else if (format == "narrowPeak") {
        system.file("extdata",
                    "valid.narrowPeak",
                    package = "peakimport",
                    mustWork = TRUE)
    } else if (format == "broadPeak") {
        system.file("extdata",
                    "valid.broadPeak",
                    package = "peakimport",
                    mustWork = TRUE)
    }
}
