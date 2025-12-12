#' Retrieve the Poppy API key
#'
#' Looks up `POPPY_API_KEY` in the environment for use with `poppy_chat()`.
#'
#' @details Intended to be passed as the `credentials` argument to
#'   `poppy_chat()`, following the `ellmer::chat_openai_compatible()`
#'   convention of accepting a function that returns a key.
#'
#' @return The value of `POPPY_API_KEY` or `NA_character_` when the variable is
#'   not set.
#'
#' @examples
#' Sys.setenv(POPPY_API_KEY = "abc123")
#' get_poppy_api_key()
#'
#' @export
get_poppy_api_key <- function() {
  Sys.getenv("POPPY_API_KEY", unset = NA_character_)
}
