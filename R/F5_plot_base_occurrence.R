#' Plots the occurrence of bases in DNA/RNA sequence
#'
#' @param sequence a string with characters (bases) to be counted
#'
#' @return ggplot object displaying the total count per character (base)
#'
#' @example
#' seq <- "ATTTCCCCG"
#' plot_base_occurrence(sequence = seq)
#'
#' @export
#'
#' @importFrom magrittr %>%
plot_base_occurrence <- function(sequence){
  unique_bases <- sequence %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(unique_bases, function(count_occurence) stringr::str_count(string = sequence, pattern =  count_occurence)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Base"]] <- rownames(counts)

  plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = Base, y = Counts, fill = Base)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(plot)
}
