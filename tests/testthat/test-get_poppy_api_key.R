restore_poppy_key <- function(value) {
  if (is.na(value)) {
    Sys.unsetenv("POPPY_API_KEY")
  } else {
    Sys.setenv(POPPY_API_KEY = value)
  }
}

test_that("get_poppy_api_key returns the set value", {
  old <- Sys.getenv("POPPY_API_KEY", unset = NA_character_)
  on.exit(restore_poppy_key(old), add = TRUE)

  Sys.setenv(POPPY_API_KEY = "secret_key")

  expect_identical(get_poppy_api_key(), "secret_key")
})

test_that("get_poppy_api_key returns NA when unset", {
  old <- Sys.getenv("POPPY_API_KEY", unset = NA_character_)
  on.exit(restore_poppy_key(old), add = TRUE)

  Sys.unsetenv("POPPY_API_KEY")

  expect_identical(get_poppy_api_key(), NA_character_)
})

test_that("get_poppy_api_key returns empty string when environment variable is empty", {
  old <- Sys.getenv("POPPY_API_KEY", unset = NA_character_)
  on.exit(restore_poppy_key(old), add = TRUE)

  Sys.setenv(POPPY_API_KEY = "")

  expect_identical(get_poppy_api_key(), "")
})
