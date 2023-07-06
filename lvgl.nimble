import std/os

# Package

version     = "0.0.3"
author      = "Jose Maria Garcia"
description = "LVGL bindings"
license     = "MIT"

# Deps

requires "nim >= 1.0.0"

skipDirs = @["examples"]
skipFiles = @[#"src/compiles.nim", 
              "src/compiles.sh", 
              "src/create_wrapper.sh", 
              "libcompiles.a"]
srcDir = "src"



after install:
  # creates the object files inside the folder
  echo "hola"
  var installPath {.global.} = gorge("nimble path lvgl")
  when defined(linux) and defined(amd64):
    var destDir = installPath / "lvgl/linux_x64/"
    mkDir(destDir)  
  var cmd = """nim c -d:release --app:staticlib --nimcache:""" & destDir & " " & installPath & """/lvgl/compiles.nim""" 
  echo cmd
  exec cmd
  