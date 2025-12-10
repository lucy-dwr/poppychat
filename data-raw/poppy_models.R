claude_haiku_45 <- tibble::tibble(
  model_name = "Anthropic Claude Haiku 4.5",
  provider = "Anthropic",
  description = "Claude Haiku 4.5 delivers near-frontier performance for a wide range of use cases and stands out as one of the best coding and agent models with the right speed and cost to power free products and high-volume user experiences.",
  release_date = "2025-10-15",
  input_token_limit = 200000,
  output_token_limit = 64000,
  max_token_limit = NA_real_,
  input_data_types = "text, image, pdf",
  output_data_types = "text",
  input_cost_1m = 1,
  output_cost_1m = 5
)

claude_sonnet_45 <- tibble::tibble(
  model_name = "Anthropic Claude Sonnet 4.5",
  provider = "Anthropic",
  description = "Claude Sonnet 4.5 is Anthropic's most powerful model for powering real-world agents, with industry-leading capabilities around coding and computer use. It is the ideal balance of performance and practicality for most internal and external use cases.",
  release_date = "2025-09-29",
  input_token_limit = 200000,
  output_token_limit = 64000,
  max_token_limit = 200000,
  input_data_types = "text",
  output_data_types = "text",
  input_cost_1m = 3,
  output_cost_1m = 15
)

aws_nova_micro <- tibble::tibble(
  model_name = "AWS Nova Micro",
  provider = "Amazon",
  description = "AWS Nova Micro is a low-cost, text-understanding foundation model. It is multilingual and can reason over text.",
  release_date = "2024-12-03",
  input_token_limit = NA_real_,
  output_token_limit = NA_real_,
  max_token_limit = 128000,
  input_data_types = "text",
  output_data_types = "text",
  input_cost_1m = 0.035,
  output_cost_1m = 0.14
)

aws_nova_pro <- tibble::tibble(
  model_name = "AWS Nova Pro",
  provider = "Amazon",
  description = "AWS Nova Pro is a multimodal understanding foundation model. It is multilingual and can reason over text, images, and videos.",
  release_date = "2024-12-03",
  input_token_limit = NA_real_,
  output_token_limit = NA_real_,
  max_token_limit = 300000,
  input_data_types = "text, image, video",
  output_data_types = "text",
  input_cost_1m = 0.8,
  output_cost_1m = 3.2
)

azure_gpt_41 <- tibble::tibble(
  model_name = "Azure gpt-4.1",
  provider = "Microsoft / OpenAI",
  description = "The gpt-4.1 series is the latest iteration of the gpt-4o model family. This iteration of models is specifically targested for better coding and instruction following, making it better at handling complex technical and coding problems. In addition, it increases the context token limit up to 1M input tokens and provides separate billing for small context (128k) and large (up to 1M) context inputs. As with the previous gpt-4o model family, it supports a 16k output size.",
  release_date = "2024-05-01",
  input_token_limit = 1000000,
  output_token_limit = 16000,
  max_token_limit = 1000000,
  input_data_types = "text",
  output_data_types = "text",
  input_cost_1m = 2,
  output_cost_1m = 8
)

azure_gpt_41_mini <- tibble::tibble(
  model_name = "Azure gpt-4.1-mini",
  provider = "Microsoft / OpenAI",
  description = "The gpt-4.1 series is the latest iteration of the gpt-4o model family. This iteration of models is specifically targeted for better coding and instruction following, making it better at handling complex technical and coding problems. In addition, it increases the context token limit up to 1M input tokens and provides separate billing for small context (128k) and large (up to 1M) context inputs. As with the previous gpt-4o-mini model version, it supports both text and vision with low cost and latency, enabling a wide variety of tasks including applications that chain or parallelize multiple model calls (e.g., calling multiple APIs), pass a large volume of context to the model (e.g., full code base or conversation history), or interact with customers through fast, real-time text responses (e.g., customer support chatbots).",
  release_date = "2024-05-01",
  input_token_limit = 1000000,
  output_token_limit = NA_real_,
  max_token_limit = 1000000,
  input_data_types = "text",
  output_data_types = "text",
  input_cost_1m = 0.4,
  output_cost_1m = 1.6
)

azure_gpt_5_mini <- tibble::tibble(
  model_name = "Azure gpt-5-mini",
  provider = "Microsoft / OpenAI",
  description = "gpt-5-mini powers low cost and fast experiences such as real-time agents, orchestrating tool calls in response to customer support requests. It is a lightweight version for cost-sensitive applications and now supports minimal reasoning.",
  release_date = NA_character_,
  input_token_limit = NA_real_,
  output_token_limit = NA_real_,
  max_token_limit = NA_real_,
  input_data_types = "text, image",
  output_data_types = "text",
  input_cost_1m = 0.25,
  output_cost_1m = 2
)

azure_gpt_51 <- tibble::tibble(
  model_name = "Azure gpt-5.1",
  provider = "Microsoft / OpenAI",
  description = "GPT-5.1 builds on GPT-5 with improvements that make interactions more reliable, flexible, and user-friendly. The focus is on delivering clearer responses, better adaptability, and enhanced control for diverse tasks.",
  release_date = "2025-11-12",
  input_token_limit = NA_real_,
  output_token_limit = NA_real_,
  max_token_limit = NA_real_,
  input_data_types = "text, image",
  output_data_types = "text",
  input_cost_1m = 1.38,
  output_cost_1m = 11
)

google_gemini_25_flash <- tibble::tibble(
  model_name = "Google Gemini 2.5 Flash",
  provider = "Google",
  description = "Gemini 2.5 models are thinking models, capable of reasoning through their thoughts before responding, resulting in enhanced performance and improved accuracy. Gemini 2.5 Flash is best for balancing reasoning and speed.",
  release_date = "2024-05-20",
  input_token_limit = 1048576,
  output_token_limit = 64000,
  max_token_limit = NA_real_,
  input_data_types = "text, image, video, audio, pdf",
  output_data_types = "text",
  input_cost_1m = 0.15,
  output_cost_1m = 3.5
)

google_gemini_25_flash_lite <- tibble::tibble(
  model_name = "Google Gemini 2.5 Flash-Lite",
  provider = "Google",
  description = "Gemini 2.5 Flash-Lite is Google Gemini's fastest model. Gemini 2.5 models are thinking models, capable of reasoning through their thoughts before responding, resulting in enhanced performance and improved accuracy.",
  release_date = "2025-01-01",
  input_token_limit = 1048576,
  output_token_limit = 64000,
  max_token_limit = NA_real_,
  input_data_types = "text, image, video, audio, pdf",
  output_data_types = "text",
  input_cost_1m = 0.1,
  output_cost_1m = 0.4
)

poppy_models <- dplyr::bind_rows(
  claude_haiku_45,
  claude_sonnet_45,
  aws_nova_micro,
  aws_nova_pro,
  azure_gpt_41,
  azure_gpt_41_mini,
  azure_gpt_5_mini,
  azure_gpt_51,
  google_gemini_25_flash,
  google_gemini_25_flash_lite
)

usethis::use_data(poppy_models, overwrite = TRUE)
