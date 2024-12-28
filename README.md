# lvgl.nim
A wrapper of the [Light Versatile Graphic Library (LVGL)](https://lvgl.io/) for Nim. 

Supporting LVGL v9.2.

## Dependencies
- SLD2
- wayland-client?
- xkbcommon?

## Installation
Install as usual:
```sh
$ nimble install https://github.com/mantielero/lvgl.nim
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

## LVGL submodule in this repository
I added `lvgl` as a submodule:
```sh
$ git submodule add https://github.com/lvgl/lvgl.git src/lvgl/submodules/lvgl
$ git submodule init
```

[Configuration](https://docs.lvgl.io/master/porting/project.html#configuration-file)

For the moment we will do:
```
$ cd src/submodules
$ wget https://raw.githubusercontent.com/lvgl/lv_port_pc_eclipse/master/lv_conf.h
```

The bindings creation just takes:
```
$ cd src/lvgl/wrapper
$ nim --maxLoopIterationsVM:10000000000 c -d:futharkRebuild -d:nodeclguards -d:generateInline create
```
which creates somehting like: `lvgl_9_0_0.nim`. 

### Updating submodules
In this repository root:
```sh
$ git submodule update --init --recursive
$ cd src/lvgl/submodules/lvgl
$ git checkout release/v9.2
$ git pull origin release/v9.2 
$ cd ../../../../
$ git add src/lvgl/submodules/lvgl/
$ git  commit -m "<src/lvgl/submodules/lvgl> submodule updated to v9.2"
```

## Future
```
nim c --cc:clang --clang.exe=emcc --clang.linkerexe=emcc myFile.nim
```

```
nim c -r --cc:clang --clang.exe="zigcc" --clang.linkerexe="zigcc" borrame
```

## Updating to a new version
1. Update the submodule (for example to `release/v9.2`)
2. Update `src/lvgl/wrapper/create.nim` so that it creates a new `lvgl_9_2.nim`.
3. Compile it: 
```sh
nim --maxLoopIterationsVM:10000000000 c -d:futharkRebuild -d:nodeclguards -d:generateInline create
```
4. Edit `src/lvgl/wrapper/lvgl.nim` to refer the brand new: `lvgl_9_2nim`
5. Execute:
```sh
$ ./gen_compiles.nims
```
6. Copy `lv_config.h` as per the [docs](https://docs.lvgl.io/master/intro/add-lvgl-to-your-project/configuration.html):
```sh
$ cd ../submodules
$ cp lvgl/lv_conf_template.h ../lv_config.h
```
7. Modify the end of the file. It looks like:
```c
....
/*Vector graphic demo*/
#define LV_USE_DEMO_VECTOR_GRAPHIC  1
/*--END OF LV_CONF_H--*/
#define LV_USE_MATRIX 1
#define LV_USE_FLOAT 1
#endif /*LV_CONF_H*/

#endif /*End of "Content enable"*/
```



# Archlinux

```sh
$ yay -S lvgl
```
Install the headers:
```
ls /usr/include/lvgl/
```
And the libs:
```  
/usr/lib/liblvgl.so    
/usr/lib/liblvgl_thorvg.so  
```

