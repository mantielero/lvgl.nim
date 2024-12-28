## Create styles from scratch for buttons.

import lvgl
import std/[os, times]

var 
  style_btn*: lv_style_t
  style_btn_pressed*: lv_style_t
  style_btn_red*: lv_style_t

proc darken*(dsc: ptr lv_color_filter_dsc_t; 
             color: lv_color_t; 
             opa: lv_opa_t): lv_color_t {.cdecl.} =
  #LV_UNUSED(dsc)
  return lv_color_darken(color, opa)

proc styleInit*() =
  ## Create a simple button style
  lv_style_init(addr(style_btn))
  lv_style_set_radius(addr(style_btn), 10)
  lv_style_set_bg_opa(addr(style_btn), LV_OPA_COVER.lv_opa_t)
  lv_style_set_bg_color(addr(style_btn), lv_palette_lighten(LV_PALETTE_GREY, 3))
  lv_style_set_bg_grad_color(addr(style_btn), lv_palette_main(LV_PALETTE_GREY))
  lv_style_set_bg_grad_dir(addr(style_btn), LV_GRAD_DIR_VER)
  lv_style_set_border_color(addr(style_btn), lv_color_black())
  lv_style_set_border_opa(addr(style_btn), LV_OPA_20.lv_opa_t)
  lv_style_set_border_width(addr(style_btn), 2)
  lv_style_set_text_color(addr(style_btn), lv_color_black())
  ## Create a style for the pressed state.
  ## Use a color filter to simply modify all colors in this state
  var color_filter: lv_color_filter_dsc_t
  lv_color_filter_dsc_init(addr(color_filter), darken)
  lv_style_init(addr(style_btn_pressed))
  lv_style_set_color_filter_dsc(addr(style_btn_pressed), addr(color_filter))
  lv_style_set_color_filter_opa(addr(style_btn_pressed), LV_OPA_20.lv_opa_t)
  ## Create a red style. Change only some colors.
  lv_style_init(addr(style_btn_red))
  lv_style_set_bg_color(addr(style_btn_red), lv_palette_main(LV_PALETTE_RED))
  lv_style_set_bg_grad_color(addr(style_btn_red),
                             lv_palette_lighten(LV_PALETTE_RED, 3))


proc main =
  lv_init()
  halInit(400,300)

  styleInit() # Initialize the style

  # Create a button and use the new styles
  let btn: ptr struct_lv_obj_t = lv_button_create(lv_screen_active()) # Add a button the current screen

  #[ Remove the styles coming from the theme
     * Note that size and position are also stored as style properties
     * so lv_obj_remove_style_all will remove the set size and position too ]#
  lv_obj_remove_style_all(btn)
  lv_obj_set_pos(btn, 10, 10)     # Set its position
  lv_obj_set_size(btn, 120, 50)   # Set its size
  lv_obj_add_style(btn, addr(style_btn), 0)
  lv_obj_add_style(btn, addr(style_btn_pressed), LV_STATE_PRESSED.lv_style_selector_t)

  # Add a label to the button
  var label = lv_label_create(btn)
  lv_label_set_text(label, "Button")
  lv_obj_center(label)


  ## Create another button and use the red style too
  var btn2: ptr lv_obj_t = lv_button_create(lv_screen_active())
  lv_obj_remove_style_all(btn2)
  ## Remove the styles coming from the theme
  lv_obj_set_pos(btn2, 10, 80)
  lv_obj_set_size(btn2, 120, 50)
  lv_obj_add_style(btn2, addr(style_btn), 0)
  lv_obj_add_style(btn2, addr(style_btn_red), 0)
  lv_obj_add_style(btn2, addr(style_btn_pressed), LV_STATE_PRESSED.lv_style_selector_t)
  lv_obj_set_style_radius(btn2, LV_RADIUS_CIRCLE, 0)
  ## Add a local style too
  label = lv_label_create(btn2)
  lv_label_set_text(label, "Button 2")
  lv_obj_center(label)



  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()

#[


void lv_example_get_started_3(void)
{

    /*Create another button and use the red style too*/
    lv_obj_t * btn2 = lv_btn_create(lv_scr_act());
    lv_obj_remove_style_all(btn2);                      /*Remove the styles coming from the theme*/
    lv_obj_set_pos(btn2, 10, 80);
    lv_obj_set_size(btn2, 120, 50);
    lv_obj_add_style(btn2, &style_btn, 0);
    lv_obj_add_style(btn2, &style_btn_red, 0);
    lv_obj_add_style(btn2, &style_btn_pressed, LV_STATE_PRESSED);
    lv_obj_set_style_radius(btn2, LV_RADIUS_CIRCLE, 0); /*Add a local style too*/

    label = lv_label_create(btn2);
    lv_label_set_text(label, "Button 2");
    lv_obj_center(label);
}

#endif
]#