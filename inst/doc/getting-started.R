## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## -----------------------------------------------------------------------------
library(ellmercodex)

codex_available()

## ----eval = FALSE-------------------------------------------------------------
# models <- codex_models()
# models[c("id", "display_name", "default_reasoning_effort",
#          "supported_reasoning_efforts")]

## ----eval = FALSE-------------------------------------------------------------
# auth <- codex_login()
# codex_account(auth)

## ----eval = FALSE-------------------------------------------------------------
# auth <- codex_login(persist = FALSE)
# chat <- chat_codex(model = Sys.getenv("ELLMERCODEX_MODEL"))

## ----eval = FALSE-------------------------------------------------------------
# Sys.setenv(ELLMERCODEX_HOME = "/path/to/a/private/directory")

## ----eval = FALSE-------------------------------------------------------------
# chat <- chat_codex(
#   system_prompt = "Be concise.",
#   model = models$id[[1]],
#   effort = models$supported_reasoning_efforts[[1]][[1]]
# )
# 
# chat$chat("Remember that the codeword is amber. Reply: acknowledged")
# chat$chat("What was the codeword?")

## ----eval = FALSE-------------------------------------------------------------
# chat <- chat_codex(model = "gpt-6-luna", effort = "medium")

## ----eval = FALSE-------------------------------------------------------------
# weather_tool <- ellmer::tool(
#   function(city) paste("Sunny in", city),
#   name = "get_weather",
#   description = "Get the current weather for a city.",
#   arguments = list(city = ellmer::type_string())
# )
# 
# chat <- chat_codex(model = Sys.getenv("ELLMERCODEX_MODEL"))
# chat$register_tool(weather_tool)
# chat$chat("What is the weather in Montevideo?")

## ----eval = FALSE-------------------------------------------------------------
# coro::collect(chat$stream("Check the weather again.", stream = "content"))

## ----eval = FALSE-------------------------------------------------------------
# chat$chat_structured(
#   "My name is Susan and I'm 13 years old.",
#   type = ellmer::type_object(
#     name = ellmer::type_string(),
#     age = ellmer::type_integer()
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# tryCatch(
#   chat$chat("Hello"),
#   codex_auth_error = function(error) {
#     message("Authentication failed; run codex_login() again.")
#   },
#   codex_chat_error = function(error) {
#     message("The experimental Codex request failed: ", conditionMessage(error))
#   },
#   codex_protocol_changed_error = function(error) {
#     message("The experimental upstream protocol may have changed.")
#   }
# )

## ----eval = FALSE-------------------------------------------------------------
# codex_logout()

