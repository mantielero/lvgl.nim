## Using the outline style properties
import lvgl
import std/[os, streams]

# #define LV_IMG_DECLARE(var_name) extern const lv_img_dsc_t var_name;


# Create an image from the png file


proc main =
  lv_init()
  halInit(400,300)

  ## A base style
  var style_base: lv_style_t
  lv_style_init(addr(style_base))
  lv_style_set_bg_color(addr(style_base), lv_palette_main(LV_PALETTE_LIGHT_BLUE))
  lv_style_set_border_color(addr(style_base),
                            lv_palette_darken(LV_PALETTE_LIGHT_BLUE, 3))
  lv_style_set_border_width(addr(style_base), 2)
  lv_style_set_radius(addr(style_base), 10)
  lv_style_set_shadow_width(addr(style_base), 10)
  lv_style_set_shadow_offset_y(addr(style_base), 5)
  lv_style_set_shadow_opa(addr(style_base), LV_OPA_50.lv_opa_t)
  lv_style_set_text_color(addr(style_base), lv_color_white())
  lv_style_set_width(addr(style_base), 100)


  # LV_SIZE_CONTENT --> LV_COORD_SET_SPEC(2001)
  #lv_style_set_height(addr(style_base), LV_SIZE_CONTENT)
  lv_style_set_height(addr(style_base), 60)
  ## Set only the properties that should be different
  var style_warning: lv_style_t
  lv_style_init(addr(style_warning))
  lv_style_set_bg_color(addr(style_warning), lv_palette_main(LV_PALETTE_YELLOW))
  lv_style_set_border_color(addr(style_warning),
                            lv_palette_darken(LV_PALETTE_YELLOW, 3))
  lv_style_set_text_color(addr(style_warning),
                          lv_palette_darken(LV_PALETTE_YELLOW, 4))
  ## Create an object with the base style only
  var obj_base: ptr lv_obj_t = lv_obj_create(lv_screen_active())
  lv_obj_add_style(obj_base, addr(style_base), 0)
  lv_obj_align(obj_base, LV_ALIGN_LEFT_MID, 20, 0)
  var label: ptr lv_obj_t = lv_label_create(obj_base)
  lv_label_set_text(label, "Base")
  lv_obj_center(label)
  ## Create another object with the base style and earnings style too
  var obj_warning: ptr lv_obj_t = lv_obj_create(lv_screen_active())
  lv_obj_add_style(obj_warning, addr(style_base), 0)
  lv_obj_add_style(obj_warning, addr(style_warning), 0)
  lv_obj_align(obj_warning, LV_ALIGN_RIGHT_MID, -20, 0)
  label = lv_label_create(obj_warning)
  lv_label_set_text(label, "Warning")
  lv_obj_center(label)

  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()