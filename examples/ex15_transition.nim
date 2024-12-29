## Using the outline style properties
import lvgl
import std/[os, streams]

# #define LV_IMG_DECLARE(var_name) extern const lv_img_dsc_t var_name;


# Create an image from the png file


proc main =
  lv_init()
  halInit(400,300)
  #var prps = @
  # : UncheckedArray[lv_style_prop_t]
  var props = [LV_STYLE_BG_COLOR,
      LV_STYLE_BORDER_COLOR, LV_STYLE_BORDER_WIDTH, 0.lv_style_prop_t]
  var propsUA = cast[ptr UncheckedArray[lv_style_prop_t]](props[0].addr)
  ##  A default transition
  ##  Make it fast (100ms) and start with some delay (200 ms)
  var trans_def: lv_style_transition_dsc_t
  lv_style_transition_dsc_init(addr(trans_def), propsUA, lv_anim_path_linear, 100,
                               200, nil)
  ##  A special transition when going to pressed state
  ##  Make it slow (500 ms) but start  without delay
  var trans_pr: lv_style_transition_dsc_t
  lv_style_transition_dsc_init(addr(trans_pr), propsUA, lv_anim_path_linear, 500, 0,
                               nil)
  var style_def: lv_style_t
  lv_style_init(addr(style_def))
  lv_style_set_transition(addr(style_def), addr(trans_def))
  var style_pr: lv_style_t
  lv_style_init(addr(style_pr))
  lv_style_set_bg_color(addr(style_pr), lv_palette_main(LV_PALETTE_RED))
  lv_style_set_border_width(addr(style_pr), 6)
  lv_style_set_border_color(addr(style_pr), lv_palette_darken(LV_PALETTE_RED, 3))
  lv_style_set_transition(addr(style_pr), addr(trans_pr))
  ## Create an object with the new style_pr
  var obj: ptr lv_obj_t = lv_obj_create(lv_screen_active())
  lv_obj_add_style(obj, addr(style_def), 0)
  lv_obj_add_style(obj, addr(style_pr), LV_STATE_PRESSED.lv_style_selector_t)
  lv_obj_center(obj)
  # Main loop
  while true:
    ##  Periodically call the lv_task handler.
    ##  It could be done in a timer interrupt or an OS task too.
    discard lv_timer_handler()
    sleep(5 * 10)

main()