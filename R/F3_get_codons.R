#' Title get_codons
#'
#' @param DNA_seq it's a string  that represents a DNA sequence to be transcribed  with the transcribe function  .
#' @param start it's an integer that represents the starting point of first the reading frame .
#'
#' @return codons which is vector of three chars presenting each codon from the DNA_seq starting from the start .
#' @export
#'
#' @examples get_codons("AUGC", start =  1)
#'
get_codons <- function(mRNA_seq, start = 1){
  mRNA_sequences <- nchar(mRNA_seq)
  codons <- substring(mRNA_seq,
                      first = seq(from = start, to = mRNA_seq_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = mRNA_seq_len, by = 3))
  return(codons)
}

