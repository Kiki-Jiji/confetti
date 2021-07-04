

#' @title convert_to_js_array
#'
#' @description Converts an r vector into an javascript array
#'
#' @param vector An r vector
#'
#' @export

convert_to_js_array <- function(vector) {

  string <- ' [  '

  for (para in vector) {
    string <- paste0(string, '"', para, '"', ',')
  }

  js_array <- paste0(string, '], ')

  return(js_array)

}




#' Title
#'
#' @param argument The argument name
#' @param argument_vector A vector of parameters to the argument
#'
#' @export
js_argument <- function(argument, argument_vector) {

  js_array <- confetti::convert_to_js_array(argument_vector)

  js <- paste0(argument, ': ', js_array)

  return(js)
}




#' Title
#'
#' @param emojis_vector A r vector of emojis. emojis_vector = 'Default' provides some default emojis
#'
#' @export
#'

emojis_js <- function(emojis_vector = 'Default') {

  if (emojis_vector == 'Default') {
    emojis_vector <- c("🌈", "⚡️", "💥")
  }

  js <- js_argument('emojis', emojis_vector)

  return(js)

}
