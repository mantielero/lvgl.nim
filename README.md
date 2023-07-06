# lvgl.nim
A wrapper of the [Light Versatile Graphic Library (LVGL)](https://lvgl.io/) for Nim. 

## Dependencies
- SLD2
- wayland-client?
- xkbcommon?

## Installation
WARNING: it is NOT the usual installation

First install as usual:
```sh
$ git clone https://github.com/mantielero/lvgl.nim.git
$ cd lvgl.nim
$ nimble install
$ nimble afterInstall
```

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

  - [ ] To understand `LV_IMG_DECLARE`
- [ ] How to deal with callbacks?
- [ ] Move it to c2nim and individual files.
- [ ] Make it more friendly
- [ ] What to do with `src/components/lv_conf.h`? 
- [ ] Multiplatform?
- [ ] To understand better: LV_SIZE_CONTENT (see ex06)
- [ ] Export to webassembly: 
  - https://forum.lvgl.io/t/feature-phone-ui-in-lvgl-zig-and-webassembly/11987/5
  - https://github.com/lupyuen/pinephone-lvgl-zig
- [ ] Using dynamic library or [static library](https://stackoverflow.com/questions/9853419/how-to-combine-object-files-o-to-create-static-library-a-for-ios)
- [ ] Importing .png during the compilation process would be great. This would avoid the need for converting them to other formats or even into C code. This could be achieved with: [staticRead](https://nim-lang.org/docs/system.html#staticRead,string).

## Some notes
I added `lvgl` as a submodule:
```sh
$ git submodule add https://github.com/lvgl/lvgl.git src/components/lvgl
```

