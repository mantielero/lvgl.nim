import os
const srcDir = currentSourcePath.parentDir()#.parentDir()
echo srcDir
{.pragma: inlineAndHeader,
  header: "lvgl.h".}
{.experimental: "codeReordering".}
{.passC: "-I" & srcDir & "/submodules/lvgl".}
#{.push header: "lvgl.h".}
#{.push header:"/home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lvgl.h"}
include wrapper/lvgl_9_1_1
#{.pop.}
#export lvgl_9_1_1