# Create a chat client for Poppy

Thin wrapper around
[`ellmer::chat_openai_compatible()`](https://ellmer.tidyverse.org/reference/chat_openai_compatible.html)
configured for the Poppy endpoint.

## Usage

``` r
poppy_chat(
  model = "Anthropic Claude Sonnet 4.5",
  credentials = get_poppy_api_key,
  ...
)
```

## Arguments

- model:

  Model name passed to
  [`ellmer::chat_openai_compatible()`](https://ellmer.tidyverse.org/reference/chat_openai_compatible.html).
  Defaults to `"Anthropic Claude Sonnet 4.5"`. To see available models,
  use `poppy_models`.

- credentials:

  API key for Poppy. Defaults to
  [get_poppy_api_key](https://lucy-dwr.github.io/poppychat/reference/get_poppy_api_key.md),
  a zero-argument function that reads the `POPPY_API_KEY` environment
  variable (compatible with
  [`ellmer::chat_openai_compatible()`](https://ellmer.tidyverse.org/reference/chat_openai_compatible.html)
  expectations).

- ...:

  Additional arguments forwarded to
  [`ellmer::chat_openai_compatible()`](https://ellmer.tidyverse.org/reference/chat_openai_compatible.html).

## Value

An `ellmer` chat client.

## See also

[`get_poppy_api_key()`](https://lucy-dwr.github.io/poppychat/reference/get_poppy_api_key.md)
for the default credential source and
[`ellmer::chat_openai_compatible()`](https://ellmer.tidyverse.org/reference/chat_openai_compatible.html)
for full argument and functionality details.

## Examples

``` r
if (FALSE) { # \dontrun{
  llm <- poppy_chat()
  llm$chat("Hi, who are you?")
} # }
```
