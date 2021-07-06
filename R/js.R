

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
#' @param config A names list where the name is the argument and the value is
#' the parameter or parameters for that argument
#'
#' @export

create_js_config <- function(config) {

  arguments_string <- ''

  for (arg in names(config)) {

      if (length(config[[arg]]) == 1) {

          arguments_string <- paste0(arguments_string,
                                   paste0(arg, ' : ', config[[arg]], ', ')
        )

      } else if (length(config[[arg]]) > 1) {

          arguments_string <- paste0(arguments_string,
                                   confetti::js_argument(arg, config[[arg]])
        )

      } else {
          warning('Argument provided with no parameters')
      }

  }

    return(arguments_string)

}


#' Title
#'
#' @param emojis_vector A r vector of emojis. emojis_vector = 'Default' provides some default emojis
#'
#' @export
#'

emojis_js <- function(emojis_vector = 'Default') {

  if (emojis_vector == 'Default') {

    emojis_vector <- c( "\U0001f308", "\U0001f525" )

  }

  js <- js_argument('emojis', emojis_vector)

  return(js)

}
