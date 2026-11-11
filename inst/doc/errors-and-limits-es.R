## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(ellmercodex)

## -----------------------------------------------------------------------------
# tryCatch(
#   chat$chat("Hola"),
#   codex_auth_error = function(error) {
#     message("Falló la autenticación; vuelve a ejecutar codex_login().")
#   },
#   codex_usage_limit_error = function(error) {
#     message("Se alcanzó el límite de uso del plan de ChatGPT; prueba más tarde.")
#   },
#   codex_network_error = function(error) {
#     message("Error de red; revisa tu conexión y vuelve a intentar.")
#   },
#   codex_protocol_changed_error = function(error) {
#     message("Puede que el protocolo haya cambiado; actualiza ellmercodex.")
#   },
#   error = function(error) {
#     message("La solicitud falló: ", conditionMessage(error))
#   }
# )

