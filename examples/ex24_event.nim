## Create a button with a label and react on click event
import lvgl
import std/[os, times]

proc event_cb*(e: ptr lv_event_t) {.cdecl.} =
  #LV_LOG_USER("Clicked")
  #cnt[] = 1
  var cnt = cast[ptr int](lv_event_get_user_data(e))  
  var btn = cast[ptr lv_obj_t]( lv_event_get_target(e) )
  var label = lv_obj_get_child(btn, 0) 
  lv_label_set_text_fmt(label, "%d", cnt[])
  #lv_label_set_text_fmt(label, "Button: %d", cnt[])
  cnt[] += 1

## *
##  Add click event to a button
##

proc main =
  lv_init()
  halInit(400,300)

  var btn: ptr lv_obj_t = lv_button_create(lv_screen_active())
  lv_obj_set_size(btn, 100, 50)
  lv_obj_center(btn)
  var cnt = create int
  cnt[] = 1
  defer: dealloc(cnt)  
  var res = btn.lv_obj_add_event_cb(event_cb, LV_EVENT_CLICKED, cnt)
  var label: ptr lv_obj_t = lv_label_create(btn)
  lv_label_set_text(label, "Click me!")
  lv_obj_center(label)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()