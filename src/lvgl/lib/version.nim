import ../lvgl
import std/strformat

let versionMajor* = lv_version_major
let versionMinor* = lv_version_minor
let versionPatch* = lv_version_patch
let versionInfo*  = lv_version_info

proc version*():string =
  ## returns string with the full version chain
  &"{versionMajor()}.{versionMinor()}.{versionPatch()}.{versionInfo()}"