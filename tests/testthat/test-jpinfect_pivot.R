test_that("jpinfect_pivot pivots place_prefecture to long format when columns are > 5", {
  # Test pivoting the place_prefecture dataset to long format
  result <- jpinfect_pivot(place_prefecture)

  # Verify the presence of 'disease' and 'cases' columns in the long format
  expect_true("disease" %in% colnames(result))
  expect_true("cases" %in% colnames(result))

  # Check the number of rows: total_diseases x rows in the original dataset
  total_diseases <- ncol(place_prefecture) - 4
  expected_rows <- total_diseases * nrow(place_prefecture)
  expect_equal(nrow(result), expected_rows)
})

test_that("jpinfect_pivot pivots bullet to long format", {
  # Test pivoting the bullet dataset to long format
  result <- jpinfect_pivot(bullet)

  # Verify the presence of 'disease' and 'cases' columns in the long format
  expect_true("disease" %in% colnames(result))
  expect_true("cases" %in% colnames(result))

  # Check the number of rows: total_diseases x rows in the original dataset
  total_diseases <- ncol(bullet) - 4
  expected_rows <- total_diseases * nrow(bullet)
  expect_equal(nrow(result), expected_rows)
})

test_that("jpinfect_pivot handles missing required columns gracefully", {
  # Test error handling when 'prefecture' column is missing
  dataset_missing_col <- place_prefecture %>% select(-prefecture)

  # Verify that the function throws an appropriate error message
  expect_error(
    jpinfect_pivot(dataset_missing_col),
    "Error: The following required columns are missing from the dataset: prefecture"
  )
})
