

#' @title convert_to_js_array
#'
#' @description Converts an r vector into an javascript array
#'
#' @param vector An r vector
#'
#' @export

convert_to_js_array <- function(vector) {

  string <- ' [  '

  for (emo in vector) {
    string <- paste0(string, '"', emo, '"', ',')
  }

  emojis_vector_html <- paste0(string, ']')

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


  emojis_vector_html <- convert_to_js_array(emojis_vector)

  paste0(

    '

   emojis: [

  ' ,

    emojis_vector_html,

    '

    ]

    '

  )
}




