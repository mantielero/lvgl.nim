import ../lvgl
import std/strformat

let versionMajor* = Lvglversionmajor
let versionMinor* = Lvglversionminor
let versionPatch* = Lvglversionpatch
let versionInfo*  = Lvglversioninfo

proc version*():tuple[major,minor,patch:int;info:string] =
  ## returns string with the full version chain
  (versionMajor, versionMinor, versionPatch, versionInfo)