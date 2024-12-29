## Create an animation timeline
import lvgl
import std/os


var anim_timeline*: ptr lv_anim_timeline_t = nil

var obj1*: ptr lv_obj_t = nil

var obj2*: ptr lv_obj_t = nil

var obj3*: ptr lv_obj_t = nil

var obj_width*: lv_coord_t = 90

var obj_height*: lv_coord_t = 70

proc set_width*(`var`: pointer; v: int32) =
  lv_obj_set_width(cast[ptr lv_obj_t](`var`), v.lv_coord_t)

proc set_height*(`var`: pointer; v: int32) =
  lv_obj_set_height(cast[ptr lv_obj_t](`var`), v.lv_coord_t)

proc anim_timeline_create*() =
  ##  obj1
  var a1: lv_anim_t
  lv_anim_init(addr(a1))
  lv_anim_set_var(addr(a1), obj1)
  lv_anim_set_values(addr(a1), 0, obj_width)
  lv_anim_set_early_apply(addr(a1), false)
  lv_anim_set_exec_cb(addr(a1), cast[lv_anim_exec_xcb_t](set_width))
  lv_anim_set_path_cb(addr(a1), lv_anim_path_overshoot)
  lv_anim_set_time(addr(a1), 300)
  var a2: lv_anim_t
  lv_anim_init(addr(a2))
  lv_anim_set_var(addr(a2), obj1)
  lv_anim_set_values(addr(a2), 0, obj_height)
  lv_anim_set_early_apply(addr(a2), false)
  lv_anim_set_exec_cb(addr(a2), cast[lv_anim_exec_xcb_t](set_height))
  lv_anim_set_path_cb(addr(a2), lv_anim_path_ease_out)
  lv_anim_set_time(addr(a2), 300)
  ##  obj2
  var a3: lv_anim_t
  lv_anim_init(addr(a3))
  lv_anim_set_var(addr(a3), obj2)
  lv_anim_set_values(addr(a3), 0, obj_width)
  lv_anim_set_early_apply(addr(a3), false)
  lv_anim_set_exec_cb(addr(a3), cast[lv_anim_exec_xcb_t](set_width))
  lv_anim_set_path_cb(addr(a3), lv_anim_path_overshoot)
  lv_anim_set_time(addr(a3), 300)
  var a4: lv_anim_t
  lv_anim_init(addr(a4))
  lv_anim_set_var(addr(a4), obj2)
  lv_anim_set_values(addr(a4), 0, obj_height)
  lv_anim_set_early_apply(addr(a4), false)
  lv_anim_set_exec_cb(addr(a4), cast[lv_anim_exec_xcb_t](set_height))
  lv_anim_set_path_cb(addr(a4), lv_anim_path_ease_out)
  lv_anim_set_time(addr(a4), 300)
  ##  obj3
  var a5: lv_anim_t
  lv_anim_init(addr(a5))
  lv_anim_set_var(addr(a5), obj3)
  lv_anim_set_values(addr(a5), 0, obj_width)
  lv_anim_set_early_apply(addr(a5), false)
  lv_anim_set_exec_cb(addr(a5), cast[lv_anim_exec_xcb_t](set_width))
  lv_anim_set_path_cb(addr(a5), lv_anim_path_overshoot)
  lv_anim_set_time(addr(a5), 300)
  var a6: lv_anim_t
  lv_anim_init(addr(a6))
  lv_anim_set_var(addr(a6), obj3)
  lv_anim_set_values(addr(a6), 0, obj_height)
  lv_anim_set_early_apply(addr(a6), false)
  lv_anim_set_exec_cb(addr(a6), cast[lv_anim_exec_xcb_t](set_height))
  lv_anim_set_path_cb(addr(a6), lv_anim_path_ease_out)
  lv_anim_set_time(addr(a6), 300)
  ##  Create anim timeline
  anim_timeline = lv_anim_timeline_create()
  lv_anim_timeline_add(anim_timeline, 0, addr(a1))
  lv_anim_timeline_add(anim_timeline, 0, addr(a2))
  lv_anim_timeline_add(anim_timeline, 200, addr(a3))
  lv_anim_timeline_add(anim_timeline, 200, addr(a4))
  lv_anim_timeline_add(anim_timeline, 400, addr(a5))
  lv_anim_timeline_add(anim_timeline, 400, addr(a6))

