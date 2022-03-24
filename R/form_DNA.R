#' Title form_DNA
#'
#' @param size  integer value that represent the length of the DNA sequence to be randomly generated.
#'
#' @return
#' @export
#'
#' @examples
form_DNA <- function(size){
  random_dna <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  random_dna <- paste0(random_dna, collapse = "")
  return(random_dna)
}
