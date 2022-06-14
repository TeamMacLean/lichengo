#' List all packages in the lichengo collection
#'
#' @param include_self Include lichengo in the list?
#' @export
#' @examples
#' tidyverse_packages()
lichengo_packages <- function(include_self = TRUE) {
  raw <- utils::packageDescription("lichengo")$Depends
  imports <- strsplit(raw, ",")[[1]]
  parsed <- gsub("^\\s+|\\s+$", "", imports)
  names <- vapply(strsplit(parsed, "\\s+"), "[[", 1, FUN.VALUE = character(1))

  if (include_self) {
    names <- c(names, "lichengo")
  }

  names
}
