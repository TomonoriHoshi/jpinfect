# Temporary directory for testing
temp_dir <- file.path(tempdir(), "test_jpinfect_get_bullet")
dir.create(temp_dir, showWarnings = FALSE)

test_that("jpinfect_get_bullet handles errors correctly", {
  # Test case 1: Missing year (error expected)
  expect_error(
    jpinfect_get_bullet(year = NULL, week = 1:10, language = "en", dest_dir = temp_dir),
    "Please specify a year."
  )

  # Test case 2: Invalid week range (error expected)
  expect_error(
    jpinfect_get_bullet(year = 2024, week = c(-1, 54), language = "en", dest_dir = temp_dir),
    "Week range should be from 1 to either 52 or 53."
  )

  # Test 3: Invalid language
  expect_error(
    jpinfect_get_bullet(year = 2025, week = 1:5, language = "fr", dest_dir = temp_dir),
    "Invalid language specified. Use 'en' for English or 'jp' for Japanese."
  )

})

test_that("jpinfect_get_bullet downloads files correctly (skip_on_cran)", {
  skip_on_cran()  # Skip this test on CRAN

  # Simulate valid English download
  expect_message(
    jpinfect_get_bullet(year = 2025, week = 1, language = "en", dest_dir = temp_dir, overwrite = TRUE),
    "Downloading data for week 1 from URL:"
  )

  # Verify the file exists
  downloaded_file <- file.path(temp_dir, "2025_01_zensu_en.csv")
  expect_true(file.exists(downloaded_file))

  # Simulate valid Japanese download
  expect_message(
    jpinfect_get_bullet(year = 2025, week = 1, language = "jp", dest_dir = temp_dir, overwrite = TRUE),
    "Downloading data for week 1 from URL:"
  )

  # Verify the Japanese file exists
  downloaded_file_jp <- file.path(temp_dir, "2025_01_zensu_jp.csv")
  expect_true(file.exists(downloaded_file_jp))

})

test_that("jpinfect_get_bullet handles overwriting correctly (skip_on_cran)", {
  skip_on_cran()  # Skip this test on CRAN

  # Simulate an existing file
  existing_file <- file.path(temp_dir, "2025_01_zensu_en.csv")
  writeLines("test content", existing_file) # Create a mock file

  # Test 1: Skip download when overwrite = FALSE
  expect_message(
    jpinfect_get_bullet(year = 2025, week = 1, language = "en", dest_dir = temp_dir, overwrite = FALSE),
    "File already exists:",
    fixed = TRUE
  )

  # Test 2: Overwrite existing file when overwrite = TRUE
  expect_message(
    jpinfect_get_bullet(year = 2025, week = 1, language = "en", dest_dir = temp_dir, overwrite = TRUE),
    "Downloading data for week 1 from URL:",
    fixed = TRUE
  )

})

test_that("jpinfect_get_bullet handles unavailable data gracefully (skip_on_cran)", {
  skip_on_cran()  # Skip this test on CRAN
  # Simulate unavailable data
  expect_message(
    jpinfect_get_bullet(year = 2025, week = 53, language = "en", dest_dir = temp_dir, overwrite = TRUE),
    "JIHS data is not available for week 53 in year 2025."
  )
})

# Clean up after tests
unlink(temp_dir, recursive = TRUE)
