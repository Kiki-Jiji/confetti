

#' @title html_button
#'
#' @description A html button
#'
#' @export

html_button <- function(button_text) {

  button <- paste(

    '<button type="button" class="btn btn-primary" onclick="trigger_con()">' ,

    button_text ,


    '</button>' )

}



#' @title js_cdn
#'
#' @description The neccesary javascript library content delievy network- CDN
#'
#' @export
#'

js_cdn <- function() {
  cdn_link <-
    '
  <script src="https://cdn.jsdelivr.net/npm/js-confetti@latest/dist/js-confetti.browser.js"></script>

  '
}


#' Title
#'
#' @param arguments
#'
#' @return
#' @export
#'
javascript_config <- function(arguments) {

  js <- paste0(
    '
  <script>

  const jsConfetti = new JSConfetti()

  function trigger_con() {
    jsConfetti.addConfetti({

    ',

    arguments,

    '

  })
  }

  </script>

  '
  )
}





