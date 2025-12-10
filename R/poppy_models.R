#' Poppy model catalog
#'
#' Tibble of large language models available through the Poppy endpoint, with
#' token limits, supported modalities, and per-million-token pricing.
#'
#' @format A tibble with 10 rows and 11 columns:
#' \describe{
#'   \item{model_name}{Model identifier expected by the Poppy API, to be used as the `model` argument in `poppy_chat()`.}
#'   \item{provider}{Company providing the model.}
#'   \item{description}{Short text summary of the model's capabilities, provided by the model provider.}
#'   \item{release_date}{Model release date as an ISO string; may be missing
#'   when unknown.}
#'   \item{input_token_limit}{Documented maximum input tokens; `NA` when not
#'   specified in documentation.}
#'   \item{output_token_limit}{Documented maximum output tokens; `NA` when not
#'   specified in documentation.}
#'   \item{max_token_limit}{Overall documented token limit; `NA` when not
#'   specified in documentation.}
#'   \item{input_data_types}{Comma-delimited list of supported input
#'   modalities.}
#'   \item{output_data_types}{Comma-delimited list of supported output
#'   modalities.}
#'   \item{input_cost_1m}{Quoted input price in USD per one million tokens.}
#'   \item{output_cost_1m}{Quoted output price in USD per one million tokens.}
#' }
"poppy_models"
