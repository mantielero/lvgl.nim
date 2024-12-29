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
  lv_style_set_line_color(addr(style), lv_palette_main(LV_PALETTE_GREY))
  lv_style_set_line_width(addr(style), 6)
  lv_style_set_line_rounded(addr(style), true)
  ## Create an object with the new style
  var obj: ptr lv_obj_t = lv_line_create(lv_screen_active())
  lv_obj_add_style(obj, addr(style), 0)
  var line = @[lv_point_t(x:10.lv_coord_t, y:30), 
               lv_point_t(x:30.lv_coord_t, y:50), 
               lv_point_t(x:100.lv_coord_t, y:0)]

  var p = cast[ptr UncheckedArray[lv_point_precise_t]](line[0].addr)
    
  lv_line_set_points(obj, p, 3)
  lv_obj_center(obj)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()