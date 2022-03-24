#' Title Translation
#'
#' @param codons: set of mRNA (3 mRNA turn to a amino_acid)
#'
#' @return translated protein from mRNA codon
#' @export
#'
#' @examples
translate <- function(codons){
  amino_acids <- paste0(codon_table[codons], collapse = "")
  return(amino_acids)
}
