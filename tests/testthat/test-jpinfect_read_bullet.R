# Create a temporary directory for testing
temp_data_dir <- system.file("extdata", package = "jpinfect")

# Test: Import English data
test_that("jpinfect_read_bullet imports English data correctly", {
  result <- jpinfect_read_bullet(year = 2025, directory = temp_data_dir, language = "en")

  expect_true(is.data.frame(result))
  expect_gt(nrow(result), 0)  # Ensure rows are present
  expect_equal(unique(result$year), c(2025))  # Year should match
})

# Test: Import Japanese data
test_that("jpinfect_read_bullet imports Japanese data correctly", {
  result <- jpinfect_read_bullet(year = 2025, directory = temp_data_dir, language = "jp")

  expect_true(is.data.frame(result))
  expect_gt(nrow(result), 0)  # Ensure rows are present
  expect_equal(unique(result$year), c(2025))  # Year should match
})

# Test: Missing files
test_that("jpinfect_read_bullet throws error when no files found", {
  empty_dir <- file.path(tempdir(), "empty_bullet_test")
  dir.create(empty_dir, showWarnings = FALSE)

  expect_error(
    jpinfect_read_bullet(year = 2025, directory = empty_dir, language = "en"),
    "No files were found in the folder."
  )
})

# Test: Invalid language
test_that("jpinfect_read_bullet throws error for invalid language", {
  expect_error(
    jpinfect_read_bullet(year = 2025, directory = temp_dir, language = "invalid"),
    "Invalid language specified. Use 'en' for English or 'jp'."
  )
})
