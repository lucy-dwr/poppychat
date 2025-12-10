test_that("poppy_chat passes defaults to ellmer::chat_openai", {
  calls <- list()
  fake_client <- list(client = TRUE)

  testthat::local_mocked_bindings(
    chat_openai = function(...) {
      calls <<- append(calls, list(list(...)))
      fake_client
    },
    .package = "ellmer"
  )

  old <- Sys.getenv("POPPY_API_KEY")
  on.exit(Sys.setenv(POPPY_API_KEY = old), add = TRUE)
  Sys.setenv(POPPY_API_KEY = "secret-key")

  result <- poppy_chat()

  expect_identical(result, fake_client)
  expect_length(calls, 1)
  expect_identical(calls[[1]]$model, "Anthropic Claude Sonnet 4.5")
  expect_identical(calls[[1]]$api_key, "secret-key")
  expect_identical(calls[[1]]$base_url, "https://customeruat.sda.state.ca.gov/api/v1")
})

test_that("poppy_chat forwards parameters and ellipsis", {
  calls <- list()
  fake_client <- list(client = TRUE)

  testthat::local_mocked_bindings(
    chat_openai = function(...) {
      calls <<- append(calls, list(list(...)))
      fake_client
    },
    .package = "ellmer"
  )

  result <- poppy_chat(
    model = "Google Gemini 2.5 Flash",
    api_key = "provided-key",
    temperature = 0.2,
    user = "tester"
  )

  expect_identical(result, fake_client)
  expect_length(calls, 1)
  expect_identical(calls[[1]]$model, "Google Gemini 2.5 Flash")
  expect_identical(calls[[1]]$api_key, "provided-key")
  expect_identical(calls[[1]]$temperature, 0.2)
  expect_identical(calls[[1]]$user, "tester")
  expect_identical(calls[[1]]$base_url, "https://customeruat.sda.state.ca.gov/api/v1")
})
