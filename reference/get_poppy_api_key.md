# Retrieve the Poppy API key

Looks up `POPPY_API_KEY` in the environment for use with
[`poppy_chat()`](https://lucy-dwr.github.io/poppychat/reference/poppy_chat.md).

## Usage

``` r
get_poppy_api_key()
```

## Value

The value of `POPPY_API_KEY` or `NA_character_` when the variable is not
set or set to an empty string.

## Details

Intended to be passed as the `credentials` argument to
[`poppy_chat()`](https://lucy-dwr.github.io/poppychat/reference/poppy_chat.md),
following the
[`ellmer::chat_openai_compatible()`](https://ellmer.tidyverse.org/reference/chat_openai_compatible.html)
convention of accepting a function that returns a key.

## Examples

``` r
Sys.setenv(POPPY_API_KEY = "abc123")
get_poppy_api_key()
#> [1] "abc123"
```
