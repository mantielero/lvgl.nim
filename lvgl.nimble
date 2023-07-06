import std/os

# Package

version     = "0.0.3"
author      = "Jose Maria Garcia"
description = "LVGL bindings"
license     = "MIT"

# Deps

requires "nim >= 1.0.0"

skipDirs = @["examples"]
skipFiles = @["src/compiles.nim", 
              "src/compiles.sh", 
              "src/create_wrapper.sh", 
              "libcompiles.a"]
srcDir = "src"


# task test, "Runs the test suite":
#   exec "nim c -r tests/tester"

task afterInstall, "prueba":
  var installPath {.global.} = gorge("nimble path lvgl")
  when defined(linux) and defined(amd64):
    var destDir = installPath / "lvgl/linux_x64/"
    mkDir(destDir)  
  var cmd = """nim c -d:release --app:staticlib --nimcache:""" & destDir & """ src/lvgl/compiles.nim""" 
  echo cmd
  exec cmd


# after install2: # NOT WORKING. FIXME. It doesn't find src/lvgl/compile.nim
#   # creates the object files inside the folder
#   var installPath {.global.} = gorge("nimble path lvgl")
#   when defined(linux) and defined(amd64):
#     var destDir = installPath / "lvgl/linux_x64/"
#     mkDir(destDir)  
#   var cmd = """nim c -d:release --app:staticlib --nimcache:""" & destDir & """ src/lvgl/compiles.nim""" 
#   echo cmd
#   exec cmd
  