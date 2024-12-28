## Using the Size, Position and Padding style properties
import lvgl
import std/os


var style*: lv_style_t

proc main =
  lv_init()
  halInit(400,300)

  lv_style_init(addr(style))
  lv_style_set_radius(addr(style), 5)
  ## Make a gradient

  lv_style_set_width(addr(style), 150)
  # LV_SIZE_CONTENT --> LV_COORD_SET_SPEC(2001)
  # #define LV_COORD_SET_SPEC(x)    ((x) | _LV_COORD_TYPE_SPEC)
  lv_style_set_height(addr(style), 100) #LV_SIZE_CONTENT)
  #lv_style_set_pad_ver(addr(style), 20)      # FIXME: <<<<<<<<<<<<<<<<<<<<<<<<<
  lv_style_set_pad_left(addr(style), 5)
  lv_style_set_x(addr(style), lv_pct(50))
  lv_style_set_y(addr(style), 80)
  ## Create an object with the new style

  var obj: ptr lv_obj_t = lv_obj_create(lv_screen_active())

  lv_obj_add_style(obj, addr(style), 0)
  var label: ptr lv_obj_t = lv_label_create(obj)

  lv_label_set_text(label, "Hello")

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()
