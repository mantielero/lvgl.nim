## Using the outline style properties
import lvgl
import std/[os, streams]

var style_btn*: lv_style_t

## Will be called when the styles of the base theme are already added
##   to add new styles

proc new_theme_apply_cb*(th: ptr lv_theme_t; obj: ptr lv_obj_t) {.cdecl.} =
  #LV_UNUSED(th)
  if lv_obj_check_type(obj, addr(lv_btn_class)):
    lv_obj_add_style(obj, addr(style_btn), 0)

proc new_theme_init_and_set*() =
  ## Initialize the styles
  lv_style_init(addr(style_btn))
  lv_style_set_bg_color(addr(style_btn), lv_palette_main(LV_PALETTE_GREEN))
  lv_style_set_border_color(addr(style_btn),
                            lv_palette_darken(LV_PALETTE_GREEN, 3))
  lv_style_set_border_width(addr(style_btn), 3)
  ## Initialize the new theme from the current theme
  var th_act: ptr lv_theme_t = lv_disp_get_theme(nil)
  var th_new: lv_theme_t
  th_new = th_act[]
  ## Set the parent theme and the style apply callback for the new theme
  lv_theme_set_parent(addr(th_new), th_act)
  lv_theme_set_apply_cb(addr(th_new), new_theme_apply_cb)
  ## Assign the new theme to the current display
  lv_disp_set_theme(nil, addr(th_new))

## *
##  Extending the current theme
##


proc main =
  lv_init()
  halInit(400,300)

  var btn: ptr lv_obj_t
  var label: ptr lv_obj_t
  btn = lv_btn_create(lv_scr_act())
  lv_obj_align(btn, LV_ALIGN_TOP_MID, 0, 20)
  label = lv_label_create(btn)
  lv_label_set_text(label, "Original theme")
  new_theme_init_and_set()
  #echo repr lv_scr_act()
  btn = lv_btn_create(lv_scr_act())
  lv_obj_align(btn, LV_ALIGN_BOTTOM_MID, 0, -20)
  label = lv_label_create(btn)
  lv_label_set_text(label, "New theme")

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()