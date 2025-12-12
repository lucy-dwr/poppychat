#' Create a chat client for Poppy
#'
#' Thin wrapper around `ellmer::chat_openai_compatible()` configured for the Poppy endpoint.
#'
#' @param model Model name passed to `ellmer::chat_openai_compatible()`. Defaults to `"Anthropic Claude Sonnet 4.5"`. To see available models, use `poppy_models`.
#' @param credentials API key for Poppy. Defaults to [get_poppy_api_key], a
#'   zero-argument function that reads the `POPPY_API_KEY` environment variable
#'   (compatible with `ellmer::chat_openai_compatible()` expectations).
#' @param ... Additional arguments forwarded to `ellmer::chat_openai_compatible()`.
#'
#' @return An `ellmer` chat client.
#' @examples
#' \dontrun{
#'   llm <- poppy_chat()
#'   llm$chat("Hi, who are you?")
#' }
#' @seealso [get_poppy_api_key()] for the default credential source and
#'   [ellmer::chat_openai_compatible()] for full argument and functionality
#'   details.
#' @importFrom ellmer chat_openai_compatible
#' @export
poppy_chat <- function(model = "Anthropic Claude Sonnet 4.5",
                       credentials = get_poppy_api_key,
                       ...) {
  ellmer::chat_openai_compatible(
    model = model,
    base_url = "https://customeruat.sda.state.ca.gov/api/v1",
    credentials = credentials,
    ...
  )
}
