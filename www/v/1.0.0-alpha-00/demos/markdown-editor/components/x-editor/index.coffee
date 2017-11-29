import {Gadget} from "/v/1.0.0-alpha-00/lib/play.js"
import {template} from "./template.js"

class Editor extends Gadget

  @register "x-editor"

  @events
    textarea:
      keyup: ({target}) -> @value = target.value

  template: template
