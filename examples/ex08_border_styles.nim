## Using the border style properties
import lvgl
import std/os

proc main =
  lv_init()
  halInit(400,300)


  var style: lv_style_t
  lv_style_init(addr(style))
  ## Set a background color and a radius
  lv_style_set_radius(addr(style), 10)
  lv_style_set_bg_opa(addr(style), LV_OPA_COVER.lv_opa_t)
  lv_style_set_bg_color(addr(style), lv_palette_lighten(LV_PALETTE_GREY, 1))
  ## Add border to the bottom+right
  lv_style_set_border_color(addr(style), lv_palette_main(LV_PALETTE_BLUE))
  lv_style_set_border_width(addr(style), 5)
  lv_style_set_border_opa(addr(style), LV_OPA_50.lv_opa_t)
  #lv_style_set_border_side(addr(style),
  #                         LV_BORDER_SIDE_BOTTOM.int or LV_BORDER_SIDE_RIGHT.int)    # FIXME: <<<<<<<<<<<<<<<<
  ## Create an object with the new style
  var obj: ptr lv_obj_t = lv_obj_create(lv_screen_active())
  lv_obj_add_style(obj, addr(style), 0)
  lv_obj_center(obj)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()