proc btn_start_event_handler*(e: ptr lv_event_t) =
  var btn: ptr lv_obj_t = cast[ptr lv_obj_t](lv_event_get_target(e))
  if not anim_timeline.bool:
    anim_timeline_create()
  var reverse: bool = lv_obj_has_state(btn, LV_STATE_CHECKED)
  lv_anim_timeline_set_reverse(anim_timeline, reverse)
  lv_anim_timeline_start(anim_timeline)

proc btn_del_event_handler*(e: ptr lv_event_t) =
  LV_UNUSED(e)
  if anim_timeline:
    lv_anim_timeline_del(anim_timeline)
    anim_timeline = nil

proc btn_stop_event_handler*(e: ptr lv_event_t) =
  LV_UNUSED(e)
  if anim_timeline:
    lv_anim_timeline_stop(anim_timeline)

proc slider_prg_event_handler*(e: ptr lv_event_t) =
  var slider: ptr lv_obj_t = lv_event_get_target(e)
  if not anim_timeline:
    anim_timeline_create()
  var progress: int32_t = lv_slider_get_value(slider)
  lv_anim_timeline_set_progress(anim_timeline, progress)


proc main =
  lv_init()
  halInit(400,300)


  var par: ptr lv_obj_t = lv_screen_active()
  lv_obj_set_flex_flow(par, LV_FLEX_FLOW_ROW)
  lv_obj_set_flex_align(par, LV_FLEX_ALIGN_SPACE_AROUND, LV_FLEX_ALIGN_CENTER,
                        LV_FLEX_ALIGN_CENTER)
  ##  create btn_start
  var btn_start: ptr lv_obj_t = lv_btn_create(par)
  lv_obj_add_event(btn_start, btn_start_event_handler, LV_EVENT_VALUE_CHANGED, nil)
  lv_obj_add_flag(btn_start, LV_OBJ_FLAG_IGNORE_LAYOUT)
  lv_obj_add_flag(btn_start, LV_OBJ_FLAG_CHECKABLE)
  lv_obj_align(btn_start, LV_ALIGN_TOP_MID, -100, 20)
  var label_start: ptr lv_obj_t = lv_label_create(btn_start)
  lv_label_set_text(label_start, "Start")
  lv_obj_center(label_start)
  ##  create btn_del
  var btn_del: ptr lv_obj_t = lv_btn_create(par)
  lv_obj_add_event(btn_del, btn_del_event_handler, LV_EVENT_CLICKED, nil)
  lv_obj_add_flag(btn_del, LV_OBJ_FLAG_IGNORE_LAYOUT)
  lv_obj_align(btn_del, LV_ALIGN_TOP_MID, 0, 20)
  var label_del: ptr lv_obj_t = lv_label_create(btn_del)
  lv_label_set_text(label_del, "Delete")
  lv_obj_center(label_del)
  ##  create btn_stop
  var btn_stop: ptr lv_obj_t = lv_btn_create(par)
  lv_obj_add_event(btn_stop, btn_stop_event_handler, LV_EVENT_CLICKED, nil)
  lv_obj_add_flag(btn_stop, LV_OBJ_FLAG_IGNORE_LAYOUT)
  lv_obj_align(btn_stop, LV_ALIGN_TOP_MID, 100, 20)
  var label_stop: ptr lv_obj_t = lv_label_create(btn_stop)
  lv_label_set_text(label_stop, "Stop")
  lv_obj_center(label_stop)
  ##  create slider_prg
  var slider_prg: ptr lv_obj_t = lv_slider_create(par)
  lv_obj_add_event(slider_prg, slider_prg_event_handler, LV_EVENT_VALUE_CHANGED,
                   nil)
  lv_obj_add_flag(slider_prg, LV_OBJ_FLAG_IGNORE_LAYOUT)
  lv_obj_align(slider_prg, LV_ALIGN_BOTTOM_MID, 0, -20)
  lv_slider_set_range(slider_prg, 0, 65535)
  ##  create 3 objects
  obj1 = lv_obj_create(par)
  lv_obj_set_size(obj1, obj_width, obj_height)
  obj2 = lv_obj_create(par)
  lv_obj_set_size(obj2, obj_width, obj_height)
  obj3 = lv_obj_create(par)
  lv_obj_set_size(obj3, obj_width, obj_height)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()