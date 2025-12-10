# poppychat

This package provides an R code interface to chat with large language
models through Poppy, a service provided by the [California Department
of Technology](https://cdt.ca.gov) in a pilot to a group of State of
California employees. Poppy models are sandboxed for State use.
`poppychat` is intended to facilitate the secure integration of Poppy’s
capabilities into R code, dashboards, and other applications.

State of California employee use of Poppy should adhere to the latest
[GenAI State
Policies](https://cdt.ca.gov/policy/technology-letters/technology-letter-25-01/).

## Installation

You can install the development version of `poppychat` from GitHub with:

    devtools::install_github("lucy-dwr/poppychat")

## Usage

`poppychat` is a thin wrapper for
[`ellmer::chat_openai()`](https://ellmer.tidyverse.org/reference/chat_openai.html),
which provides a general client to chat with large language models using
a supplied base url and API key. To get started, set the `POPPY_API_KEY`
environment variable. See the `poppychat` quickstart vignette for
details.

The main function provided by this package is `poppychat()`, which
creates a chat client configured to connect to Poppy.

    gemini_chat <- poppychat::poppy_chat(model = "Google Gemini 2.5 Flash")

    gemini_chat$chat("What's the best thing about working for the State of California? Be brief!")
    #> Many employees value the opportunity to serve the public and make a
    #> a meaningful difference for Californians, alongside comprehensive benefits
    #> and job stability.

`ellmer` chat clients support a variety of features, including
conversation history, token tracking, system prompts, and tool calling.
For more information on using an `ellmer` chat client, visit the
[`ellmer` package documentation](https://ellmer.tidyverse.org).

## Currently supported models

Poppy offers access to the following models:

- Anthropic Claude Haiku 4.5
- Anthropic Claude Sonnet 4.5
- AWS Nova Micro
- AWS Nova Pro
- Azure gpt-4.1
- Azure gpt-4.1-mini
- Azure gpt-5-mini
- Azure gpt-5.1
- Google Gemini 2.5 Flash
- Google Gemini 2.5 Flash-Lite
