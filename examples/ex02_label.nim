import lvgl
import std/os

proc hal_init*(w: lv_coord_t; h: lv_coord_t): ptr lv_disp_t =
  var disp: ptr lv_disp_t = lv_sdl_window_create(w, h)
  var mouse: ptr lv_indev_t = lv_sdl_mouse_create()
  lv_indev_set_group(mouse, lv_group_get_default())
  lv_indev_set_disp(mouse, disp)
  #LV_IMG_DECLARE(mouse_cursor_icon)  # <-- FIXME: template?
  var mouse_cursor_icon:lv_img_dsc_t
  ## Declare the image file.
  var cursor_obj: ptr lv_obj_t
  cursor_obj = lv_img_create(lv_scr_act())
  ## Create an image object for the cursor
  lv_img_set_src(cursor_obj, addr(mouse_cursor_icon))
  ## Set the image source
  lv_indev_set_cursor(mouse, cursor_obj)
  ## Connect the image  object to the driver
  var mousewheel: ptr lv_indev_t = lv_sdl_mousewheel_create()
  lv_indev_set_disp(mousewheel, disp)
  lv_indev_set_group(mousewheel, lv_group_get_default())
  var keyboard: ptr lv_indev_t = lv_sdl_keyboard_create()
  lv_indev_set_disp(keyboard, disp)
  lv_indev_set_group(keyboard, lv_group_get_default())
  return disp

proc main():cint =
  lv_init()
  var disp = hal_init(400,300)

  # Change the active screen's background color
  let active = lv_scr_act()
  echo repr active
  lv_obj_set_style_bg_color(lv_scr_act(), lv_color_hex(0x003a57'u32), LV_PART_MAIN.lv_style_selector_t)

  # Create a white label, set its text and align it to the center
  let label = lv_label_create(lv_scr_act())
  label.lv_label_set_text("Hello world")
  lv_obj_set_style_text_color(lv_scr_act(), lv_color_hex(0xffffff'u32), LV_PART_MAIN.lv_style_selector_t)
  lv_obj_align(label, LV_ALIGN_CENTER.lv_align_t, 0.lv_coord_t, 0.lv_coord_t)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 1000)

  return 0
discard main()
