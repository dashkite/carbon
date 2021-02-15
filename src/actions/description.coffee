import {pipe} from "@pandastrike/garden"
import {spoke, read} from "@dashkite/katana"

_description = (handle) -> Object.assign {}, handle.dom.dataset

description = pipe [
  read "handle"
  spoke _description
]

description._ = _description

export {description}
