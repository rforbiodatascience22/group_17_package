#' Title Translation
#'
#' @param codons: set of mRNA (3 mRNA turn to a amino_acid)
#'
#' @return translated protein from mRNA codon
#' @export
#'
#' @examples
#' translate("UUU")
#' translate(c("UUU","UCU"))
#'
#'
translate <- function(codons){
  amino_acid <- paste0(codon_table[codons], collapse = "")
  return(amino_acid)
}
