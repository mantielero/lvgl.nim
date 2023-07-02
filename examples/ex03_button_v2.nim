## Create a button with a label and react on click event
import lvgl
import std/[os, times] #, sugar]


proc btn_clicked_cb(e: ptr lv_event_t) {.cdecl.} =
  let btn = cast[ptr lv_obj_t](lv_event_get_target(e))
  var cnt = cast[ptr int](lv_event_get_user_data(e))
  
  echo now().utc, " clicked"
  cnt[] += 1
  let label = lv_obj_get_child(btn, 0)
  lv_label_set_text_fmt(label, "Button: %d", cnt[])


proc main =
  lv_init()
  halInit(400,300)

  let btn = lv_btn_create(lv_scr_act()) # Add a button the current screen
  btn.lv_obj_set_pos(10, 10)            # Set its position
  btn.lv_obj_set_size(120, 50)          # Set its size
  #let btn_event_cb = gen()
  #let btn_event_cb = btn_event_cb_gen()
  var cnt = create int
  defer: dealloc(cnt)
  btn.lv_obj_add_event(btn_clicked_cb, LV_EVENT_CLICKED, cnt)
  #btn.lv_obj_add_event(btn_event_cb, LV_EVENT_ALL, cast[pointer](nil)) # Assign a callback to the button

  let label = lv_label_create(btn)      # Add a label to the button
  label.lv_label_set_text( "Button" )    # Set the labels text
  lv_obj_center(label)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()
