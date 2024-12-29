## Start animation on an event
import lvgl
import std/os


proc anim_x_cb*(`var`: pointer; v: int32) {.cdecl.} =
  lv_obj_set_x(cast[ptr lv_obj_t](`var`), v.lv_coord_t)

proc sw_event_cb*(e: ptr lv_event_t) {.cdecl.} =
  var sw: ptr lv_obj_t = cast[ptr lv_obj_t]( lv_event_get_target(e) )
  var label: ptr lv_obj_t = cast[ptr lv_obj_t]( lv_event_get_user_data(e) )
  if lv_obj_has_state(sw, LV_STATE_CHECKED):
    var a: lv_anim_t
    lv_anim_init(addr(a))
    lv_anim_set_var(addr(a), label)
    lv_anim_set_values(addr(a), lv_obj_get_x(label), 100)
    lv_anim_set_time(addr(a), 500)
    lv_anim_set_exec_cb(addr(a), anim_x_cb)
    lv_anim_set_path_cb(addr(a), lv_anim_path_overshoot)
    discard lv_anim_start(addr(a))
  else:
    var a: lv_anim_t
    lv_anim_init(addr(a))
    lv_anim_set_var(addr(a), label)
    lv_anim_set_values(addr(a), lv_obj_get_x(label), -lv_obj_get_width(label))
    lv_anim_set_time(addr(a), 500)
    lv_anim_set_exec_cb(addr(a), anim_x_cb)
    lv_anim_set_path_cb(addr(a), lv_anim_path_ease_in)
    discard lv_anim_start(addr(a))

proc main =
  lv_init()
  halInit(400,300)

  var label: ptr lv_obj_t = lv_label_create(lv_screen_active())
  lv_label_set_text(label, "Hello animations!")
  lv_obj_set_pos(label, 100, 10)
  var sw: ptr lv_obj_t = lv_switch_create(lv_screen_active())
  lv_obj_center(sw)
  lv_obj_add_state(sw, LV_STATE_CHECKED)
  lv_obj_add_event(sw, sw_event_cb, LV_EVENT_VALUE_CHANGED, label)
  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()