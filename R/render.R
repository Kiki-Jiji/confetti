
#' Title
#'
#' @param button_text The text of the button
#' @param emojis emojis = "Default" provides some pre-selected emojis. emojis = 'None'
#' is non emojis, just confetti
#'
#' @export

diy_confetti <-function(button_text, config = "Default" ) {

  cdn_link <- confetti::js_cdn()

  if (class(config) == 'list') {
    args <- confetti::create_js_config(config)
  } else if (config == "Default") {
    args <- confetti::emojis_js(config)
  } else if (config == "None" ) {
    args = " "
  }

  js <- confetti::javascript_config(args)

  html <- paste0(cdn_link, js)

  knitr::raw_html(html)

}

#' Title
#'
#' @param button_text The text of the button
#' @param emojis emojis = "Default" provides some pre-selected emojis. emojis = 'None'
#' is non emojis, just confetti
#'
#' @export


button_html <-function(button_text, config = "Default" ) {

  button <- confetti::html_button(button_text)

  cdn_link <- confetti::js_cdn()

  if (class(config) == 'list') {
    args <- confetti::create_js_config(config)
  } else if (config == "Default") {
    args <- confetti::emojis_js(config)
  } else if (config == "None" ) {
      args = " "
  }

  js <- confetti::javascript_config(args)

  html <- paste0(button, cdn_link, js)

  return(html)

}






#' Title
#'
#' @description Creates a button with a suprise!
#'
#' @param button_text The text of the button, default = 'Click me!'
#' @param config config = "Default" provides some pre-selected emojis. config = 'None'
#' is just confetti
#'
#' @export
#'

confetti_button <- function(button_text = 'Click me!', config = "Default") {

  button_text_string <- as.character(button_text)

  knitr::raw_html(
    button_html(button_text = button_text_string, config)
  )
}

