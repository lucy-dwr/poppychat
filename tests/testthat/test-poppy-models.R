test_that("poppy_models has expected structure", {
  expected_names <- c(
    "model_name",
    "provider",
    "description",
    "release_date",
    "input_token_limit",
    "output_token_limit",
    "max_token_limit",
    "input_data_types",
    "output_data_types",
    "input_cost_1m",
    "output_cost_1m"
  )

  expect_s3_class(poppy_models, "tbl_df")
  expect_equal(nrow(poppy_models), 10)
  expect_equal(ncol(poppy_models), 11)
  expect_identical(names(poppy_models), expected_names)
})

test_that("poppy_models columns are populated and typed", {
  expect_false(any(is.na(poppy_models$model_name)))
  expect_false(any(is.na(poppy_models$provider)))
  expect_true(all(nzchar(poppy_models$model_name)))
  expect_true(all(nzchar(poppy_models$provider)))

  expect_true(is.character(poppy_models$description))
  expect_true(is.character(poppy_models$release_date))
  expect_true(is.character(poppy_models$input_data_types))
  expect_true(is.character(poppy_models$output_data_types))

  expect_true(is.numeric(poppy_models$input_token_limit))
  expect_true(is.numeric(poppy_models$output_token_limit))
  expect_true(is.numeric(poppy_models$max_token_limit))
  expect_true(is.numeric(poppy_models$input_cost_1m))
  expect_true(is.numeric(poppy_models$output_cost_1m))

  expect_true(all(poppy_models$input_cost_1m >= 0, na.rm = TRUE))
  expect_true(all(poppy_models$output_cost_1m >= 0, na.rm = TRUE))

  release_dates <- na.omit(poppy_models$release_date)
  expect_true(all(grepl("^\\d{4}-\\d{2}-\\d{2}$", release_dates)))
})
