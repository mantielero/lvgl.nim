## Create a button with a label and react on click event
import lvgl
import std/[os, times] #, sugar]


#include <inttypes.h>
# type
#   PRId32 {.importc.}

var label*: ptr lv_obj_t

proc slider_event_cb*(e: ptr lv_event_t) {.cdecl.} =
  var slider: ptr lv_obj_t = cast[ptr lv_obj_t](lv_event_get_target(e))
  ## Refresh the text
  # LV_PRId32 --> "d"
  lv_label_set_text_fmt(label, "%d", lv_slider_get_value(slider))
  lv_obj_align_to(label, slider, LV_ALIGN_OUT_TOP_MID, 0, -15)
  ## Align top of the slider


proc main =
  lv_init()
  halInit(400,300)

  ## Create a slider in the center of the display
  var slider: ptr lv_obj_t = lv_slider_create(lv_screen_active())
  lv_obj_set_width(slider, 200)
  ## Set the width
  lv_obj_center(slider)
  ## Align to the center of the parent (screen)ive
  var res = lv_obj_add_event_cb(slider, slider_event_cb, LV_EVENT_VALUE_CHANGED, nil)
  ## Assign an event function
  ## Create a label above the slider
  label = lv_label_create(lv_screen_active())
  lv_label_set_text(label, "0")
  lv_obj_align_to(label, slider, LV_ALIGN_OUT_TOP_MID, 0, -15)
  ## Align top of the slider

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()
