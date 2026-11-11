## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(ellmercodex)

## -----------------------------------------------------------------------------
# tryCatch(
#   chat$chat("Hello"),
#   codex_auth_error = function(error) {
#     message("Authentication failed; run codex_login() again.")
#   },
#   codex_usage_limit_error = function(error) {
#     message("The ChatGPT plan's usage limit was reached; try again later.")
#   },
#   codex_network_error = function(error) {
#     message("Network error; check your connection and retry.")
#   },
#   codex_protocol_changed_error = function(error) {
#     message("The upstream protocol may have changed; update ellmercodex.")
#   },
#   error = function(error) {
#     message("The request failed: ", conditionMessage(error))
#   }
# )

