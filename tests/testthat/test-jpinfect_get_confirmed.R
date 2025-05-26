# initial setup
temp_dir <- file.path(tempdir(), "test_jpinfect_data")
dir.create(temp_dir, showWarnings = FALSE)

test_that("jpinfect_get_confirmed works as expected", {
  # Test case 1: Valid year within range
  result <- jpinfect_get_confirmed(years = 1999, dest_dir = temp_dir)
  expect_true(file.exists(result[1]))
})

test_that("jpinfect_get_confirmed works as expected (skip_on_cran)", {
  skip_on_cran()

  # Test case 2: Overwriting existing file
  expect_message(
    jpinfect_get_confirmed(years = 1999, dest_dir = temp_dir, overwrite = TRUE),
    "Downloading: "
  )

  # Test case 3: Multiple valid years
  result <- jpinfect_get_confirmed(years = c(2014, 2017), dest_dir = temp_dir)
  expect_length(result, 2)
  expect_true(all(file.exists(result)))

  # Test case 4: Default behaviour with no specified year
  result <- jpinfect_get_confirmed(dest_dir = temp_dir)
  expect_true(file.exists(result[1]))
})

test_that("jpinfect_get_confirmed behaves correctly with invalid years", {
  # Test case: Invalid year warning
  expect_warning(
    result <- jpinfect_get_confirmed(years = c(1990, 1999), dest_dir = temp_dir),
    "The following years are outside the available range \\(1999-2023\\): 1990"
  )

  # Verify result
  expect_type(result, "character")
  expect_true(file.exists(result[1]))
  expect_match(result[1], "1999_Syu_11.xls")

  # Verify skipped warning
  expect_warning(
    jpinfect_get_confirmed(years = c(1990, 1999), dest_dir = temp_dir),
    "These years will be skipped."
  )
})

# delete temp directory
# unlink(temp_dir, recursive = TRUE)
