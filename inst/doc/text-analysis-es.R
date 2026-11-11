## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(ellmercodex)
# 
# chat <- chat_codex(model = "gpt-6-luna", effort = "low")

## -----------------------------------------------------------------------------
# # Fragmento real del debate
# fragmento <- paste(
#   "seguimos pensando que además de la represión y del combate al",
#   "narcotráfico que debe seguir con firmeza y decisión como sociedad",
#   "debemos apostar a dos o tres pilares fundamentales la educación",
#   "la prevención y la rehabilitación"
# )
# 
# resultado <- chat$chat_structured(
#   paste(
#     "Clasifica el fragmento como PREVENTIVA, PUNITIVA, MIXTA o",
#     "SIN_ORIENTACIÓN_ATRIBUIBLE.",
#     "Usa MIXTA cuando se defiendan simultáneamente respuestas",
#     "preventivas y punitivas.",
#     "\n\nFragmento:",
#     fragmento
#   ),
#   type = ellmer::type_object(
#     codigo = ellmer::type_enum(c(
#       "PREVENTIVA",
#       "PUNITIVA",
#       "MIXTA",
#       "SIN_ORIENTACIÓN_ATRIBUIBLE"
#     )),
#     justificacion = ellmer::type_string()
#   )
# )
# 
# resultado
# #> $codigo
# #> [1] "MIXTA"
# #>
# #> $justificacion
# #> [1] "El fragmento defiende explícitamente la represión y el combate al
# #> narcotráfico, que son respuestas punitivas, y simultáneamente propone la
# #> educación, la prevención y la rehabilitación, de carácter preventivo o
# #> rehabilitador."

## -----------------------------------------------------------------------------
# intervenciones <- data.frame(
#   partido = c("FA", "FA", "PN", "PN", "PN"),
#   orientacion = c("PREVENTIVA", "MIXTA", "PUNITIVA", "PUNITIVA", "MIXTA")
# )

## -----------------------------------------------------------------------------
# resumir_partido <- function(partido_buscado) {
#   intervenciones |>
#     dplyr::filter(partido == partido_buscado) |>
#     dplyr::count(orientacion) |>
#     jsonlite::toJSON()
# }
# 
# resumen_tool <- ellmer::tool(
#   resumir_partido,
#   name = "resumir_partido",
#   description = "Cuenta las orientaciones discursivas de un partido.",
#   arguments = list(partido_buscado = ellmer::type_string())
# )
# 
# chat$register_tool(resumen_tool)
# 
# chat$chat(
#   paste(
#     "Compara las orientaciones discursivas de FA y PN.",
#     "Usa la herramienta disponible."
#   )
# )
# #> FA presenta una orientación **mixta** y una **preventiva** (una observación
# #> de cada tipo). PN presenta una orientación **mixta** y dos **punitivas**.
# #> En común, ambos tienen una orientación mixta; la diferencia es que FA
# #> incluye una preventiva, mientras que PN se inclina más hacia lo punitivo.

## -----------------------------------------------------------------------------
# chat$chat("Usa la herramienta para obtener las orientaciones de FA y PN.")
# 
# conteos <- chat$chat_structured(
#   "Devuelve los conteos que acabas de obtener.",
#   type = ellmer::type_array(
#     ellmer::type_object(
#       partido = ellmer::type_string(),
#       orientacion = ellmer::type_string(),
#       n = ellmer::type_integer()
#     )
#   )
# )
# 
# conteos
# #> # A tibble: 4 x 3
# #>   partido orientacion     n
# #>   <chr>   <chr>       <int>
# #> 1 FA      MIXTA           1
# #> 2 FA      PREVENTIVA      1
# #> 3 PN      MIXTA           1
# #> 4 PN      PUNITIVA        2

