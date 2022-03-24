#' Title Transcription
#'
#' @param DNA_seq
#'
#' @return mRNA
#' @export
#'
#' @examples transcribe ("ATCG")
#'
transcribe <- function(DNA_seq){
  mRNA <- gsub("T", "U", DNA_seq)
  return(mRNA)
}
