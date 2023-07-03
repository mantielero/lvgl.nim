## Using the outline style properties
import lvgl
import std/[os, streams]

# #define LV_IMG_DECLARE(var_name) extern const lv_img_dsc_t var_name;


# Create an image from the png file


proc main =
  lv_init()
  halInit(400,300)

  var style_indic: lv_style_t
  lv_style_init(addr(style_indic))
  lv_style_set_bg_color(addr(style_indic), lv_palette_lighten(LV_PALETTE_RED, 3))
  lv_style_set_bg_grad_color(addr(style_indic), lv_palette_main(LV_PALETTE_RED))
  lv_style_set_bg_grad_dir(addr(style_indic), LV_GRAD_DIR_HOR)
  var style_indic_pr: lv_style_t
  lv_style_init(addr(style_indic_pr))
  lv_style_set_shadow_color(addr(style_indic_pr), lv_palette_main(LV_PALETTE_RED))
  lv_style_set_shadow_width(addr(style_indic_pr), 10)
  lv_style_set_shadow_spread(addr(style_indic_pr), 3)
  ## Create an object with the new style_pr
  var obj: ptr lv_obj_t = lv_slider_create(lv_scr_act())
  lv_obj_add_style(obj, addr(style_indic), LV_PART_INDICATOR.lv_style_selector_t)
  lv_obj_add_style(obj, addr(style_indic_pr),
                   LV_PART_INDICATOR.int or LV_STATE_PRESSED.int)   # https://nim-lang.org/docs/bitops.html
  lv_slider_set_value(obj, 70, LV_ANIM_OFF)
  lv_obj_center(obj)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()