## Using the Size, Position and Padding style properties
import lvgl
import std/os


var style*: lv_style_t

proc main =
  lv_init()
  halInit(400,300)

  var style: lv_style_t
  lv_style_init(addr(style))
  lv_style_set_radius(addr(style), 5)
  ## Make a gradient
  lv_style_set_bg_opa(addr(style), LV_OPA_COVER.lv_opa_t)
  var grad: lv_grad_dsc_t
  grad.dir = LV_GRAD_DIR_VER
  grad.stops_count = 2
  grad.stops[0].color = lv_palette_lighten(LV_PALETTE_GREY, 1)
  grad.stops[1].color = lv_palette_main(LV_PALETTE_BLUE)
  ## Shift the gradient to the bottom
  grad.stops[0].frac = 128
  grad.stops[1].frac = 192
  lv_style_set_bg_grad(addr(style), addr(grad))
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
