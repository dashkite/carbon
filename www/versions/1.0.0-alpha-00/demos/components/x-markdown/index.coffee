import {define} from "../../../lib/component-helpers.js"
import {template} from "./template.js"

do ->

  [markdownit] = await require [
    "https://cdnjs.cloudflare.com" +
      "/ajax/libs/markdown-it/8.4.0/markdown-it.min.js"
  ]

  parser = markdownit linkify: true

  define "x-markdown",

    data:
      markdown: ""
      html:
        get: -> parser.render @markdown

    template: template
