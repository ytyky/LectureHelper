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
  packagePath <- system.file(package = "LectureHelper")
  print(packagePath)
  folder <- paste(packagePath, "/slides", sep="")
  search_results <- pdfsearch::keyword_directory(folder, keywords)
  results <- search_results[, 2:4]

  return(results)
}
