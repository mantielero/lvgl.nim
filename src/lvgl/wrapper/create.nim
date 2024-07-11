# nim --maxLoopIterationsVM:10000000000 c -d:futharkRebuild -d:nodeclguards -d:generateInline create
import futhark,os

importc:
  outputPath currentSourcePath.parentDir / "lvgl_9_0_0.nim"
  #path "/usr/include/igraph"
  path "../submodules/lvgl/"
  "lvgl.h"
  #"helpers.h"
  