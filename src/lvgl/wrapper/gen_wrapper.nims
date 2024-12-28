#!/usr/bin/env nim
# Create the compilation file
import std/[os,strutils]#,strformat]


var txt = ""
for i in walkDirRec("../submodules/lvgl/src"):
  if i[i.high-1 .. i.high] == ".h":  # or i[i.high-3 .. i.high] == ".cpp":
    #var tmp = "{.compile: \"" & i & "\".}"
    #txt &= tmp & "\n"
    let prefix = "../submodules/lvgl/src/"
    let relPath = i.split(prefix)[1]
    let splitted = relPath.rsplit("/",1)

    var name:string
    var folder = ""
    if splitted.len == 1:
      name = splitted[0]
    else:
      name = splitted[1]
      folder = splitted[0]
    #echo folder & " -- " & name
    mkDir folder
    var nameWithoutExt:string = relPath[0 .. relPath.high - 2]
    #echo relPath[0 .. relPath.high - 2]
    var newPath = relPath[0 .. relPath.high - 2] & ".nim"
    var tmp = "c2nim --header --out:" & newPath & " " & i

    if not (nameWithoutExt in @["lv_conf_internal"]):
      echo tmp
      exec tmp
    else:
      echo "PENDING: ", tmp
    #echo tmp[0].split(prefix)[1]
    #var tmp = i.rsplit("/",1)
    #
   

#writeFile("compiles.nim", txt)
