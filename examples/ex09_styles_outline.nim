## Using the outline style properties
import lvgl
import std/os

proc main =
  lv_init()
  halInit(400,300)


  var style: lv_style_t
  lv_style_init(addr(style))
  ## Set a background color and a radius
  lv_style_set_radius(addr(style), 5)
  lv_style_set_bg_opa(addr(style), LV_OPA_COVER)
  lv_style_set_bg_color(addr(style), lv_palette_lighten(LV_PALETTE_GREY, 1))
  ## Add outline
  lv_style_set_outline_width(addr(style), 2)
  lv_style_set_outline_color(addr(style), lv_palette_main(LV_PALETTE_BLUE))
  lv_style_set_outline_pad(addr(style), 8)
  ## Create an object with the new style
  var obj: ptr lv_obj_t = lv_obj_create(lv_scr_act())
  lv_obj_add_style(obj, addr(style), 0)
  lv_obj_center(obj)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()