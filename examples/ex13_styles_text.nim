## Using the outline style properties
import lvgl
import std/[os, streams]

# #define LV_IMG_DECLARE(var_name) extern const lv_img_dsc_t var_name;


# Create an image from the png file


proc main =
  lv_init()
  halInit(400,300)

  var style: lv_style_t
  lv_style_init(addr(style))
  lv_style_set_radius(addr(style), 5)
  lv_style_set_bg_opa(addr(style), LV_OPA_COVER)
  lv_style_set_bg_color(addr(style), lv_palette_lighten(LV_PALETTE_GREY, 2))
  lv_style_set_border_width(addr(style), 2)
  lv_style_set_border_color(addr(style), lv_palette_main(LV_PALETTE_BLUE))
  lv_style_set_pad_all(addr(style), 10)
  lv_style_set_text_color(addr(style), lv_palette_main(LV_PALETTE_BLUE))
  lv_style_set_text_letter_space(addr(style), 5)
  lv_style_set_text_line_space(addr(style), 20)
  lv_style_set_text_decor(addr(style), LV_TEXT_DECOR_UNDERLINE)
  ## Create an object with the new style
  var obj: ptr lv_obj_t = lv_label_create(lv_scr_act())
  lv_obj_add_style(obj, addr(style), 0)
  lv_label_set_text(obj, "Text of\na label")
  lv_obj_center(obj)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()