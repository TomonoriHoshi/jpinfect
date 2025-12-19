test_that("jpinfect_url_bullet behaves as expected", {
  # Test: year is NULL
  expect_error(jpinfect_url_bullet(year = NULL, week = 1:10, language = "en"),
               "Please specify a year.")

  # Test: invalid year range
  expect_error(jpinfect_url_bullet(year = 2023, week = 1:10, language = "en"),
               "This function only works for years after 2023.")

  # Test: invalid week range
  expect_error(jpinfect_url_bullet(year = 2024, week = c(-1, 54), language = "en"),
               "Week range should be from 1 to either 52 or 53.")

  # Test: invalid language
  expect_error(jpinfect_url_bullet(year = 2024, week = 1:10, language = "invalid"),
               "Invalid language specified. Use 'en' for English or 'jp' for Japanese.")

  # Skip tests that require internet connection on CRAN or when offline
  testthat::skip_on_cran()
  testthat::skip_if_offline()

  # Test: valid input for English URLs
  expect_message(
    jpinfect_url_bullet(year = 2024, week = 1:2, language = "en"),
    "All requested weeks have been processed successfully."
  )

  # Test: valid input for Japanese URLs
  expect_message(
    jpinfect_url_bullet(year = 2024, week = 1:2, language = "jp"),
    "All requested weeks have been processed successfully."
  )
})
