## Using the outline style properties
import lvgl
import std/[os, streams]

# #define LV_IMG_DECLARE(var_name) extern const lv_img_dsc_t var_name;


# Create an image from the png file


proc main =
  lv_init()
  halInit(400,300)

  var style: lv_style_t
  lv_style_init(addr(style))
  lv_style_set_arc_color(addr(style), lv_palette_main(LV_PALETTE_RED))
  lv_style_set_arc_width(addr(style), 4)
  ## Create an object with the new style
  var obj: ptr lv_obj_t = lv_arc_create(lv_scr_act())
  lv_obj_add_style(obj, addr(style), 0)
  lv_obj_center(obj)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()