# Create a chat client for Poppy

Thin wrapper around
[`ellmer::chat_openai()`](https://ellmer.tidyverse.org/reference/chat_openai.html)
configured for the Poppy endpoint.

## Usage

``` r
poppy_chat(
  model = "Anthropic Claude Sonnet 4.5",
  api_key = Sys.getenv("POPPY_API_KEY"),
  ...
)
```

## Arguments

- model:

  Model name passed to
  [`ellmer::chat_openai()`](https://ellmer.tidyverse.org/reference/chat_openai.html).
  Defaults to `"Anthropic Claude Sonnet 4.5"`. To see available models,
  use `poppy_models`.

- api_key:

  API key for Poppy. Defaults to `Sys.getenv("POPPY_API_KEY")`.

- ...:

  Additional arguments forwarded to
  [`ellmer::chat_openai()`](https://ellmer.tidyverse.org/reference/chat_openai.html).

## Value

An `ellmer` chat client.

## See also

[`ellmer::chat_openai()`](https://ellmer.tidyverse.org/reference/chat_openai.html)
for full argument and functionality details.

## Examples

``` r
if (FALSE) { # \dontrun{
llm <- poppy_chat()
llm$chat("Hi, who are you?")
} # }
```
