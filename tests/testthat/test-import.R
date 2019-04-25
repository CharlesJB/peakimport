context("test-import")

file_exist_invalid_extension <- system.file("extdata",
											"invalid_format.bdg",
											package = "peakanno",
											mustWork = TRUE)

valid_narrow_peak <- get_demo_file("narrowPeak")
valid_broad_peak <- get_demo_file("broadPeak")
valid_bed <- get_demo_file("bed")

test_that("import params are valid", {
    expect_error(import_peaks(1))
    expect_error(import_peaks(""))
    expect_error(import_peaks("invalid_filename"))
    expect_error(import_peaks(c(valid_bed, valid_narrowPeak)))
    expect_error(import_peaks(file_exist_invalid_extension))
})

test_that("import narrowPeak works", {
    res <- import_peaks(valid_narrow_peak)
	expect_is(res, "GRanges")
	expected_cols <- c("name", "score", names(extraCols_narrowPeak))
	expect_equal(colnames(mcols(res)), expected_cols)
})

test_that("import broadPeak works", {
    res <- import_peaks(valid_broad_peak)
	expect_is(res, "GRanges")
	expected_cols <- c("name", "score", names(extraCols_broadPeak))
	expect_equal(colnames(mcols(res)), expected_cols)
})

test_that("import bed works", {
    res <- import_peaks(valid_bed)
	expect_is(res, "GRanges")
	expected_cols <- c("name", "score")
	expect_equal(colnames(mcols(res)), expected_cols)
})
