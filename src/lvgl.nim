import system
#{.passC:"-I./lvgl/submodules/lvgl/src/".}


# math, SDL2 and pthread needed
{.passC:"-Ilvgl/submodules/lvgl"}
{.passL:"-lm -lSDL2 -lpthread".}
#{.passL:"-L./ -I./"}


import lvgl/lib/[version, hal]
export version, hal

#{.passC:"-Ilvgl/submodules/lvgl/libs/thorvg"}
#{.passL:"-L./"}

#const waylandc = gorge("pkg-config --cflags wayland-client")
#const xkbcommonc = gorge("pkg-config --cflags xkbcommon")

#{.passC:"-O3 -I./ " & waylandc & " " & xkbcommonc .}
#{.push header:"/home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lvgl.h".}
import lvgl/lvgl
#{.pop.}
export lvgl

# Friendly API


include lvgl/wrapper/compiles