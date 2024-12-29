## Opacity and Transformations
import lvgl
import std/[os, streams]


proc main =
  lv_init()
  halInit(400,300)

  var btn: ptr lv_obj_t
  var label: ptr lv_obj_t
  ## Normal button
  btn = lv_button_create(lv_screen_active())
  lv_obj_set_size(btn, 100, 40)
  lv_obj_align(btn, LV_ALIGN_CENTER, 0, -70)
  label = lv_label_create(btn)
  lv_label_set_text(label, "Normal")
  lv_obj_center(label)
  ## Set opacity
  ## The button and the label is rendered to a layer first and that layer is blended
  btn = lv_button_create(lv_screen_active())
  lv_obj_set_size(btn, 100, 40)
  lv_obj_set_style_opa(btn, LV_OPA_50.lv_opa_t, 0)
  lv_obj_align(btn, LV_ALIGN_CENTER, 0, 0)
  label = lv_label_create(btn)
  lv_label_set_text(label, "Opa:50%")
  lv_obj_center(label)
  ## Set transformations
  ## The button and the label is rendered to a layer first and that layer is transformed
  btn = lv_button_create(lv_screen_active())
  lv_obj_set_size(btn, 100, 40)
  lv_obj_set_style_transform_rotation(btn, 150, 0)
  ## 15 deg
  lv_obj_set_style_transform_zoom(btn, 256 + 64, 0)
  ## 1.25x
  lv_obj_set_style_transform_pivot_x(btn, 50, 0)
  lv_obj_set_style_transform_pivot_y(btn, 20, 0)
  lv_obj_set_style_opa(btn, LV_OPA_50.lv_opa_t, 0)
  lv_obj_align(btn, LV_ALIGN_CENTER, 0, 70)
  label = lv_label_create(btn)
  lv_label_set_text(label, "Transf.")
  lv_obj_center(label)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()