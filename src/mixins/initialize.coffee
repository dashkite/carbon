import {curry, pipe} from "@dashkite/joy/function"

_initialize = curry (f, type) ->
  type::initialize = ->
    f [ @, handle: @ ]
    @dispatch "ready"

initialize = (fx) -> _initialize pipe fx

initialize._ = _initialize

export {initialize}
