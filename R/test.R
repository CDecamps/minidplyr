#' @useDynLib minidplyr, .registration = TRUE
#' @importFrom Rcpp sourceCpp

#' Test function
#' 
#'This function print a test
#' @return this function print "this is a test"
#' @export
#'
#' @examples
#' test()
test = function() {
  print("this is a test")
}

#' Plagiat de Select de Deplyr
#' Retourne les colonnes sélectionnées
#'
#' @param data data frame with all the data
#' @param selection variables to extract, character vector of variable names or 
#' an integer vector of variable positions
#'
#' @return subset of the data
#' @export
#'
#' @examples
#' select2(iris, c(1, 3, 4))
#' 
select2 = function(data, selection){
  return(data[selection])
}

#' Plagiat de Filter de Deplyr
#' Retourne les lignes sélectionnées
#'
#' @param data data frame with all the data
#' @param selection variables to extract, character vector of variable names or 
#' an integer vector of variable positions
#'
#' @return subset of the data
#' @export
#'
#' @examples
#' filter2(iris, c(1, 3, 4))
#' 
filter2 = function(data, selection){
  return(data[selection, ])
}
