#' Title form_DNA
#'
#' @param size  integer value that represent the length of the DNA sequence to be randomly generated
#'
#' @return
#' @export
#'
#' @examples form_dna (len = 20)
#'
form_DNA <- function(size2){
  random_dna1 <- sample(c("A", "T", "G", "C"), size = size2, replace = TRUE)
  random_dna2 <- paste0(random_dna1, collapse = "")
  return(random_dna2)
}
