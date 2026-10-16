#' Extract first and last id for a given range
#'
#' @param id_range a string of id range like "2-40"
#'
#' @returns a vector of first and last id of the range
#' @export
extract_first_last_id <- function(id_range){
  first_last <- as.numeric(as.character(unlist(strsplit(id_range,'-'))))
  return(first_last)
}
