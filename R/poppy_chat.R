#' Create a chat client for Poppy
#'
#' Thin wrapper around `ellmer::chat_openai()` configured for the Poppy endpoint.
#'
#' @param model Model name passed to `ellmer::chat_openai()`. Defaults to `"Anthropic Claude Sonnet 4.5"`. To see available models, use `poppy_models`.
#' @param api_key API key for Poppy. Defaults to `Sys.getenv("POPPY_API_KEY")`.
#' @param ... Additional arguments forwarded to `ellmer::chat_openai()`.
#'
#' @return An `ellmer` chat client.
#' @examples
#' \dontrun{
#' llm <- poppy_chat()
#' llm$chat("Hi, who are you?")
#' }
#' @seealso [ellmer::chat_openai()] for full argument and functionality details.
#' @importFrom ellmer chat_openai
#' @export
poppy_chat <- function(model = "Anthropic Claude Sonnet 4.5",
                      api_key = Sys.getenv("POPPY_API_KEY"),
                      ...) {
  ellmer::chat_openai(
    model = model,
    base_url = "https://customeruat.sda.state.ca.gov/api/v1",
    api_key = api_key,
    ...
  )
}
