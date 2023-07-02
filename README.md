# lvgl.nim
A wrapper of the [Light Versatile Graphic Library (LVGL)](https://lvgl.io/) for Nim. 

## Dependencies
- SLD2
- wayland-client?
- xkbcommon?

## Status
The wrapper seems to work in Linux. There is no sugar yet, so right now is not very friendly.

You can find some [working examples](https://github.com/mantielero/lvgl.nim/tree/main/examples).

## Wrapper creation
The wrapper creation is done using [nimterop](https://github.com/nimterop/nimterop).

It just required:
1. Running the file: `src/wrapper/create_wrapper.sh`
2. Running the file: `src/wrapper/compiles.sh`
3. Manually creating the file `src/lvgl.nim`


## TODO
- [ ] To reproduce the examples found [in the manual](https://docs.lvgl.io/master/examples.html#get-started).
- [ ] How to deal with callbacks?
- [ ] Move it to c2nim and individual files.
- [ ] Make it more friendly
- [ ] What to do with `src/components/lv_conf.h`? 
- [ ] Multiplatform?
- [ ] To understand better: LV_SIZE_CONTENT (see ex06)
- [ ] Export to webassembly: 
  - https://forum.lvgl.io/t/feature-phone-ui-in-lvgl-zig-and-webassembly/11987/5
  - https://github.com/lupyuen/pinephone-lvgl-zig

## Some notes
I added `lvgl` as a submodule:
```sh
$ git submodule add https://github.com/lvgl/lvgl.git src/components/lvgl
```

