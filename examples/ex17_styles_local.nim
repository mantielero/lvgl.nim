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
  lv_style_set_bg_color(addr(style), lv_palette_main(LV_PALETTE_GREEN))
  lv_style_set_border_color(addr(style), lv_palette_lighten(LV_PALETTE_GREEN, 3))
  lv_style_set_border_width(addr(style), 3)
  var obj: ptr lv_obj_t = lv_obj_create(lv_scr_act())
  lv_obj_add_style(obj, addr(style), 0)
  ## Overwrite the background color locally
  lv_obj_set_style_bg_color(obj, 
                            lv_palette_main(LV_PALETTE_ORANGE).lv_color_t, 
                            LV_PART_MAIN.lv_style_selector_t)
  lv_obj_center(obj)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()