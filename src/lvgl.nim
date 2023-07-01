import system

const waylandc = gorge("pkg-config --cflags wayland-client")
const xkbcommonc = gorge("pkg-config --cflags xkbcommon")

{.passC:"-O3 -I./ " & waylandc & " " & xkbcommonc .}

const wayland = gorge("pkg-config --libs wayland-client")
const xkbcommon = gorge("pkg-config --libs xkbcommon")
{.passL:"-lSDL2 -lm " & wayland & " " & xkbcommon & " -lpthread".}

import wrapper/[lvgl,compiles]
export lvgl