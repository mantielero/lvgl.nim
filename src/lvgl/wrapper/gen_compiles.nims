#!/usr/bin/env nim
# Create the compilation file
import std/[os,strutils]#,strformat]


var txt = ""
for i in walkDirRec("../submodules/lvgl/src"):
  if i[i.high-1 .. i.high] == ".c" or i[i.high-3 .. i.high] == ".cpp":
    var tmp = "{.compile: \"" & i & "\".}"
    txt &= tmp & "\n"
   

writeFile("compiles.nim", txt)
