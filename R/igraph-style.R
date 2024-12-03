#' The igraph style guide
#'
#' @export
#'
#' @examples
#' styler::style_text("A+-+B", style = igraph.style::igraph_style)
igraph_style <- function(scope = "tokens", ...) {
  style <- styler::tidyverse_style(scope = scope, ...)

  if ("space" %in% names(style)) {
    style$space <- c(
      style$space,
      list(
        normalize_igraph_arrows = normalize_igraph_arrows
      )
    )
  }

  style
}

normalize_igraph_arrows <- function(pd) {
  if (length(pd$token) == 0) {
    return(pd)
  }

  if (pd$token[[1]] %in% c("'-'", "'+'")) {
    if (pd$child[[2]]$token[[1]] %in% c("'-'", "'+'")) {
      if (!(pd$child[[2]]$child[[2]]$token[[1]] %in% c("'-'", "'+'"))) {
        #pd$child[[2]]$spaces[[1]] <- 1L
      }
    }
  }
  if (nrow(pd) >= 2 && pd$token[[2]] %in% c("'-'", "'+'")) {
    if (pd$child[[3]]$token[[1]] %in% c("'-'", "'+'")) {
      if (!(pd$child[[3]]$child[[2]]$token[[1]] %in% c("'-'", "'+'"))) {
        #pd$child[[3]]$spaces[[1]] <- 1L
      }
      pd$spaces[[2]] <- 0L
    }
  }
  pd
}
