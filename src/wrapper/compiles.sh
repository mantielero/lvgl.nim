find ../components/lvgl/src -name "*.c" -print > compiles.nim
sed -i 's/^/{.compile: "/' compiles.nim
sed -i 's/$/".}/' compiles.nim