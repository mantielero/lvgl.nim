import ../lvgl

proc halInit*(w: lv_coord_t; h: lv_coord_t): ptr lv_disp_t {.discardable.} =
  var disp:ptr lv_disp_t = lv_sdl_window_create(w, h) # ptr lv_disp_t
  var mouse = lv_sdl_mouse_create()  # : ptr lv_indev_t
  lv_indev_set_group(mouse, lv_group_get_default())
  lv_indev_set_display(mouse, disp)
  #LV_IMG_DECLARE(mouse_cursor_icon)  # <-- FIXME: template?
  var mouse_cursor_icon:lv_img_dsc_t
  ## Declare the image file.
  var cursor_obj: ptr lv_obj_t
  cursor_obj = lv_image_create(lv_screen_active())
  ## Create an image object for the cursor
  lv_image_set_src(cursor_obj, addr(mouse_cursor_icon))
  ## Set the image source
  lv_indev_set_cursor(mouse, cursor_obj)
  ## Connect the image  object to the driver
  var mousewheel: ptr lv_indev_t = lv_sdl_mousewheel_create()
  lv_indev_set_display(mousewheel, disp)
  lv_indev_set_group(mousewheel, lv_group_get_default())
  var keyboard: ptr lv_indev_t = lv_sdl_keyboard_create()
  lv_indev_set_display(keyboard, disp)
  lv_indev_set_group(keyboard, lv_group_get_default())
  return disp