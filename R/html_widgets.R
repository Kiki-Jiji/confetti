

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
  <script>var JSConfetti=function(){"use strict";function t(t,i){if(!(t instanceof i))throw new TypeError("Cannot call a class as a function")}function i(t,i){for(var e=0;e<i.length;e++){var o=i[e];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}function e(t,e,o){return e&&i(t.prototype,e),o&&i(t,o),t}function o(t){return+t.replace(/px/,"")}function n(t,i){var e=arguments.length>2&&void 0!==arguments[2]?arguments[2]:0,o=Math.random()*(i-t)+t;return Math.floor(o*Math.pow(10,e))/Math.pow(10,e)}function s(t){return t[n(0,t.length)]}var a=["#fcf403","#62fc03","#f4fc03","#03e7fc","#03fca5","#a503fc","#fc03ad","#fc03c2"];function r(){return Math.log(window.innerWidth)/Math.log(1920)}var h=function(){function i(e){t(this,i);var o=e.initialPosition,a=e.direction,h=e.confettiRadius,c=e.confettiColors,d=e.emojis,l=e.emojiSize,u=n(.9,1.7,3)*r();this.confettiSpeed={x:u,y:u},this.finalConfettiSpeedX=n(.2,.6,3),this.rotationSpeed=d.length?.01:n(.03,.07,3)*r(),this.dragForceCoefficient=n(5e-4,9e-4,6),this.radius={x:h,y:h},this.initialRadius=h,this.rotationAngle="left"===a?n(0,.2,3):n(-.2,0,3),this.emojiSize=l,this.emojiRotationAngle=n(0,2*Math.PI),this.radiusYUpdateDirection="down";var f="left"===a?n(82,15)*Math.PI/180:n(-15,-82)*Math.PI/180;this.absCos=Math.abs(Math.cos(f)),this.absSin=Math.abs(Math.sin(f));var p=n(-150,0),m={x:o.x+("left"===a?-p:p)*this.absCos,y:o.y-p*this.absSin};this.currentPosition=Object.assign({},m),this.initialPosition=Object.assign({},m),this.color=d.length?null:s(c),this.emoji=d.length?s(d):null,this.createdAt=(new Date).getTime(),this.direction=a}return e(i,[{key:"draw",value:function(t){var i=this.currentPosition,e=this.radius,o=this.color,n=this.emoji,s=this.rotationAngle,a=this.emojiRotationAngle,r=this.emojiSize,h=window.devicePixelRatio;o?(t.fillStyle=o,t.beginPath(),t.ellipse(i.x*h,i.y*h,e.x*h,e.y*h,s,0,2*Math.PI),t.fill()):n&&(t.font="".concat(r,"px serif"),t.save(),t.translate(h*i.x,h*i.y),t.rotate(a),t.textAlign="center",t.fillText(n,0,0),t.restore())}},{key:"updatePosition",value:function(t,i){var e=this.confettiSpeed,o=this.dragForceCoefficient,n=this.finalConfettiSpeedX,s=this.radiusYUpdateDirection,a=this.rotationSpeed,r=this.createdAt,h=this.direction,c=i-r;e.x>n&&(this.confettiSpeed.x-=o*t),this.currentPosition.x+=e.x*("left"===h?-this.absCos:this.absCos)*t,this.currentPosition.y=this.initialPosition.y-e.y*this.absSin*c+.00125*Math.pow(c,2)/2,this.rotationSpeed-=this.emoji?1e-4:1e-5*t,this.rotationSpeed<0&&(this.rotationSpeed=0),this.emoji?this.emojiRotationAngle+=this.rotationSpeed*t%(2*Math.PI):"down"===s?(this.radius.y-=t*a,this.radius.y<=0&&(this.radius.y=0,this.radiusYUpdateDirection="up")):(this.radius.y+=t*a,this.radius.y>=this.initialRadius&&(this.radius.y=this.initialRadius,this.radiusYUpdateDirection="down"))}},{key:"getIsVisibleOnCanvas",value:function(t){return this.currentPosition.y<t+100}}]),i}();function c(t){var i=t.confettiRadius,e=void 0===i?6:i,o=t.confettiNumber,n=void 0===o?t.confettiesNumber||(t.emojis?40:250):o,s=t.confettiColors,r=void 0===s?a:s,h=t.emojis,c=void 0===h?t.emojies||[]:h,d=t.emojiSize,l=void 0===d?80:d;return t.emojies&&console.error("emojies argument is deprecated, please use emojis instead"),t.confettiesNumber&&console.error("confettiesNumber argument is deprecated, please use confettiNumber instead"),{confettiRadius:e,confettiNumber:n,confettiColors:r,emojis:c,emojiSize:l}}return function(){function i(){var e;t(this,i),this.canvas=((e=document.createElement("canvas")).style.position="fixed",e.style.width="100%",e.style.height="100%",e.style.top="0",e.style.left="0",e.style.zIndex="1000",e.style.pointerEvents="none",document.body.appendChild(e),e),this.canvasContext=this.canvas.getContext("2d"),this.shapes=[],this.lastUpdated=(new Date).getTime(),this.iterationIndex=0,this.loop=this.loop.bind(this),requestAnimationFrame(this.loop)}return e(i,[{key:"loop",value:function(){var t,i,e,n,s,a=this;t=this.canvas,i=window.devicePixelRatio,e=getComputedStyle(t),n=o(e.getPropertyValue("width")),s=o(e.getPropertyValue("height")),t.setAttribute("width",(n*i).toString()),t.setAttribute("height",(s*i).toString());var r=(new Date).getTime(),h=r-this.lastUpdated,c=this.canvas.offsetHeight;this.shapes.forEach((function(t){t.updatePosition(h,r),t.draw(a.canvasContext)})),this.iterationIndex%100==0&&(this.shapes=this.shapes.filter((function(t){return t.getIsVisibleOnCanvas(c)}))),this.lastUpdated=r,this.iterationIndex++,requestAnimationFrame(this.loop)}},{key:"addConfetti",value:function(){for(var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},i=c(t),e=i.confettiRadius,o=i.confettiNumber,n=i.confettiColors,s=i.emojis,a=i.emojiSize,r=5*window.innerHeight/7,d={x:0,y:r},l={x:window.innerWidth,y:r},u=0;u<o/2;u++)this.shapes.push(new h({initialPosition:d,direction:"right",confettiRadius:e,confettiColors:n,confettiNumber:o,emojis:s,emojiSize:a})),this.shapes.push(new h({initialPosition:l,direction:"left",confettiRadius:e,confettiColors:n,confettiNumber:o,emojis:s,emojiSize:a}))}}]),i}()}();</script>

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




#' Title
#'
#' @return
#' @export

confetti_on_page_load <- function(config) {

  if(missing(config)) {
    arguments <- ""
  } else {
    arguments <- create_js_config(config)
  }


  html <- paste0(js_cdn(),
  '
    <script>

    const jsConfetti = new JSConfetti()

    jsConfetti.addConfetti({

    ', arguments ,

  '

    })

    </script>

  '
  )

  knitr::raw_html(html)

}

