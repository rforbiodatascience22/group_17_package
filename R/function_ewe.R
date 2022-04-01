
#' Title
#'
#' @param DNA_seq
#'
#' @return
#' @export
#'
#' @examples
transcribe <- function(DNA_seq){
  mRNA <- gsub("T", "U", DNA_seq)
  return(mRNA)
}


