


#' Title
#'
#' @param button_text The text of the button
#' @param emojis emojis = "Default" provides some pre-selected emojis. emojis = 'None'
#' is non emojis, just confetti
#'
#' @export


button_html <-function(button_text, emojis = "Default" ) {

  button <- confetti::html_button(button_text)

  cdn_link <- confetti::js_cdn()

  if (emojis == "None" ) {

    arg1 = " "

  } else {
    arg1 <- confetti::emojis_js(emojis)
  }

  js <- confetti::javascript_config(arg1)

  html <- paste0(button, cdn_link, js)

  return(html)

}






#' Title
#'
#' @description Creates a button with a suprise!
#'
#' @param button_text The text of the button, default = 'Click me!'
#' @param emojis emojis = "Default" provides some pre-selected emojis. emojis = 'None'
#' is non emojis, just confetti
#'
#' @export
#'

confetti_button <- function(button_text = 'Click me!', emojis = "Default") {

  button_text_string <- as.character(button_text)

  knitr::raw_html(
    button_html(button_text = button_text_string, emojis)
  )
}

