## Create a playback animation
import lvgl
import std/os


proc anim_x_cb*(`var`: pointer; v: int32) {.cdecl.} =
  lv_obj_set_x(cast[ptr lv_obj_t](`var`), v.lv_coord_t)

proc anim_size_cb*(`var`: pointer; v: int32) {.cdecl.} =
  lv_obj_set_size(cast[ptr lv_obj_t](`var`), v.lv_coord_t, v.lv_coord_t)


proc main =
  lv_init()
  halInit(400,300)


  var obj: ptr lv_obj_t = lv_obj_create(lv_screen_active())
  lv_obj_set_style_bg_color(obj, lv_palette_main(LV_PALETTE_RED), 0)
  lv_obj_set_style_radius(obj, LV_RADIUS_CIRCLE, 0)
  lv_obj_align(obj, LV_ALIGN_LEFT_MID, 10, 0)
  var a: lv_anim_t
  lv_anim_init(addr(a))
  lv_anim_set_var(addr(a), obj)
  lv_anim_set_values(addr(a), 10, 50)
  lv_anim_set_time(addr(a), 1000)
  lv_anim_set_playback_delay(addr(a), 100)
  lv_anim_set_playback_time(addr(a), 300)
  lv_anim_set_repeat_delay(addr(a), 500)
  lv_anim_set_repeat_count(addr(a), LV_ANIM_REPEAT_INFINITE)
  lv_anim_set_path_cb(addr(a), lv_anim_path_ease_in_out)
  lv_anim_set_exec_cb(addr(a), anim_size_cb)
  discard lv_anim_start(addr(a))
  lv_anim_set_exec_cb(addr(a), anim_x_cb)
  lv_anim_set_values(addr(a), 10, 240)
  discard lv_anim_start(addr(a))

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()