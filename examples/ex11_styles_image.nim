## Using the outline style properties
import lvgl
import std/[os, streams]

# #define LV_IMG_DECLARE(var_name) extern const lv_img_dsc_t var_name;


# Create an image from the png file
# try:
#     with open('../assets/img_cogwheel_argb.png', 'rb') as f:
#         png_data = f.read()
# except:
#     print("Could not find img_cogwheel_argb.png")
#     sys.exit()

# img_cogwheel_argb = lv.img_dsc_t({
#   'data_size': len(png_data),
#   'data': png_data
# })

#{.emit: "LV_IMG_DECLARE(img_cogwheel_argb)".}
let datas = readFile("../src/components/lvgl/examples/assets/img_cogwheel_argb.png")
echo "---"
#let datac:seq[uint8] =  cast[seq[uint8]](datas[0].unsafeAddr)
let datac:seq[uint8] = cast[seq[uint8]](datas)
echo len(datac)
echo typeof(datac[0].unsafeAddr)
echo "---"
# echo len(datas)
# echo len(datac)
# echo "---"
# echo datas[0..20]
# echo "---"
# echo datac[0..20]

#let datad = cast[ptr UncheckedArray[uint8]](datac.unsafeAddr)#(datas.len)
#echo "---"
#echo datad[0..20]
#let f = open()

# let f = newFileStream("../src/components/lvgl/examples/assets/img_cogwheel_argb.png", fmRead)
# #let fileContents = f.readAll()
# var buffer: array[15000, uint8]
# f.read
# f.setPosition(0)
# var n = 0
# while not f.atEnd:
#   buffer[n] = f.readUint8
#   n += 1

# f.close()


#echo fileContents[0..20]
# echo typeof(fileContents)
# fileStream.close()
# let data = cast[]
# var data
#var data = cast[ptr UncheckedArray[uint8]](unsafeAddr datac)


# var img_cogwheel_argb = lv_img_dsc_t( 
#                            data:      datac[0].unsafeAddr, #cast[ptr uint8](datas),
#                            data_size: (len(datac)).uint32
#                            )

# {.compile: "img_cogwheel_argb.c".}
# var img_cogwheel_argb {.importc:"img_cogwheel_argb".}:lv_img_dsc_t

proc main =
  lv_init()
  halInit(400,300)

  var style: lv_style_t
  lv_style_init(addr(style))
  ## Set a background color and a radius
  lv_style_set_radius(addr(style), 5)
  lv_style_set_bg_opa(addr(style), LV_OPA_COVER.lv_opa_t)
  lv_style_set_bg_color(addr(style), lv_palette_lighten(LV_PALETTE_GREY, 3))
  lv_style_set_border_width(addr(style), 2)
  lv_style_set_border_color(addr(style), lv_palette_main(LV_PALETTE_BLUE))
  lv_style_set_image_recolor(addr(style), lv_palette_main(LV_PALETTE_BLUE))  
  lv_style_set_image_recolor_opa(addr(style), LV_OPA_50.lv_opa_t)
  lv_style_set_transform_rotation(addr(style), 300)
  ## Create an object with the new style
  var obj: ptr lv_obj_t = lv_image_create(lv_screen_active())
  lv_obj_add_style(obj, addr(style), 0)
  #
  #var img_cogwheel_argb {.exportc.} :lv_img_dsc_t 
  #var img_cog_wheel_argb = "../src/componentslvgl/examples/assets/img_cogwheel_argb.png".cstring
  #lv_img_set_src(obj, addr(img_cogwheel_argb))
  var path = "./img_cogwheel_argb.bin".cstring    # FIXME: <<<<<<<<<<<<<<<<
  lv_image_set_src(obj, path[0].addr)  
  lv_obj_center(obj)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()