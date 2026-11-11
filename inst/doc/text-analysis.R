## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(ellmercodex)
# 
# chat <- chat_codex(model = "gpt-6-luna", effort = "low")

## -----------------------------------------------------------------------------
# # A real excerpt from the debate
# excerpt <- paste(
#   "seguimos pensando que además de la represión y del combate al",
#   "narcotráfico que debe seguir con firmeza y decisión como sociedad",
#   "debemos apostar a dos o tres pilares fundamentales la educación",
#   "la prevención y la rehabilitación"
# )
# 
# result <- chat$chat_structured(
#   paste(
#     "Classify the excerpt as PREVENTIVE, PUNITIVE, MIXED, or NO_CLEAR_STANCE.",
#     "Use MIXED when it argues for preventive and punitive responses at the",
#     "same time. Answer in English.",
#     "\n\nExcerpt:",
#     excerpt
#   ),
#   type = ellmer::type_object(
#     stance = ellmer::type_enum(c(
#       "PREVENTIVE",
#       "PUNITIVE",
#       "MIXED",
#       "NO_CLEAR_STANCE"
#     )),
#     rationale = ellmer::type_string()
#   )
# )
# 
# result
# #> $stance
# #> [1] "MIXED"
# #>
# #> $rationale
# #> [1] "The excerpt supports firm repression and combating drug trafficking,
# #> alongside education, prevention, and rehabilitation."

## -----------------------------------------------------------------------------
# speeches <- data.frame(
#   party = c("FA", "FA", "PN", "PN", "PN"),
#   stance = c("PREVENTIVE", "MIXED", "PUNITIVE", "PUNITIVE", "MIXED")
# )

## -----------------------------------------------------------------------------
# summarize_party <- function(party_name) {
#   speeches |>
#     dplyr::filter(party == party_name) |>
#     dplyr::count(stance) |>
#     jsonlite::toJSON()
# }
# 
# summary_tool <- ellmer::tool(
#   summarize_party,
#   name = "summarize_party",
#   description = "Count the policy stances in a party's speeches.",
#   arguments = list(party_name = ellmer::type_string())
# )
# 
# chat$register_tool(summary_tool)
# 
# chat$chat("Compare the policy stances of FA and PN. Use the available tool.")
# #> FA has one **MIXED** stance and one **PREVENTIVE** stance. PN has one
# #> **MIXED** stance and two **PUNITIVE** stances. Both have a mixed stance,
# #> while FA's other stance is preventive and PN's are punitive.

## -----------------------------------------------------------------------------
# chat$chat("Use the tool to get the stance counts for FA and PN.")
# 
# counts <- chat$chat_structured(
#   "Return the counts you just retrieved.",
#   type = ellmer::type_array(
#     ellmer::type_object(
#       party = ellmer::type_string(),
#       stance = ellmer::type_string(),
#       n = ellmer::type_integer()
#     )
#   )
# )
# 
# counts
# #> # A tibble: 4 x 3
# #>   party stance         n
# #>   <chr> <chr>      <int>
# #> 1 FA    MIXED          1
# #> 2 FA    PREVENTIVE     1
# #> 3 PN    MIXED          1
# #> 4 PN    PUNITIVE       2

