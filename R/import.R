#' Import peaks
#'
#' Import narrowPeak or broadPeak files
#'
#' @param filename A vector with the path of the file to import.
#'
#' @return A list of GRanges.
#'
#' @examples
#' filename <- get_demo_file("narrowPeak")
#' gr <- import_peaks(filename)
#'
#' @importFrom tools file_ext 
#' @importFrom rtracklayer import 
#'
#' @export
import_peaks <- function(filename) {
	stopifnot(length(filename) == 1)
	stopifnot(file.exists(filename))
	accepted_extensions <- c("bed", "narrowPeak", "broadPeak")
	stopifnot(tolower(tools::file_ext(filename)) %in% tolower(accepted_extensions))

	current_extension <- tools::file_ext(filename)
	if (current_extension == "bed") {
		rtracklayer::import(filename)
	} else if (current_extension == "narrowPeak") {
		rtracklayer::import(filename,
							format = "BED",
							extraCols = extraCols_narrowPeak)
	} else if (current_extension == "broadPeak") {
		rtracklayer::import(filename,
							format = "BED",
							extraCols = extraCols_broadPeak)
	}
}
