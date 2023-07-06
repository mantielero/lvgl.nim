import system

const waylandc = gorge("pkg-config --cflags wayland-client")
const xkbcommonc = gorge("pkg-config --cflags xkbcommon")

{.passC:"-O3 -I./ " & waylandc & " " & xkbcommonc .}

const wayland = gorge("pkg-config --libs wayland-client")
const xkbcommon = gorge("pkg-config --libs xkbcommon")
{.passL:"-lSDL2 -lm " & wayland & " " & xkbcommon & " -lpthread".}
{.passL:"-L./lvgl/linux_x64/"}
import lvgl/lvgl
include lvgl/links
export lvgl


# Friedlier API
import lvgl/lib/[hal,version]
export hal, version

