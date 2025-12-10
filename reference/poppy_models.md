# Poppy model catalog

Tibble of large language models available through the Poppy endpoint,
with token limits, supported modalities, and per-million-token pricing.

## Usage

``` r
poppy_models
```

## Format

A tibble with 10 rows and 11 columns:

- model_name:

  Model identifier expected by the Poppy API, to be used as the `model`
  argument in
  [`poppy_chat()`](https://lucy-dwr.github.io/poppychat/reference/poppy_chat.md).

- provider:

  Company providing the model.

- description:

  Short text summary of the model's capabilities, provided by the model
  provider.

- release_date:

  Model release date as an ISO string; may be missing when unknown.

- input_token_limit:

  Documented maximum input tokens; `NA` when not specified in
  documentation.

- output_token_limit:

  Documented maximum output tokens; `NA` when not specified in
  documentation.

- max_token_limit:

  Overall documented token limit; `NA` when not specified in
  documentation.

- input_data_types:

  Comma-delimited list of supported input modalities.

- output_data_types:

  Comma-delimited list of supported output modalities.

- input_cost_1m:

  Quoted input price in USD per one million tokens.

- output_cost_1m:

  Quoted output price in USD per one million tokens.
