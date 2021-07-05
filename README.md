# confetti
An rmarkdown extension to add confetti!

Have you ever been working on a report or producing a statistical publication and thought how to I add a confetti button? 

Well this R package has been developed to make this routine task easier with pre-built html widgets that can be slotted into an rmarkdown report to add some jazz.

But whatever if your business case involves using emojis as the confetti? This is fully supported and can be fully configured.

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

You can also supply a config to affect the behaviour such as the choice of emojis or the number. 
You can also change the button name

```{r}
config <- list('emojis' = c("🌈", "⚡", "💥"),
               'confettiNumber' = 600,
               'confettiColors' = c('#ff0a54', '#ff477e', '#ff7096', '#ff85a1', '#fbb1bd', '#f9bec7')
)



confetti::confetti_button(button_text = "I am a button",  config = config)

```

> You can supply any valid emoji! One source is [emojipedia](https://emojipedia.org/)

## config

Options are

* emojis
* emojiSize
* confettiColors
* confettiRadius
* confettiNumber

Supply config as a named list, with the name one of the above, and then the parameters. For some, such as emojiSize this is a number, for others such as emojis this is a vector of emojis.

