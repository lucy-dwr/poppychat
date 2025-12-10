# Quickstart

## Set up

To set up a Poppy chat client, first install and attach the `poppychat`
package:

``` r
devtools::install_github("lucy-dwr/poppychat")
```

``` r
library(poppychat)
```

## Get and set an API key

Then, ensure that you have an API key to use Poppy. **API keys are only
available to State of California employees participating in the Poppy
pilot.** To get an API key:

1.  [Sign into Poppy](https://customeruat.sda.state.ca.gov/) in a
    browser
2.  Navigate to Settings in the upper-right corner
3.  Go to the Account tab
4.  Mint an API key

Once you have a Poppy API key, store it as `POPPY_API_KEY` in your
`.Renviron` file so as to be secret. **Do not publish your API key in
public code repositories!**

To pull up your `.Renviron` file for editing, run the following command:

``` r
usethis::edit_r_environ()
```

Add the following line to your `.Renviron` file, replacing
`your_api_key` with your actual API key:

``` r
POPPY_API_KEY = "your_api_key"
```

## Initialize a Poppy chat client

Now you can initialize a Poppy chat client. By default, the chat will
retrieve your API key from your `.Renviron`. You can also set the API
key directly when initializing the client by passing it as an `api_key`
argument to `poppy_chat`, but this is not recommended for security
reasons if your code will be shared or published.

``` r
poppy_llm_default <- poppy_chat()

poppy_llm_default$chat("Hi, who are you?")
#> Hello! I'm a GenAI Digital Assistant hosted by the California Department of
#> Technology (CDT) to support State of California employees. 
#>
#> I'm here to help you with:
#> - Answering questions about state procedures, policies, and resources
#> - Searching relevant documents and providing information
#> - Assisting with work-related tasks and inquiries
#> - Providing references to official documentation when available
#>
#> How can I assist you today?
```

The default model is Anthropic Claude Sonnet 4.5. You can change the
model using the `model` argument.

``` r
poppy_llm_gemini_25_flash <- poppy_chat(model = "Google Gemini 2.5 Flash-Lite")
```

``` r
poppy_llm_gemini_25_flash$chat("What does the California Department of Water Resources do, briefly?")
#> The California Department of Water Resources (DWR) is responsible for 
#> managing and protecting the California's water resources. They oversee flood
#> control, water conservation, and the State Water Project, which delivers
#> water across the state.
#> 
#> You can find more information on their official website: 
#> [https://water.ca.gov/](https://water.ca.gov/)
```

``` r
poppy_llm_gemini_25_flash$chat("Could you rephrase that, briefly and in plain language suitable for a middle school student?")
#> Imagine California is a giant garden that needs lots of water to grow. The 
#> Department of Water Resources is like the garden's caretaker! They make sure 
#> there's enough water for everyone and everything – for drinking, for farms to 
#> grow food, and to keep our rivers and lakes healthy. They also help protect
#> us from floods, like building strong walls to keep rivers in their place when
#> it rains a lot.
#> 
#> Think of them as the state's water helpers!
```

To learn more about chatting with a chat client, see
[ellmer](https://ellmer.tidyverse.org).

## See models

Information about Poppy models that you can use are stored in the
`poppy_models` object in this package (or run
[`?poppy_models`](https://lucy-dwr.github.io/poppychat/reference/poppy_models.md)
from R for the help page).

``` r
dplyr::glimpse(poppy_models)
#> Rows: 10
#> Columns: 11
#> $ model_name         <chr> "Anthropic Claude Haiku 4.5", "Anthropic Claude Son…
#> $ provider           <chr> "Anthropic", "Anthropic", "Amazon", "Amazon", "Micr…
#> $ description        <chr> "Claude Haiku 4.5 delivers near-frontier performanc…
#> $ release_date       <chr> "2025-10-15", "2025-09-29", "2024-12-03", "2024-12-…
#> $ input_token_limit  <dbl> 200000, 200000, NA, NA, 1000000, 1000000, NA, NA, 1…
#> $ output_token_limit <dbl> 64000, 64000, NA, NA, 16000, NA, NA, NA, 64000, 640…
#> $ max_token_limit    <dbl> NA, 200000, 128000, 300000, 1000000, 1000000, NA, N…
#> $ input_data_types   <chr> "text, image, pdf", "text", "text", "text, image, v…
#> $ output_data_types  <chr> "text", "text", "text", "text", "text", "text", "te…
#> $ input_cost_1m      <dbl> 1.000, 3.000, 0.035, 0.800, 2.000, 0.400, 0.250, 1.…
#> $ output_cost_1m     <dbl> 5.00, 15.00, 0.14, 3.20, 8.00, 1.60, 2.00, 11.00, 3…
```
