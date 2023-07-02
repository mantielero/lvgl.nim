# lvgl.nim
A wrapper of the [Light Versatile Graphic Library (LVGL)](https://lvgl.io/) for Nim. 

## Dependencies
- SLD2
- wayland-client?
- xkbcommon?

## Status
Some examples working on Linux:

- label:

![](https://i.imgur.com/DbfLB9b.png)

- button:

![](https://i.imgur.com/CYb9WkA.png)

- styles:

![](https://i.imgur.com/aRAqUTP.png)

- slider:

![](https://i.imgur.com/YuDWE8C.png)

## Wrapper creation
The wrapper creation is done using [nimterop](https://github.com/nimterop/nimterop).

It just required:
1. Running the file: `src/wrapper/create_wrapper.sh`
2. Running the file: `src/wrapper/compiles.sh`
3. Manually creating the file `src/lvgl.nim`


## TODO
- [ ] How to deal with callbacks?
- [ ] Move it to c2nim and individual files.
- [ ] Make it more friendly
- [ ] What to do with `src/components/lv_conf.h`? 
- [ ] Multiplatform?
- [ ] To understand better: LV_SIZE_CONTENT (see ex06)

## Some notes
I added `lvgl` as a submodule:
```sh
$ git submodule add https://github.com/lvgl/lvgl.git src/components/lvgl
```

