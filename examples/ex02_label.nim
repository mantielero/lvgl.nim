import lvgl
import std/os

proc main =
  lv_init()
  halInit(400,300) 

  # Change the active screen's background color
  let color1:lv_color_t = lv_color_hex(0x003a57'u32)
  lv_obj_set_style_bg_color(lv_screen_active(), 
                            color1, #lv_color_hex(0x003a57'u32), 
                            LV_PART_MAIN.lv_style_selector_t)

  # Create a white label, set its text and align it to the center
  let label = lv_label_create(lv_screen_active())
  label.lv_label_set_text("Hello world")
  lv_obj_set_style_text_color(lv_screen_active(), 
                              lv_color_hex(0xffffff'u32), 
                              LV_PART_MAIN.lv_style_selector_t)
  lv_obj_align(label, LV_ALIGN_CENTER.lv_align_t, 0.lv_coord_t, 0.lv_coord_t)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 1000)

main()
