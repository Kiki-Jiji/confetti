# confetti
An rmarkdown extension to add confetti!

<img src="assets/highlight.gif" width="600px" />

Have you ever been working on a report or producing a statistical publication and thought how do I add a confetti button? 

Well this R package has been developed to make this routine task easier with pre-built html widgets that can be slotted into an rmarkdown report to add some jazz.

But what if your business case involves using emojis as the confetti? This is fully supported and can be fully configured.

## Installation

```{r}
devtools::install_github('https://github.com/Kiki-Jiji/confetti')
```

Alternatively clone and build locally. 

## Usage

In an rmarkdown r code block simply use:

```{r}

library(confetti)
confetti_button()

```

<img src="assets/setup_demo2.gif" width="600px" />


You can also supply a config to affect the behaviour such as the choice of emojis or the number. 
You can also change the button name

```{r}
# rainbow = "\U0001f308"
# flashlight = "\U0001f526"
# dog = "\U0001f436"

config <- list('emojis' = c("\U0001f308", "\U0001f526", "\U0001f436"),
               'confettiNumber' = 300,
               'confettiColors' = c('#ff0a54', '#ff477e', '#ff7096', '#ff85a1', '#fbb1bd', '#f9bec7')
)

confetti::confetti_button(button_text = "CLick me!",  config = config)


```

> You can supply any valid emoji! Sources include [emojipedia](https://emojipedia.org/) or [unicode](https://apps.timwhitlock.info/emoji/tables/unicode)

You can use the [emojifont](https://cran.r-project.org/web/packages/emojifont/vignettes/emojifont.html) package to find emojis or to RAP the emoji selection

```r

config <- list('emojis' = sapply(sample(emojifont::sample_emoji(), 3), emojifont::emoji))


confetti::confetti_button(button_text = "CLick me!",  config = config)

# Everytime you knit you get 3 new emojis! Very efficient

```
## Confetti on page load

If efficiency is the game why don't you *help* your users and trigger the confetti for them! 

```r
confetti::confetti_on_page_load()
```
This will trigger the confetti on page load. As always this is customisable, so get creative with them emojis!

```
config <- list('emojis' = c("\U0001f308", "\U0001f526", "\U0001f436"),
               'confettiNumber' = 300,
               'confettiColors' = c('#ff0a54', '#ff477e', '#ff7096', '#ff85a1', '#fbb1bd', '#f9bec7')
)

confetti::confetti_on_page_load(config)
```

## DIY

Maybe you want to build your own html but add confetti?

Simply use the `confetti::diy_confetti()` and the `trigger_con` javascript function is available to use! It's a Create your own, fun for the whole family, type of thing.

```html
<h1 onmouseover="trigger_con()"> Latest GDP Figures</h1>
```
Now people get the ... fun of confetti whenever they even hover over your titles! No more clicking needed!

## Configuration

Options are

* emojis
* emojiSize
* confettiColors
* confettiRadius
* confettiNumber

Supply config as a named list, with the name one of the above, and then the parameters. For some, such as emojiSize this is a number, for others such as emojis this is a vector of emojis.

## JavaScript Confetti library

This package is an r wrapper around the javascript library 
[js-confetti](https://github.com/loonywizard/js-confetti). 

Thanks to the js-confetti package authors and maintainers. 

