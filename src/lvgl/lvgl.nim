import os
const srcDir = currentSourcePath.parentDir()#.parentDir()
echo srcDir
{.pragma: inlineAndHeader,
  header: "lvgl.h".}
{.experimental: "codeReordering".}
{.passC: "-I" & srcDir & "/submodules/lvgl/src".}
{.passC: "-I" & srcDir & "/submodules/lvgl".}
#{.passC: "-I" & srcDir & "/submodules/".}

{.push header: "lvgl.h".}
#{.push header:"/home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lvgl.h"}
import wrapper/lvgl_9_2
export lvgl_9_2
{.pop.}
#export lvgl_9_1_1