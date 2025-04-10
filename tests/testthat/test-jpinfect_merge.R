test_that("jpinfect_merge merges sex_prefecture and place_prefecture correctly", {
  # Merge sex and place datasets
  result <- jpinfect_merge(sex_prefecture, place_prefecture)

  # Test if merged dataset contains expected number of columns
  expect_equal(ncol(result), (sum(ncol(sex_prefecture) + ncol(place_prefecture)) - 3))

  # Test row count consistency
  expect_equal(nrow(result), nrow(sex_prefecture)) # Number of rows should match the largest dataset

  # Test that prefecture, year, and week columns are preserved
  expect_true("prefecture" %in% colnames(result))
  expect_true("year" %in% colnames(result))
  expect_true("week" %in% colnames(result))
})

test_that("jpinfect_merge merges all three datasets correctly", {
  # Merge all three datasets
  result <- jpinfect_merge(sex_prefecture, place_prefecture, bullet)

  # Test that prefecture, year, and week columns are preserved
  expect_true("prefecture" %in% colnames(result))
  expect_true("year" %in% colnames(result))
  expect_true("week" %in% colnames(result))

  # Test row count
  expect_equal(nrow(result), nrow(sex_prefecture) + nrow(bullet))
})

test_that(".ncol_check correctly classifies datasets", {
  # Test classification of sex_prefecture
  expect_equal(.ncol_check(sex_prefecture), "sex")

  # Test classification of place_prefecture
  expect_equal(.ncol_check(place_prefecture), "place")

  # Test classification of bullet
  expect_equal(.ncol_check(bullet), "bullet")
})

test_that(".col_join_rename renames columns correctly for each dataset type", {
  # Set comments
  comment(sex_prefecture) <- "sex"
  comment(place_prefecture) <- "place"
  comment(bullet) <- "bullet"

  # Test renaming for sex dataset
  renamed_sex <- .col_join_rename(sex_prefecture)
  expect_true(renamed_sex %>% str_detect("sex total") %>% any())

  # Test renaming for place dataset
  renamed_place <- .col_join_rename(place_prefecture)
  expect_true(renamed_place %>% str_detect("Unknown place") %>% any())
  expect_true(renamed_place %>% str_detect("Other places") %>% any())

  # Test renaming for bullet dataset
  renamed_bullet <- .col_join_rename(bullet)
  expect_true(renamed_bullet %>% str_detect("total") %>% any())
})
