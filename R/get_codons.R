#' Title get_codons
#'
#' @param DNA_seq it's a string  that represents a DNA sequence to be transcribed  with the transcribe function  .
#' @param start it's an integer that represents the starting point of first the reading frame .
#'
#' @return codons which is vector of three chars presenting each codon from the DNA_seq starting from the start .
#' @export
#'
#' @examples get_codons("ATGC", start =  1)
#'
get_codons <- function(DNA_seq, start = 1){
  DNA_sequences <- nchar(DNA_seq)
  codons <- substring(DNA_seq,
                      first = seq(from = start, to = DNA_sequences-3+1, by = 3),
                      last = seq(from = 3+start-1, to = DNA_sequences, by = 3))
  return(codons)
}

