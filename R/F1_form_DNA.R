#' Title form_DNA
#'
#' @param size  integer value that represent the length of the DNA sequence to be randomly generated
#'
#' @return A sequence of nucleotide base as random_dna2
#' @export
#'
#' @examples form_dna(size = 15)
#'
form_dna <- function(size = 1){
  random_dna1 <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  random_dna2 <- paste0(random_dna1, collapse = "")
  return(random_dna2)
}
