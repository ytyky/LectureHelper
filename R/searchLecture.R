#' search through lecture notes
#'
#' This function takes one or multiple keywords in and return related materials
#' and locations. It searches STAT 5293 lecture slides and locate related notes
#' and codes for query purpose.
#' The author of STAT 5293 lecture notes is Prof.Joyce Robbins
#'
#' @param keywords the desire keywords
#' @return A matrix of the related pages
#' @export
searchLecture <- function(keywords) {
  directory <- system.file("slides", package = "LectureHelper")
  search_results <- pdfsearch::keyword_directory(directory, keywords)
  if (nrow(search_results) == 0) {
    print("nothing found!")
  }
  else {
    results <- search_results[, 2:4]
    return(results)
  }
}
