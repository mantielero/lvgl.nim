# lvgl.nim
A wrapper of the Light Versatile Graphic Library (LVGL) for Nim. 

## Dependencies
- SLD2
- wayland-client?
- xkbcommon?

## Status
Just a Hello World example working on Linux.



## Wrapper creation
The wrapper creation is done using [nimterop](https://github.com/nimterop/nimterop).


## TODO
- [ ] Move it to c2nim and individual files.
- [ ] Make it more friendly

## Some notes
I added `lvgl` as a submodule:
```sh
$ git submodule add https://github.com/lvgl/lvgl.git src/components/lvgl
```

