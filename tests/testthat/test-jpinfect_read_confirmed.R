# Global setup
temp_dir <- file.path(tempdir(), "test_jpinfect_data")
dir.create(temp_dir, showWarnings = FALSE)
temp_file <- system.file("extdata", "2014_Syu_01_1.xlsx", package = "jpinfect")
temp_data_dir <- system.file("extdata", package = "jpinfect")

# .jpinfect_read_excel Tests
test_that(".jpinfect_read_excel imports Excel file correctly", {
  skip_if_not(file.exists(temp_file), "Test skipped: Unable to download the test Excel file.")
  result <- .jpinfect_read_excel(file_path = temp_file, year = 2014, sheet_range = 3)
  expect_true(is.data.frame(result))
  expect_gt(nrow(result), 0)
  expect_true(all(c("prefecture", "year", "week") %in% colnames(result)))
})

test_that(".jpinfect_read_excel handles errors appropriately", {
  # Unsupported format
  unsupported_file <- file.path(temp_dir, "2014_Syu_01_1.csv")
  file.create(unsupported_file)
  expect_error(.jpinfect_read_excel(file_path = unsupported_file), "Unsupported file format")

  # Missing or invalid paths
  expect_error(.jpinfect_read_excel(), "The 'file_path' argument is missing.")
  expect_error(.jpinfect_read_excel(file_path = NULL), "The 'file_path' is empty.")
  expect_error(.jpinfect_read_excel(file_path = ""), "The 'file_path' is empty.")
})

# .col_rename Tests
test_that(".col_rename processes column names correctly", {
  mock_dataset <- data.frame(
    `Example Ｉ` = c(7, 8, 9),
    `Example （` = c(7, 8, 9),
    `Pandemic influenza (A/H1N1)` = c(10, 11, 12),
    check.names = FALSE
  )
  expect_equal(.col_rename(mock_dataset, rep_each = 1),
               c("Example I", "Example (", "Pandemic influenza (A/H1N1)"))
})

test_that(".col_rename handles repetition and empty datasets", {
  mock_dataset <- data.frame(malaria = c(1, 2, 3), dengue = c(4, 5, 6))
  expect_equal(.col_rename(mock_dataset, rep_each = 2), c("malaria", "malaria", "dengue", "dengue"))

  mock_empty <- data.frame()
  expect_equal(.col_rename(mock_empty, rep_each = 1), character(0))
})

# Completed .jpinfect_read_excel

# Setup for .jpinfect_read_excels
# .jpinfect_read_excels Tests
test_that(".jpinfect_read_excels processes sex data correctly (skip_on_cran)", {
  skip_on_cran()
  result_sex <- .jpinfect_read_excels(type = "sex", directory = temp_data_dir)
  expect_true(is.data.frame(result_sex))
  expect_gt(nrow(result_sex), 0)
  expect_equal(ncol(result_sex), 286)
  expect_true(all(c("year", "week", "prefecture") %in% colnames(result_sex)))
  expect_equal(min(result_sex$year), 1999)
})

test_that(".jpinfect_read_excels processes place data correctly (skip_on_cran)", {
  skip_on_cran()
  result_place <- .jpinfect_read_excels(type = "place", directory = temp_data_dir)
  expect_true(is.data.frame(result_place))
  expect_gt(nrow(result_place), 0)
  expect_equal(ncol(result_place), 352)
  expect_true(all(c("year", "week", "prefecture") %in% colnames(result_place)))
  expect_equal(min(result_place$year), 2014)
})

test_that(".jpinfect_read_excels handles invalid inputs", {
  expect_error(.jpinfect_read_excels(type = "invalid", directory = temp_data_dir), "type must be either \"sex\" or \"place\"")

  empty_dir <- file.path(tempdir(), "empty_test_dir")
  dir.create(empty_dir, showWarnings = FALSE)
  expect_error(.jpinfect_read_excels(type = "sex", directory = empty_dir), "Cannot found dataset")
  unlink(empty_dir, recursive = TRUE)
})

# jpinfect_read_confirmed Tests
test_that("jpinfect_read_confirmed validates arguments", {
  # Case 1: Invalid path
  expect_error(
    jpinfect_read_confirmed(path = "path/to/file.xls"),
    "Invalid path: must be either a file or directory"
  )

  # Case 2: Directory without 'type'
  expect_error(
    jpinfect_read_confirmed(path = temp_dir),
    "The 'type' argument is required when processing a directory and must be specified as either 'sex' or 'place'."
  )

  # Case 3: Invalid 'type'
  expect_error(
    jpinfect_read_confirmed(path = temp_dir, type = "invalid"),
    "Invalid 'type' argument: must be either 'sex' or 'place'."
  )

})


test_that("jpinfect_read_confirmed processes files and directories correctly", {
  # Setup temporary file
  temp_file <- file.path(tempdir(), "jpinfect_test_file.xls")
  file.create(temp_file)

  with_mocked_bindings(
    .jpinfect_read_excel = function(file_path, ...) {
      data.frame(mock = TRUE)
    },
    {
      result <- jpinfect_read_confirmed(path = temp_file, type = "sex")
      expect_true(is.data.frame(result))
      expect_equal(result$mock, TRUE)
    }
  )
  unlink(temp_file)

  with_mocked_bindings(
    .jpinfect_read_excels = function(type, directory, ...) {
      data.frame(mock = TRUE, type = type)
    },
    {
      result <- jpinfect_read_confirmed(path = temp_dir, type = "place")
      expect_true(is.data.frame(result))
      expect_equal(result$type, "place")
    }
  )
})

# Cleanup temporary directory
unlink(temp_dir, recursive = TRUE)
