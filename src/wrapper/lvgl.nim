# Generated @ 2023-07-01T17:14:09+02:00
# Command line:
#   /home/jose/.nimble/pkgs/nimterop-0.6.13/nimterop/toast -pnrk -f:ast2 --prefix=__,_ -I../components/lvgl ../components/lvgl/lvgl.h

# const 'LV_STRCPY' has unsupported value 'lv_strcpy_builtin'
# const 'LV_LOG_LEVEL' has unsupported value 'LV_LOG_LEVEL_NONE'
# const 'LV_PRId32' has unsupported value 'PRId32'
# const 'LV_PRIu32' has unsupported value 'PRIu32'
# const 'LV_PRIx32' has unsupported value 'PRIx32'
# const 'LV_PRIX32' has unsupported value 'PRIX32'
# const 'lv_snprintf' has unsupported value 'LV_SNPRINTF'
# const 'lv_vsnprintf' has unsupported value 'LV_VSNPRINTF'
# const 'LV_SIZE_CONTENT' has unsupported value 'LV_COORD_SET_SPEC(2001)'
# const '_LV_COLOR_MAKE_TYPE_HELPER' has unsupported value '(lv_color_t)'
# const '_LV_COLOR_ZERO_INITIALIZER1' has unsupported value '{0x00}'
# const '_LV_COLOR_ZERO_INITIALIZER8' has unsupported value '{0x00}'
# const '_LV_COLOR_ZERO_INITIALIZER16' has unsupported value '{0x00, 0x00, 0x00}'
# const '_LV_COLOR_ZERO_INITIALIZER24' has unsupported value '{0x00, 0x00, 0x00}'
# const '_LV_COLOR_ZERO_INITIALIZER32' has unsupported value '{0x00, 0x00, 0x00, 0x00}'
# const '_LV_COLOR_ZERO_INITIALIZER' has unsupported value 'LV_CONCAT(_LV_COLOR_ZERO_INITIALIZER, LV_COLOR_DEPTH)'
# const 'LV_STYLE_CONST_PROPS_END' has unsupported value '{ .prop_ptr = &lv_style_const_prop_id_inv, .value = { .num = 0 } }'
# const 'LV_HOR_RES' has unsupported value 'lv_disp_get_hor_res(lv_disp_get_default())'
# const 'LV_VER_RES' has unsupported value 'lv_disp_get_ver_res(lv_disp_get_default())'
# const 'LV_REFR_TASK_PRIO' has unsupported value 'LV_TASK_PRIO_MID'
# const 'LV_LABEL_TEXT_SELECTION_OFF' has unsupported value 'LV_DRAW_LABEL_NO_TXT_SEL'
# const 'LV_CHART_POINT_NONE' has unsupported value '(INT16_MAX)'
# const 'lv_spinbox_set_pos' has unsupported value 'lv_spinbox_set_cursor_pos'
# const 'LV_TABLE_CELL_NONE' has unsupported value '0XFFFF'
# const 'LV_OBJ_FLAG_FLEX_IN_NEW_TRACK' has unsupported value 'LV_OBJ_FLAG_LAYOUT_1'
# const 'LV_NO_TASK_READY' has unsupported value 'LV_NO_TIMER_READY'
# const 'LV_INDEV_STATE_REL' has unsupported value 'LV_INDEV_STATE_RELEASED'
# const 'LV_INDEV_STATE_PR' has unsupported value 'LV_INDEV_STATE_PRESSED'
# const 'LV_OBJ_FLAG_SNAPABLE' has unsupported value 'LV_OBJ_FLAG_SNAPPABLE /*Fixed typo*/'
# const 'LV_IMG_ZOOM_NONE' has unsupported value 'LV_ZOOM_NONE'
# const 'LV_COLOR_SIZE' has unsupported value 'LV_COLOR_DEPTH'
{.push hint[ConvFromXtoItselfNotNeeded]: off.}
import macros, os

macro defineEnum(typ: untyped): untyped =
  result = newNimNode(nnkStmtList)

  # Enum mapped to distinct cint
  result.add quote do:
    type `typ`* = distinct cint

  for i in ["+", "-", "*", "div", "mod", "shl", "shr", "or", "and", "xor", "<", "<=", "==", ">", ">="]:
    let
      ni = newIdentNode(i)
      typout = if i[0] in "<=>": newIdentNode("bool") else: typ # comparisons return bool
    if i[0] == '>': # cannot borrow `>` and `>=` from templates
      let
        nopp = if i.len == 2: newIdentNode("<=") else: newIdentNode("<")
      result.add quote do:
        proc `ni`*(x: `typ`, y: cint): `typout` = `nopp`(y, x)
        proc `ni`*(x: cint, y: `typ`): `typout` = `nopp`(y, x)
        proc `ni`*(x, y: `typ`): `typout` = `nopp`(y, x)
    else:
      result.add quote do:
        proc `ni`*(x: `typ`, y: cint): `typout` {.borrow.}
        proc `ni`*(x: cint, y: `typ`): `typout` {.borrow.}
        proc `ni`*(x, y: `typ`): `typout` {.borrow.}
    result.add quote do:
      proc `ni`*(x: `typ`, y: int): `typout` = `ni`(x, y.cint)
      proc `ni`*(x: int, y: `typ`): `typout` = `ni`(x.cint, y)

  let
    divop = newIdentNode("/")   # `/`()
    dlrop = newIdentNode("$")   # `$`()
    notop = newIdentNode("not") # `not`()
  result.add quote do:
    proc `divop`*(x, y: `typ`): `typ` = `typ`((x.float / y.float).cint)
    proc `divop`*(x: `typ`, y: cint): `typ` = `divop`(x, `typ`(y))
    proc `divop`*(x: cint, y: `typ`): `typ` = `divop`(`typ`(x), y)
    proc `divop`*(x: `typ`, y: int): `typ` = `divop`(x, y.cint)
    proc `divop`*(x: int, y: `typ`): `typ` = `divop`(x.cint, y)

    proc `dlrop`*(x: `typ`): string {.borrow.}
    proc `notop`*(x: `typ`): `typ` {.borrow.}

type va_list* {.importc, header:"<stdarg.h>".} = object


const srcDir = currentSourcePath.parentDir().parentDir()

{.pragma: implvglHdr,
  header: srcDir & "/components/lvgl/lvgl.h".}
{.experimental: "codeReordering".}
{.passC: "-I../components/lvgl".}
defineEnum(lv_res_t)         ## ```
                             ##   *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ##     
                             ##    LVGL error codes.
                             ## ```
defineEnum(lv_anim_enable_t) ## ```
                             ##   The default value just prevents GCC warning
                             ##    *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ##      Can be used to indicate if animations are enabled or disabled in a case
                             ## ```
defineEnum(Enum_lvglh1) ## ```
                        ##   The following list is generated using
                        ##    cat src/font/lv_symbol_def.h | sed -E -n 's/^#define\s+LV_(SYMBOL_\w+).*".*$/    _LV_STR_\1,/p'
                        ## ```
defineEnum(lv_align_t)
defineEnum(lv_dir_t)
defineEnum(lv_font_subpx_t) ## ```
                            ##   The bitmaps might be upscaled by 3 to achieve subpixel rendering.
                            ## ```
defineEnum(lv_opa_t)
defineEnum(lv_color_format_t)
defineEnum(lv_palette_t)
defineEnum(lv_text_flag_t)
defineEnum(lv_text_cmd_state_t) ## ```
                                ##   State machine for text renderer.
                                ## ```
defineEnum(lv_text_align_t)  ## ```
                             ##   Label align policy
                             ## ```
defineEnum(lv_base_dir_t)    ## ```
                             ##   *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ## ```
defineEnum(lv_blend_mode_t)  ## ```
                             ##   *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ##     
                             ##    Possible options how to blend opaque drawings
                             ## ```
defineEnum(lv_text_decor_t)  ## ```
                             ##   Some options to apply decorations on texts.
                             ##    'OR'ed values can be used.
                             ## ```
defineEnum(lv_border_side_t) ## ```
                             ##   Selects on which sides border should be drawn
                             ##    'OR'ed values can be used.
                             ## ```
defineEnum(lv_grad_dir_t)    ## ```
                             ##   The direction of the gradient.
                             ## ```
defineEnum(lv_dither_mode_t) ## ```
                             ##   The dithering algorithm for the gradient
                             ##    Depends on LV_DRAW_SW_GRADIENT_DITHER
                             ## ```
defineEnum(lv_style_prop_t) ## ```
                            ##   Enumeration of all built in style properties
                            ##   
                            ##    Props are split into groups of 16. When adding a new prop to a group, ensure it does not overflow into the next one.
                            ## ```
defineEnum(lv_style_res_t)
defineEnum(lv_state_t)       ## ```
                             ##   Possible states of a widget.
                             ##    OR-ed values are possible
                             ## ```
defineEnum(lv_part_t)
defineEnum(lv_obj_flag_t) ## ```
                          ##   On/Off features controlling the object's behavior.
                          ##    OR-ed values are possible
                          ## ```
defineEnum(lv_obj_draw_part_type_t) ## ```
                                    ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_obj_class
                                    ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                    ## ```
defineEnum(lv_event_code_t)  ## ```
                             ##   Type of event being sent to the object.
                             ## ```
defineEnum(lv_disp_rotation_t)
defineEnum(lv_disp_render_mode_t)
defineEnum(lv_scr_load_anim_t)
defineEnum(lv_obj_tree_walk_res_t)
defineEnum(lv_scrollbar_mode_t) ## ```
                                ##   Scrollbar modes: shows when should the scrollbars be visible
                                ## ```
defineEnum(lv_scroll_snap_t) ## ```
                             ##   Scroll span align options. Tells where to align the snappable children when scroll stops.
                             ## ```
defineEnum(lv_style_state_cmp_t)
defineEnum(lv_fs_res_t)      ## ```
                             ##   *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ##     
                             ##    Errors in the file system module.
                             ## ```
defineEnum(lv_fs_mode_t)     ## ```
                             ##   File open mode.
                             ## ```
defineEnum(lv_fs_whence_t)   ## ```
                             ##   Seek modes.
                             ## ```
defineEnum(lv_img_src_t)     ## ```
                             ##   *******************
                             ##         MACROS
                             ##   *******************
                             ##     
                             ##    @file lv_types.h
                             ##   
                             ##    
                             ##     
                             ##    @file lv_area.h
                             ##   
                             ##    
                             ##    ******************
                             ##         DEFINES
                             ##   ******************
                             ##    *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ##     
                             ##    Source of image.
                             ## ```
defineEnum(lv_draw_mask_res_t) ## ```
                               ##   *******************
                               ##         TYPEDEFS
                               ##   *******************
                               ## ```
defineEnum(lv_draw_mask_type_t)
defineEnum(lv_draw_mask_line_side_t)
defineEnum(lv_draw_layer_flags_t)
defineEnum(lv_cover_res_t)   ## ```
                             ##   Cover check results.
                             ## ```
defineEnum(lv_layer_type_t)
defineEnum(lv_obj_class_editable_t)
defineEnum(lv_obj_class_group_def_t)
defineEnum(lv_obj_class_theme_inheritable_t)
defineEnum(lv_key_t) ## ```
                     ##   @file lv_types.h
                     ##   
                     ##    
                     ##    ******************
                     ##         DEFINES
                     ##   ******************
                     ##     Predefined keys to control the focused object via lv_group_send(group, c)
                     ## ```
defineEnum(lv_group_refocus_policy_t)
defineEnum(lv_indev_type_t)  ## ```
                             ##   Possible input device types
                             ## ```
defineEnum(lv_indev_state_t) ## ```
                             ##   States for input devices
                             ## ```
defineEnum(lv_font_fmt_txt_cmap_type_t) ## ```
                                        ##   Format of font character map.
                                        ## ```
defineEnum(lv_font_fmt_txt_bitmap_format_t) ## ```
                                            ##   Bitmap formats
                                            ## ```
defineEnum(lv_img_size_mode_t) ## ```
                               ##   Image size mode, when image size and object size is different
                               ## ```
defineEnum(lv_animimg_part_t) ## ```
                              ##   Image parts
                              ## ```
defineEnum(lv_arc_mode_t) ## ```
                          ##   ******************
                          ##         INCLUDES
                          ##   ******************
                          ##     
                          ##    GENERATED FILE, DO NOT EDIT IT!
                          ##    @file lv_conf_internal.h
                          ##    Make sure all the defines of lv_conf.h have a default value
                          ##   
                          ##     
                          ##    @file lv_obj.h
                          ##   
                          ##    
                          ##    ******************
                          ##         DEFINES
                          ##   ******************
                          ##    *******************
                          ##         TYPEDEFS
                          ##   *******************
                          ## ```
defineEnum(lv_arc_draw_part_type_t) ## ```
                                    ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_arc_class
                                    ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                    ## ```
defineEnum(lv_label_long_mode_t) ## ```
                                 ##   The default value just prevents GCC warning
                                 ##    *******************
                                 ##         TYPEDEFS
                                 ##   *******************
                                 ##      Long mode behaviors. Used in 'lv_label_ext_t'
                                 ## ```
defineEnum(lv_bar_mode_t)    ## ```
                             ##   *******************
                             ##         MACROS
                             ##   *******************
                             ##    ******************
                             ##         DEFINES
                             ##   ******************
                             ##    *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ## ```
defineEnum(lv_bar_draw_part_type_t) ## ```
                                    ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_bar_class
                                    ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                    ## ```
defineEnum(lv_btnmatrix_ctrl_t) ## ```
                                ##   The default value just prevents GCC warning
                                ##    *******************
                                ##         TYPEDEFS
                                ##   *******************
                                ##      Type to store button control bits (disabled, hidden etc.)
                                ##    The first 3 bits are used to store the width
                                ## ```
defineEnum(lv_btnmatrix_draw_part_type_t) ## ```
                                          ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_btnmatrix_class
                                          ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                          ## ```
defineEnum(lv_chart_type_t)  ## ```
                             ##   The default value just prevents GCC warning
                             ##    *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ##     
                             ##    Chart types
                             ## ```
defineEnum(lv_chart_update_mode_t) ## ```
                                   ##   Chart update mode for lv_chart_set_next
                                   ## ```
defineEnum(lv_chart_axis_t)  ## ```
                             ##   Enumeration of the axis'
                             ## ```
defineEnum(lv_chart_draw_part_type_t) ## ```
                                      ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_chart_class
                                      ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                      ## ```
defineEnum(lv_checkbox_draw_part_type_t) ## ```
                                         ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_checkbox_class
                                         ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                         ## ```
defineEnum(lv_colorwheel_mode_t) ## ```
                                 ##   ******************
                                 ##         INCLUDES
                                 ##   ******************
                                 ##     
                                 ##    @file lvgl.h
                                 ##    This file exists only to be compatible with Arduino's library structure
                                 ##    
                                 ##    ******************
                                 ##         DEFINES
                                 ##   ******************
                                 ##    *******************
                                 ##         TYPEDEFS
                                 ##   *******************
                                 ## ```
defineEnum(lv_imgbtn_state_t) ## ```
                              ##   ******************
                              ##         INCLUDES
                              ##   ******************
                              ##     
                              ##    @file lv_obj.h
                              ##   
                              ##    
                              ##    ******************
                              ##         DEFINES
                              ##   ******************
                              ## ```
defineEnum(lv_keyboard_mode_t) ## ```
                               ##   *******************
                               ##         TYPEDEFS
                               ##   *******************
                               ##      Current keyboard mode.
                               ## ```
defineEnum(lv_led_draw_part_type_t) ## ```
                                    ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_led_class
                                    ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                    ## ```
defineEnum(lv_menu_mode_header_t) ## ```
                                  ##   ******************
                                  ##         INCLUDES
                                  ##   ******************
                                  ##     
                                  ##    @file lv_obj.h
                                  ##   
                                  ##    
                                  ##    ******************
                                  ##         DEFINES
                                  ##   ******************
                                  ##    *******************
                                  ##         TYPEDEFS
                                  ##   *******************
                                  ## ```
defineEnum(lv_menu_mode_root_back_btn_t)
defineEnum(lv_meter_indicator_type_t)
defineEnum(lv_meter_draw_part_type_t) ## ```
                                      ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_meter_class
                                      ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                      ## ```
defineEnum(lv_roller_mode_t) ## ```
                             ##   ******************
                             ##         INCLUDES
                             ##   ******************
                             ##     
                             ##    @file lv_obj.h
                             ##   
                             ##    
                             ##     Testing of dependencies
                             ##     
                             ##    @file lv_label.h
                             ##   
                             ##    
                             ##    ******************
                             ##         DEFINES
                             ##   ******************
                             ##    *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ##      Roller mode.
                             ## ```
defineEnum(lv_slider_mode_t) ## ```
                             ##   ******************
                             ##         INCLUDES
                             ##   ******************
                             ##     
                             ##    @file lv_bar.h
                             ##   
                             ##    
                             ##     Testing of dependencies
                             ##    ******************
                             ##         DEFINES
                             ##   ******************
                             ##    *******************
                             ##         TYPEDEFS
                             ##   *******************
                             ## ```
defineEnum(lv_slider_draw_part_type_t) ## ```
                                       ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_slider_class
                                       ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                       ## ```
defineEnum(lv_span_overflow_t) ## ```
                               ##   ******************
                               ##         INCLUDES
                               ##   ******************
                               ##     
                               ##    @file lvgl.h
                               ##    Include all LVGL related headers
                               ##    
                               ##    ******************
                               ##         DEFINES
                               ##   ******************
                               ##    *******************
                               ##         TYPEDEFS
                               ##   *******************
                               ## ```
defineEnum(lv_span_mode_t)
defineEnum(Enum_lvglh2)
defineEnum(lv_table_cell_ctrl_t)
defineEnum(lv_table_draw_part_type_t) ## ```
                                      ##   type field in lv_obj_draw_part_dsc_t if class_p = lv_table_class
                                      ##    Used in LV_EVENT_DRAW_PART_BEGIN and LV_EVENT_DRAW_PART_END
                                      ## ```
defineEnum(lv_gridnav_ctrl_t) ## ```
                              ##   ******************
                              ##         INCLUDES
                              ##   ******************
                              ##     
                              ##    @file lv_obj.h
                              ##   
                              ##    
                              ##    ******************
                              ##         DEFINES
                              ##   ******************
                              ##    *******************
                              ##         TYPEDEFS
                              ##   *******************
                              ## ```
defineEnum(lv_ime_pinyin_mode_t)
defineEnum(lv_file_explorer_sort_t)
defineEnum(lv_file_explorer_dir_t)
defineEnum(lv_flex_align_t)
defineEnum(lv_flex_flow_t)
defineEnum(lv_grid_align_t)
const
  LVGL_VERSION_MAJOR* = 9
  LVGL_VERSION_MINOR* = 0
  LVGL_VERSION_PATCH* = 0
  LVGL_VERSION_INFO* = "dev"
  LV_USE_SYSMON* = 0
  LV_USE_PROFILER* = 0
  LV_SDL_FULLSCREEN* = 0
  LV_SDL_DIRECT_EXIT* = 1
  LV_USE_LINUX_DRM* = 0
  LV_LOG_TRACE_MEM* = 0
  LV_LOG_TRACE_TIMER* = 0
  LV_LOG_TRACE_INDEV* = 0
  LV_LOG_TRACE_DISP_REFR* = 0
  LV_LOG_TRACE_EVENT* = 0
  LV_LOG_TRACE_OBJ_CREATE* = 0
  LV_LOG_TRACE_LAYOUT* = 0
  LV_LOG_TRACE_ANIM* = 0
  LV_RES_INV* = (0).lv_res_t ## ```
                             ##   Typically indicates that the object is deleted (become invalid) in the action
                             ##                         function or an operation was failed
                             ## ```
  LV_RES_OK* = (LV_RES_INV + 1).lv_res_t ## ```
                                         ##   The object is valid (no deleted) after the action
                                         ## ```
  LV_LOG_LEVEL_TRACE* = 0
  LV_LOG_LEVEL_INFO* = 1
  LV_LOG_LEVEL_WARN* = 2
  LV_LOG_LEVEL_ERROR* = 3
  LV_LOG_LEVEL_USER* = 4
  LV_LOG_LEVEL_NONE* = 5
  LV_LOG_LEVEL_NUM* = 6
  LV_NO_TIMER_READY* = 0xFFFFFFFF
  LV_TRIGO_SIN_MAX* = 32768
  LV_TRIGO_SHIFT* = 15
  LV_BEZIER_VAL_SHIFT* = 10
  LV_BEZIER_VAL_MAX* = (1'i32 shl typeof(1'i32)(LV_BEZIER_VAL_SHIFT))
  LV_ANIM_REPEAT_INFINITE* = 0x0000FFFF
  LV_ANIM_PLAYTIME_INFINITE* = 0xFFFFFFFF
  LV_ANIM_OFF* = (0).lv_anim_enable_t
  LV_ANIM_ON* = (LV_ANIM_OFF + 1).lv_anim_enable_t
  LV_SYMBOL_BULLET* = "•"
  LV_SYMBOL_AUDIO* = ""
  LV_SYMBOL_VIDEO* = ""
  LV_SYMBOL_LIST* = ""
  LV_SYMBOL_OK* = ""
  LV_SYMBOL_CLOSE* = ""
  LV_SYMBOL_POWER* = ""
  LV_SYMBOL_SETTINGS* = ""
  LV_SYMBOL_HOME* = ""
  LV_SYMBOL_DOWNLOAD* = ""
  LV_SYMBOL_DRIVE* = ""
  LV_SYMBOL_REFRESH* = ""
  LV_SYMBOL_MUTE* = ""
  LV_SYMBOL_VOLUME_MID* = ""
  LV_SYMBOL_VOLUME_MAX* = ""
  LV_SYMBOL_IMAGE* = ""
  LV_SYMBOL_TINT* = ""
  LV_SYMBOL_PREV* = ""
  LV_SYMBOL_PLAY* = ""
  LV_SYMBOL_PAUSE* = ""
  LV_SYMBOL_STOP* = ""
  LV_SYMBOL_NEXT* = ""
  LV_SYMBOL_EJECT* = ""
  LV_SYMBOL_LEFT* = ""
  LV_SYMBOL_RIGHT* = ""
  LV_SYMBOL_PLUS* = ""
  LV_SYMBOL_MINUS* = ""
  LV_SYMBOL_EYE_OPEN* = ""
  LV_SYMBOL_EYE_CLOSE* = ""
  LV_SYMBOL_WARNING* = ""
  LV_SYMBOL_SHUFFLE* = ""
  LV_SYMBOL_UP* = ""
  LV_SYMBOL_DOWN* = ""
  LV_SYMBOL_LOOP* = ""
  LV_SYMBOL_DIRECTORY* = ""
  LV_SYMBOL_UPLOAD* = ""
  LV_SYMBOL_CALL* = ""
  LV_SYMBOL_CUT* = ""
  LV_SYMBOL_COPY* = ""
  LV_SYMBOL_SAVE* = ""
  LV_SYMBOL_BARS* = ""
  LV_SYMBOL_ENVELOPE* = ""
  LV_SYMBOL_CHARGE* = ""
  LV_SYMBOL_PASTE* = ""
  LV_SYMBOL_BELL* = ""
  LV_SYMBOL_KEYBOARD* = ""
  LV_SYMBOL_GPS* = ""
  LV_SYMBOL_FILE* = ""
  LV_SYMBOL_WIFI* = ""
  LV_SYMBOL_BATTERY_FULL* = ""
  LV_SYMBOL_BATTERY_3* = ""
  LV_SYMBOL_BATTERY_2* = ""
  LV_SYMBOL_BATTERY_1* = ""
  LV_SYMBOL_BATTERY_EMPTY* = ""
  LV_SYMBOL_USB* = ""
  LV_SYMBOL_BLUETOOTH* = ""
  LV_SYMBOL_TRASH* = ""
  LV_SYMBOL_EDIT* = ""
  LV_SYMBOL_BACKSPACE* = ""
  LV_SYMBOL_SD_CARD* = ""
  LV_SYMBOL_NEW_LINE* = ""
  LV_SYMBOL_DUMMY* = ""
  LV_STR_SYMBOL_BULLET* = (0).cint
  LV_STR_SYMBOL_AUDIO* = (LV_STR_SYMBOL_BULLET + 1).cint
  LV_STR_SYMBOL_VIDEO* = (LV_STR_SYMBOL_AUDIO + 1).cint
  LV_STR_SYMBOL_LIST* = (LV_STR_SYMBOL_VIDEO + 1).cint
  LV_STR_SYMBOL_OK* = (LV_STR_SYMBOL_LIST + 1).cint
  LV_STR_SYMBOL_CLOSE* = (LV_STR_SYMBOL_OK + 1).cint
  LV_STR_SYMBOL_POWER* = (LV_STR_SYMBOL_CLOSE + 1).cint
  LV_STR_SYMBOL_SETTINGS* = (LV_STR_SYMBOL_POWER + 1).cint
  LV_STR_SYMBOL_HOME* = (LV_STR_SYMBOL_SETTINGS + 1).cint
  LV_STR_SYMBOL_DOWNLOAD* = (LV_STR_SYMBOL_HOME + 1).cint
  LV_STR_SYMBOL_DRIVE* = (LV_STR_SYMBOL_DOWNLOAD + 1).cint
  LV_STR_SYMBOL_REFRESH* = (LV_STR_SYMBOL_DRIVE + 1).cint
  LV_STR_SYMBOL_MUTE* = (LV_STR_SYMBOL_REFRESH + 1).cint
  LV_STR_SYMBOL_VOLUME_MID* = (LV_STR_SYMBOL_MUTE + 1).cint
  LV_STR_SYMBOL_VOLUME_MAX* = (LV_STR_SYMBOL_VOLUME_MID + 1).cint
  LV_STR_SYMBOL_IMAGE* = (LV_STR_SYMBOL_VOLUME_MAX + 1).cint
  LV_STR_SYMBOL_TINT* = (LV_STR_SYMBOL_IMAGE + 1).cint
  LV_STR_SYMBOL_PREV* = (LV_STR_SYMBOL_TINT + 1).cint
  LV_STR_SYMBOL_PLAY* = (LV_STR_SYMBOL_PREV + 1).cint
  LV_STR_SYMBOL_PAUSE* = (LV_STR_SYMBOL_PLAY + 1).cint
  LV_STR_SYMBOL_STOP* = (LV_STR_SYMBOL_PAUSE + 1).cint
  LV_STR_SYMBOL_NEXT* = (LV_STR_SYMBOL_STOP + 1).cint
  LV_STR_SYMBOL_EJECT* = (LV_STR_SYMBOL_NEXT + 1).cint
  LV_STR_SYMBOL_LEFT* = (LV_STR_SYMBOL_EJECT + 1).cint
  LV_STR_SYMBOL_RIGHT* = (LV_STR_SYMBOL_LEFT + 1).cint
  LV_STR_SYMBOL_PLUS* = (LV_STR_SYMBOL_RIGHT + 1).cint
  LV_STR_SYMBOL_MINUS* = (LV_STR_SYMBOL_PLUS + 1).cint
  LV_STR_SYMBOL_EYE_OPEN* = (LV_STR_SYMBOL_MINUS + 1).cint
  LV_STR_SYMBOL_EYE_CLOSE* = (LV_STR_SYMBOL_EYE_OPEN + 1).cint
  LV_STR_SYMBOL_WARNING* = (LV_STR_SYMBOL_EYE_CLOSE + 1).cint
  LV_STR_SYMBOL_SHUFFLE* = (LV_STR_SYMBOL_WARNING + 1).cint
  LV_STR_SYMBOL_UP* = (LV_STR_SYMBOL_SHUFFLE + 1).cint
  LV_STR_SYMBOL_DOWN* = (LV_STR_SYMBOL_UP + 1).cint
  LV_STR_SYMBOL_LOOP* = (LV_STR_SYMBOL_DOWN + 1).cint
  LV_STR_SYMBOL_DIRECTORY* = (LV_STR_SYMBOL_LOOP + 1).cint
  LV_STR_SYMBOL_UPLOAD* = (LV_STR_SYMBOL_DIRECTORY + 1).cint
  LV_STR_SYMBOL_CALL* = (LV_STR_SYMBOL_UPLOAD + 1).cint
  LV_STR_SYMBOL_CUT* = (LV_STR_SYMBOL_CALL + 1).cint
  LV_STR_SYMBOL_COPY* = (LV_STR_SYMBOL_CUT + 1).cint
  LV_STR_SYMBOL_SAVE* = (LV_STR_SYMBOL_COPY + 1).cint
  LV_STR_SYMBOL_BARS* = (LV_STR_SYMBOL_SAVE + 1).cint
  LV_STR_SYMBOL_ENVELOPE* = (LV_STR_SYMBOL_BARS + 1).cint
  LV_STR_SYMBOL_CHARGE* = (LV_STR_SYMBOL_ENVELOPE + 1).cint
  LV_STR_SYMBOL_PASTE* = (LV_STR_SYMBOL_CHARGE + 1).cint
  LV_STR_SYMBOL_BELL* = (LV_STR_SYMBOL_PASTE + 1).cint
  LV_STR_SYMBOL_KEYBOARD* = (LV_STR_SYMBOL_BELL + 1).cint
  LV_STR_SYMBOL_GPS* = (LV_STR_SYMBOL_KEYBOARD + 1).cint
  LV_STR_SYMBOL_FILE* = (LV_STR_SYMBOL_GPS + 1).cint
  LV_STR_SYMBOL_WIFI* = (LV_STR_SYMBOL_FILE + 1).cint
  LV_STR_SYMBOL_BATTERY_FULL* = (LV_STR_SYMBOL_WIFI + 1).cint
  LV_STR_SYMBOL_BATTERY_3* = (LV_STR_SYMBOL_BATTERY_FULL + 1).cint
  LV_STR_SYMBOL_BATTERY_2* = (LV_STR_SYMBOL_BATTERY_3 + 1).cint
  LV_STR_SYMBOL_BATTERY_1* = (LV_STR_SYMBOL_BATTERY_2 + 1).cint
  LV_STR_SYMBOL_BATTERY_EMPTY* = (LV_STR_SYMBOL_BATTERY_1 + 1).cint
  LV_STR_SYMBOL_USB* = (LV_STR_SYMBOL_BATTERY_EMPTY + 1).cint
  LV_STR_SYMBOL_BLUETOOTH* = (LV_STR_SYMBOL_USB + 1).cint
  LV_STR_SYMBOL_TRASH* = (LV_STR_SYMBOL_BLUETOOTH + 1).cint
  LV_STR_SYMBOL_EDIT* = (LV_STR_SYMBOL_TRASH + 1).cint
  LV_STR_SYMBOL_BACKSPACE* = (LV_STR_SYMBOL_EDIT + 1).cint
  LV_STR_SYMBOL_SD_CARD* = (LV_STR_SYMBOL_BACKSPACE + 1).cint
  LV_STR_SYMBOL_NEW_LINE* = (LV_STR_SYMBOL_SD_CARD + 1).cint
  LV_STR_SYMBOL_DUMMY* = (LV_STR_SYMBOL_NEW_LINE + 1).cint
  LV_ALIGN_DEFAULT* = (0).lv_align_t
  LV_ALIGN_TOP_LEFT* = (LV_ALIGN_DEFAULT + 1).lv_align_t
  LV_ALIGN_TOP_MID* = (LV_ALIGN_TOP_LEFT + 1).lv_align_t
  LV_ALIGN_TOP_RIGHT* = (LV_ALIGN_TOP_MID + 1).lv_align_t
  LV_ALIGN_BOTTOM_LEFT* = (LV_ALIGN_TOP_RIGHT + 1).lv_align_t
  LV_ALIGN_BOTTOM_MID* = (LV_ALIGN_BOTTOM_LEFT + 1).lv_align_t
  LV_ALIGN_BOTTOM_RIGHT* = (LV_ALIGN_BOTTOM_MID + 1).lv_align_t
  LV_ALIGN_LEFT_MID* = (LV_ALIGN_BOTTOM_RIGHT + 1).lv_align_t
  LV_ALIGN_RIGHT_MID* = (LV_ALIGN_LEFT_MID + 1).lv_align_t
  LV_ALIGN_CENTER* = (LV_ALIGN_RIGHT_MID + 1).lv_align_t
  LV_ALIGN_OUT_TOP_LEFT* = (LV_ALIGN_CENTER + 1).lv_align_t
  LV_ALIGN_OUT_TOP_MID* = (LV_ALIGN_OUT_TOP_LEFT + 1).lv_align_t
  LV_ALIGN_OUT_TOP_RIGHT* = (LV_ALIGN_OUT_TOP_MID + 1).lv_align_t
  LV_ALIGN_OUT_BOTTOM_LEFT* = (LV_ALIGN_OUT_TOP_RIGHT + 1).lv_align_t
  LV_ALIGN_OUT_BOTTOM_MID* = (LV_ALIGN_OUT_BOTTOM_LEFT + 1).lv_align_t
  LV_ALIGN_OUT_BOTTOM_RIGHT* = (LV_ALIGN_OUT_BOTTOM_MID + 1).lv_align_t
  LV_ALIGN_OUT_LEFT_TOP* = (LV_ALIGN_OUT_BOTTOM_RIGHT + 1).lv_align_t
  LV_ALIGN_OUT_LEFT_MID* = (LV_ALIGN_OUT_LEFT_TOP + 1).lv_align_t
  LV_ALIGN_OUT_LEFT_BOTTOM* = (LV_ALIGN_OUT_LEFT_MID + 1).lv_align_t
  LV_ALIGN_OUT_RIGHT_TOP* = (LV_ALIGN_OUT_LEFT_BOTTOM + 1).lv_align_t
  LV_ALIGN_OUT_RIGHT_MID* = (LV_ALIGN_OUT_RIGHT_TOP + 1).lv_align_t
  LV_ALIGN_OUT_RIGHT_BOTTOM* = (LV_ALIGN_OUT_RIGHT_MID + 1).lv_align_t
  LV_DIR_NONE* = (0x00000000).lv_dir_t
  LV_DIR_LEFT* = ((1 shl typeof(1)(0))).lv_dir_t
  LV_DIR_RIGHT* = ((1 shl typeof(1)(1))).lv_dir_t
  LV_DIR_TOP* = ((1 shl typeof(1)(2))).lv_dir_t
  LV_DIR_BOTTOM* = ((1 shl typeof(1)(3))).lv_dir_t
  LV_DIR_HOR* = (LV_DIR_LEFT.lv_dir_t or
      typeof(LV_DIR_LEFT.lv_dir_t)(LV_DIR_RIGHT.lv_dir_t)).lv_dir_t
  LV_DIR_VER* = (LV_DIR_TOP.lv_dir_t or
      typeof(LV_DIR_TOP.lv_dir_t)(LV_DIR_BOTTOM.lv_dir_t)).lv_dir_t
  LV_DIR_ALL* = (LV_DIR_HOR.lv_dir_t or
      typeof(LV_DIR_HOR.lv_dir_t)(LV_DIR_VER.lv_dir_t)).lv_dir_t
  LV_COORD_TYPE_SHIFT* = (13'u)
  LV_COORD_TYPE_MASK* = (3 shl typeof(3)(LV_COORD_TYPE_SHIFT))
  LV_COORD_TYPE_PX* = (0 shl typeof(0)(LV_COORD_TYPE_SHIFT))
  LV_COORD_TYPE_SPEC* = (1 shl typeof(1)(LV_COORD_TYPE_SHIFT))
  LV_COORD_TYPE_PX_NEG* = (3 shl typeof(3)(LV_COORD_TYPE_SHIFT))
  LV_COORD_MAX* = ((1 shl typeof(1)(LV_COORD_TYPE_SHIFT)) - typeof(1)(1))
  LV_COORD_MIN* = ((-(int64(LV_COORD_MAX))))
  LV_IMGFONT_BPP* = 9
  LV_FONT_SUBPX_NONE* = (0).lv_font_subpx_t
  LV_FONT_SUBPX_HOR* = (LV_FONT_SUBPX_NONE + 1).lv_font_subpx_t
  LV_FONT_SUBPX_VER* = (LV_FONT_SUBPX_HOR + 1).lv_font_subpx_t
  LV_FONT_SUBPX_BOTH* = (LV_FONT_SUBPX_VER + 1).lv_font_subpx_t
  LV_OPA_TRANSP* = (0).lv_opa_t
  LV_OPA_0* = (0).lv_opa_t
  LV_OPA_10* = (25).lv_opa_t
  LV_OPA_20* = (51).lv_opa_t
  LV_OPA_30* = (76).lv_opa_t
  LV_OPA_40* = (102).lv_opa_t
  LV_OPA_50* = (127).lv_opa_t
  LV_OPA_60* = (153).lv_opa_t
  LV_OPA_70* = (178).lv_opa_t
  LV_OPA_80* = (204).lv_opa_t
  LV_OPA_90* = (229).lv_opa_t
  LV_OPA_100* = (255).lv_opa_t
  LV_OPA_COVER* = (255).lv_opa_t
  LV_OPA_MIN* = 2
  LV_OPA_MAX* = 253
  LV_COLOR_HAS_MODERN_CPP* = 0
  LV_COLOR_FORMAT_NATIVE_ALPHA_SIZE* = 3
  LV_COLOR_FORMAT_NATIVE_ALPHA_OFS* = (LV_COLOR_FORMAT_NATIVE_ALPHA_SIZE -
      typeof(LV_COLOR_FORMAT_NATIVE_ALPHA_SIZE)(1))
  LV_COLOR_FORMAT_UNKNOWN* = (0).lv_color_format_t
  LV_COLOR_FORMAT_L8* = (LV_COLOR_FORMAT_UNKNOWN + 1).lv_color_format_t ## ```
                                                                        ##   <=1 byte (+alpha) formats
                                                                        ## ```
  LV_COLOR_FORMAT_A8* = (LV_COLOR_FORMAT_L8 + 1).lv_color_format_t
  LV_COLOR_FORMAT_I1* = (LV_COLOR_FORMAT_A8 + 1).lv_color_format_t
  LV_COLOR_FORMAT_I2* = (LV_COLOR_FORMAT_I1 + 1).lv_color_format_t
  LV_COLOR_FORMAT_I4* = (LV_COLOR_FORMAT_I2 + 1).lv_color_format_t
  LV_COLOR_FORMAT_I8* = (LV_COLOR_FORMAT_I4 + 1).lv_color_format_t
  LV_COLOR_FORMAT_A8L8* = (LV_COLOR_FORMAT_I8 + 1).lv_color_format_t
  LV_COLOR_FORMAT_ARGB2222* = (LV_COLOR_FORMAT_A8L8 + 1).lv_color_format_t
  LV_COLOR_FORMAT_RGB565* = (LV_COLOR_FORMAT_ARGB2222 + 1).lv_color_format_t ## ```
                                                                             ##   2 byte (+alpha) formats
                                                                             ## ```
  LV_COLOR_FORMAT_RGB565_CHROMA_KEYED* = (LV_COLOR_FORMAT_RGB565 + 1).lv_color_format_t
  LV_COLOR_FORMAT_ARGB1555* = (LV_COLOR_FORMAT_RGB565_CHROMA_KEYED + 1).lv_color_format_t
  LV_COLOR_FORMAT_ARGB4444* = (LV_COLOR_FORMAT_ARGB1555 + 1).lv_color_format_t
  LV_COLOR_FORMAT_RGB565A8* = (LV_COLOR_FORMAT_ARGB4444 + 1).lv_color_format_t ## ```
                                                                               ##   < Color array followed by Alpha array
                                                                               ## ```
  LV_COLOR_FORMAT_ARGB8565* = (LV_COLOR_FORMAT_RGB565A8 + 1).lv_color_format_t ## ```
                                                                               ##   < Color array followed by Alpha array
                                                                               ## ```
  LV_COLOR_FORMAT_RGB888* = (LV_COLOR_FORMAT_ARGB8565 + 1).lv_color_format_t ## ```
                                                                             ##   3 byte (+alpha) formats
                                                                             ## ```
  LV_COLOR_FORMAT_RGB888_CHROMA_KEYED* = (LV_COLOR_FORMAT_RGB888 + 1).lv_color_format_t
  LV_COLOR_FORMAT_ARGB8888* = (LV_COLOR_FORMAT_RGB888_CHROMA_KEYED + 1).lv_color_format_t
  LV_COLOR_FORMAT_XRGB8888* = (LV_COLOR_FORMAT_ARGB8888 + 1).lv_color_format_t
  LV_COLOR_FORMAT_XRGB8888_CHROMA_KEYED* = (LV_COLOR_FORMAT_XRGB8888 + 1).lv_color_format_t
  LV_COLOR_FORMAT_NATIVE* = (LV_COLOR_FORMAT_RGB565).lv_color_format_t
  LV_COLOR_FORMAT_NATIVE_CHROMA_KEYED* = (LV_COLOR_FORMAT_RGB565_CHROMA_KEYED).lv_color_format_t
  LV_COLOR_FORMAT_NATIVE_ALPHA* = (LV_COLOR_FORMAT_ARGB8565).lv_color_format_t ## ```
                                                                               ##   Miscellaneous formats
                                                                               ## ```
  LV_COLOR_FORMAT_NATIVE_REVERSED* = (0x0000001A).lv_color_format_t ## ```
                                                                    ##   Miscellaneous formats
                                                                    ## ```
  LV_COLOR_FORMAT_NATIVE_ALPHA_REVERSED* = (LV_COLOR_FORMAT_NATIVE_REVERSED + 1).lv_color_format_t
  LV_COLOR_FORMAT_RAW* = (LV_COLOR_FORMAT_NATIVE_ALPHA_REVERSED + 1).lv_color_format_t
  LV_COLOR_FORMAT_RAW_ALPHA* = (LV_COLOR_FORMAT_RAW + 1).lv_color_format_t
  LV_PALETTE_RED* = (0).lv_palette_t
  LV_PALETTE_PINK* = (LV_PALETTE_RED + 1).lv_palette_t
  LV_PALETTE_PURPLE* = (LV_PALETTE_PINK + 1).lv_palette_t
  LV_PALETTE_DEEP_PURPLE* = (LV_PALETTE_PURPLE + 1).lv_palette_t
  LV_PALETTE_INDIGO* = (LV_PALETTE_DEEP_PURPLE + 1).lv_palette_t
  LV_PALETTE_BLUE* = (LV_PALETTE_INDIGO + 1).lv_palette_t
  LV_PALETTE_LIGHT_BLUE* = (LV_PALETTE_BLUE + 1).lv_palette_t
  LV_PALETTE_CYAN* = (LV_PALETTE_LIGHT_BLUE + 1).lv_palette_t
  LV_PALETTE_TEAL* = (LV_PALETTE_CYAN + 1).lv_palette_t
  LV_PALETTE_GREEN* = (LV_PALETTE_TEAL + 1).lv_palette_t
  LV_PALETTE_LIGHT_GREEN* = (LV_PALETTE_GREEN + 1).lv_palette_t
  LV_PALETTE_LIME* = (LV_PALETTE_LIGHT_GREEN + 1).lv_palette_t
  LV_PALETTE_YELLOW* = (LV_PALETTE_LIME + 1).lv_palette_t
  LV_PALETTE_AMBER* = (LV_PALETTE_YELLOW + 1).lv_palette_t
  LV_PALETTE_ORANGE* = (LV_PALETTE_AMBER + 1).lv_palette_t
  LV_PALETTE_DEEP_ORANGE* = (LV_PALETTE_ORANGE + 1).lv_palette_t
  LV_PALETTE_BROWN* = (LV_PALETTE_DEEP_ORANGE + 1).lv_palette_t
  LV_PALETTE_BLUE_GREY* = (LV_PALETTE_BROWN + 1).lv_palette_t
  LV_PALETTE_GREY* = (LV_PALETTE_BLUE_GREY + 1).lv_palette_t
  LV_PALETTE_LAST* = (LV_PALETTE_GREY + 1).lv_palette_t
  LV_PALETTE_NONE* = (0x000000FF).lv_palette_t
  LV_TXT_ENC_UTF8* = 1
  LV_TXT_ENC_ASCII* = 2
  LV_TEXT_FLAG_NONE* = (0x00000000).lv_text_flag_t
  LV_TEXT_FLAG_RECOLOR* = (0x00000001).lv_text_flag_t ## ```
                                                      ##   < Enable parsing of recolor command
                                                      ## ```
  LV_TEXT_FLAG_EXPAND* = (0x00000002).lv_text_flag_t ## ```
                                                     ##   < Ignore max-width to avoid automatic word wrapping
                                                     ## ```
  LV_TEXT_FLAG_FIT* = (0x00000004).lv_text_flag_t ## ```
                                                  ##   < Max-width is already equal to the longest line. (Used to skip some calculation)
                                                  ## ```
  LV_TEXT_CMD_STATE_WAIT* = (0).lv_text_cmd_state_t ## ```
                                                    ##   < Waiting for command
                                                    ## ```
  LV_TEXT_CMD_STATE_PAR* = (LV_TEXT_CMD_STATE_WAIT + 1).lv_text_cmd_state_t ## ```
                                                                            ##   < Processing the parameter
                                                                            ## ```
  LV_TEXT_CMD_STATE_IN* = (LV_TEXT_CMD_STATE_PAR + 1).lv_text_cmd_state_t ## ```
                                                                          ##   < Processing the command
                                                                          ## ```
  LV_TEXT_ALIGN_AUTO* = (0).lv_text_align_t ## ```
                                            ##   < Align text auto
                                            ## ```
  LV_TEXT_ALIGN_LEFT* = (LV_TEXT_ALIGN_AUTO + 1).lv_text_align_t ## ```
                                                                 ##   < Align text to left
                                                                 ## ```
  LV_TEXT_ALIGN_CENTER* = (LV_TEXT_ALIGN_LEFT + 1).lv_text_align_t ## ```
                                                                   ##   < Align text to center
                                                                   ## ```
  LV_TEXT_ALIGN_RIGHT* = (LV_TEXT_ALIGN_CENTER + 1).lv_text_align_t ## ```
                                                                    ##   < Align text to right
                                                                    ## ```
  LV_BIDI_LRO* = "‭"
  LV_BIDI_RLO* = "‮"
  LV_BASE_DIR_LTR* = (0x00000000).lv_base_dir_t
  LV_BASE_DIR_RTL* = (0x00000001).lv_base_dir_t
  LV_BASE_DIR_AUTO* = (0x00000002).lv_base_dir_t
  LV_BASE_DIR_NEUTRAL* = (0x00000020).lv_base_dir_t
  LV_BASE_DIR_WEAK* = (0x00000021).lv_base_dir_t
  LV_STYLE_SENTINEL_VALUE* = 0xAABBCCDD
  LV_STYLE_PROP_FLAG_NONE* = (0)
  LV_STYLE_PROP_FLAG_INHERITABLE* = (1 shl typeof(1)(0))
  LV_STYLE_PROP_FLAG_EXT_DRAW_UPDATE* = (1 shl typeof(1)(1))
  LV_STYLE_PROP_FLAG_LAYOUT_UPDATE* = (1 shl typeof(1)(2))
  LV_STYLE_PROP_FLAG_PARENT_LAYOUT_UPDATE* = (1 shl typeof(1)(3))
  LV_STYLE_PROP_FLAG_LAYER_UPDATE* = (1 shl typeof(1)(4))
  LV_STYLE_PROP_FLAG_TRANSFORM* = (1 shl typeof(1)(5))
  LV_STYLE_PROP_FLAG_ALL* = (0x0000003F)
  LV_ZOOM_NONE* = 256
  LV_STYLE_PROP_META_INHERIT* = 0x00008000
  LV_STYLE_PROP_META_INITIAL* = 0x00004000
  LV_STYLE_PROP_META_MASK* = (LV_STYLE_PROP_META_INHERIT or
      typeof(LV_STYLE_PROP_META_INHERIT)(LV_STYLE_PROP_META_INITIAL))
  LV_BLEND_MODE_NORMAL* = (0).lv_blend_mode_t ## ```
                                              ##   < Simply mix according to the opacity value
                                              ## ```
  LV_BLEND_MODE_ADDITIVE* = (LV_BLEND_MODE_NORMAL + 1).lv_blend_mode_t ## ```
                                                                       ##   < Add the respective color channels
                                                                       ## ```
  LV_BLEND_MODE_SUBTRACTIVE* = (LV_BLEND_MODE_ADDITIVE + 1).lv_blend_mode_t ## ```
                                                                            ##   < Subtract the foreground from the background
                                                                            ## ```
  LV_BLEND_MODE_MULTIPLY* = (LV_BLEND_MODE_SUBTRACTIVE + 1).lv_blend_mode_t ## ```
                                                                            ##   < Multiply the foreground and background
                                                                            ## ```
  LV_BLEND_MODE_REPLACE* = (LV_BLEND_MODE_MULTIPLY + 1).lv_blend_mode_t ## ```
                                                                        ##   < Replace background with foreground in the area
                                                                        ## ```
  LV_TEXT_DECOR_NONE* = (0x00000000).lv_text_decor_t
  LV_TEXT_DECOR_UNDERLINE* = (0x00000001).lv_text_decor_t
  LV_TEXT_DECOR_STRIKETHROUGH* = (0x00000002).lv_text_decor_t
  LV_BORDER_SIDE_NONE* = (0x00000000).lv_border_side_t
  LV_BORDER_SIDE_BOTTOM* = (0x00000001).lv_border_side_t
  LV_BORDER_SIDE_TOP* = (0x00000002).lv_border_side_t
  LV_BORDER_SIDE_LEFT* = (0x00000004).lv_border_side_t
  LV_BORDER_SIDE_RIGHT* = (0x00000008).lv_border_side_t
  LV_BORDER_SIDE_FULL* = (0x0000000F).lv_border_side_t
  LV_BORDER_SIDE_INTERNAL* = (0x00000010).lv_border_side_t ## ```
                                                           ##   < FOR matrix-like objects (e.g. Button matrix)
                                                           ## ```
  LV_GRAD_DIR_NONE* = (0).lv_grad_dir_t ## ```
                                        ##   < No gradient (the grad_color property is ignored)
                                        ## ```
  LV_GRAD_DIR_VER* = (LV_GRAD_DIR_NONE + 1).lv_grad_dir_t ## ```
                                                          ##   < Vertical (top to bottom) gradient
                                                          ## ```
  LV_GRAD_DIR_HOR* = (LV_GRAD_DIR_VER + 1).lv_grad_dir_t ## ```
                                                         ##   < Horizontal (left to right) gradient
                                                         ## ```
  LV_DITHER_NONE* = (0).lv_dither_mode_t ## ```
                                         ##   < No dithering, colors are just quantized to the output resolution
                                         ## ```
  LV_DITHER_ORDERED* = (LV_DITHER_NONE + 1).lv_dither_mode_t ## ```
                                                             ##   < Ordered dithering. Faster to compute and use less memory but lower quality
                                                             ## ```
  LV_DITHER_ERR_DIFF* = (LV_DITHER_ORDERED + 1).lv_dither_mode_t ## ```
                                                                 ##   < Error diffusion mode. Slower to compute and use more memory but give highest dither quality
                                                                 ## ```
  LV_STYLE_PROP_INV* = (0).lv_style_prop_t
  LV_STYLE_WIDTH* = (1).lv_style_prop_t ## ```
                                        ##   Group 0
                                        ## ```
  LV_STYLE_MIN_WIDTH* = (2).lv_style_prop_t
  LV_STYLE_MAX_WIDTH* = (3).lv_style_prop_t
  LV_STYLE_HEIGHT* = (4).lv_style_prop_t
  LV_STYLE_MIN_HEIGHT* = (5).lv_style_prop_t
  LV_STYLE_MAX_HEIGHT* = (6).lv_style_prop_t
  LV_STYLE_X* = (7).lv_style_prop_t
  LV_STYLE_Y* = (8).lv_style_prop_t
  LV_STYLE_ALIGN* = (9).lv_style_prop_t
  LV_STYLE_LAYOUT* = (10).lv_style_prop_t
  LV_STYLE_RADIUS* = (11).lv_style_prop_t
  LV_STYLE_PAD_TOP* = (16).lv_style_prop_t ## ```
                                           ##   Group 1
                                           ## ```
  LV_STYLE_PAD_BOTTOM* = (17).lv_style_prop_t
  LV_STYLE_PAD_LEFT* = (18).lv_style_prop_t
  LV_STYLE_PAD_RIGHT* = (19).lv_style_prop_t
  LV_STYLE_PAD_ROW* = (20).lv_style_prop_t
  LV_STYLE_PAD_COLUMN* = (21).lv_style_prop_t
  LV_STYLE_BASE_DIR* = (22).lv_style_prop_t
  LV_STYLE_CLIP_CORNER* = (23).lv_style_prop_t
  LV_STYLE_MARGIN_TOP* = (24).lv_style_prop_t
  LV_STYLE_MARGIN_BOTTOM* = (25).lv_style_prop_t
  LV_STYLE_MARGIN_LEFT* = (26).lv_style_prop_t
  LV_STYLE_MARGIN_RIGHT* = (27).lv_style_prop_t
  LV_STYLE_BG_COLOR* = (32).lv_style_prop_t ## ```
                                            ##   Group 2
                                            ## ```
  LV_STYLE_BG_OPA* = (33).lv_style_prop_t
  LV_STYLE_BG_GRAD_COLOR* = (34).lv_style_prop_t
  LV_STYLE_BG_GRAD_DIR* = (35).lv_style_prop_t
  LV_STYLE_BG_MAIN_STOP* = (36).lv_style_prop_t
  LV_STYLE_BG_GRAD_STOP* = (37).lv_style_prop_t
  LV_STYLE_BG_GRAD* = (38).lv_style_prop_t
  LV_STYLE_BG_DITHER_MODE* = (39).lv_style_prop_t
  LV_STYLE_BG_IMG_SRC* = (40).lv_style_prop_t
  LV_STYLE_BG_IMG_OPA* = (41).lv_style_prop_t
  LV_STYLE_BG_IMG_RECOLOR* = (42).lv_style_prop_t
  LV_STYLE_BG_IMG_RECOLOR_OPA* = (43).lv_style_prop_t
  LV_STYLE_BG_IMG_TILED* = (44).lv_style_prop_t
  LV_STYLE_BORDER_COLOR* = (48).lv_style_prop_t ## ```
                                                ##   Group 3
                                                ## ```
  LV_STYLE_BORDER_OPA* = (49).lv_style_prop_t
  LV_STYLE_BORDER_WIDTH* = (50).lv_style_prop_t
  LV_STYLE_BORDER_SIDE* = (51).lv_style_prop_t
  LV_STYLE_BORDER_POST* = (52).lv_style_prop_t
  LV_STYLE_OUTLINE_WIDTH* = (53).lv_style_prop_t
  LV_STYLE_OUTLINE_COLOR* = (54).lv_style_prop_t
  LV_STYLE_OUTLINE_OPA* = (55).lv_style_prop_t
  LV_STYLE_OUTLINE_PAD* = (56).lv_style_prop_t
  LV_STYLE_SHADOW_WIDTH* = (64).lv_style_prop_t ## ```
                                                ##   Group 4
                                                ## ```
  LV_STYLE_SHADOW_OFS_X* = (65).lv_style_prop_t
  LV_STYLE_SHADOW_OFS_Y* = (66).lv_style_prop_t
  LV_STYLE_SHADOW_SPREAD* = (67).lv_style_prop_t
  LV_STYLE_SHADOW_COLOR* = (68).lv_style_prop_t
  LV_STYLE_SHADOW_OPA* = (69).lv_style_prop_t
  LV_STYLE_IMG_OPA* = (70).lv_style_prop_t
  LV_STYLE_IMG_RECOLOR* = (71).lv_style_prop_t
  LV_STYLE_IMG_RECOLOR_OPA* = (72).lv_style_prop_t
  LV_STYLE_LINE_WIDTH* = (73).lv_style_prop_t
  LV_STYLE_LINE_DASH_WIDTH* = (74).lv_style_prop_t
  LV_STYLE_LINE_DASH_GAP* = (75).lv_style_prop_t
  LV_STYLE_LINE_ROUNDED* = (76).lv_style_prop_t
  LV_STYLE_LINE_COLOR* = (77).lv_style_prop_t
  LV_STYLE_LINE_OPA* = (78).lv_style_prop_t
  LV_STYLE_ARC_WIDTH* = (80).lv_style_prop_t ## ```
                                             ##   Group 5
                                             ## ```
  LV_STYLE_ARC_ROUNDED* = (81).lv_style_prop_t
  LV_STYLE_ARC_COLOR* = (82).lv_style_prop_t
  LV_STYLE_ARC_OPA* = (83).lv_style_prop_t
  LV_STYLE_ARC_IMG_SRC* = (84).lv_style_prop_t
  LV_STYLE_TEXT_COLOR* = (85).lv_style_prop_t
  LV_STYLE_TEXT_OPA* = (86).lv_style_prop_t
  LV_STYLE_TEXT_FONT* = (87).lv_style_prop_t
  LV_STYLE_TEXT_LETTER_SPACE* = (88).lv_style_prop_t
  LV_STYLE_TEXT_LINE_SPACE* = (89).lv_style_prop_t
  LV_STYLE_TEXT_DECOR* = (90).lv_style_prop_t
  LV_STYLE_TEXT_ALIGN* = (91).lv_style_prop_t
  LV_STYLE_OPA* = (96).lv_style_prop_t ## ```
                                       ##   Group 6
                                       ## ```
  LV_STYLE_COLOR_FILTER_DSC* = (97).lv_style_prop_t
  LV_STYLE_COLOR_FILTER_OPA* = (98).lv_style_prop_t
  LV_STYLE_ANIM* = (99).lv_style_prop_t
  LV_STYLE_ANIM_TIME* = (100).lv_style_prop_t
  LV_STYLE_ANIM_SPEED* = (101).lv_style_prop_t
  LV_STYLE_TRANSITION* = (102).lv_style_prop_t
  LV_STYLE_BLEND_MODE* = (103).lv_style_prop_t
  LV_STYLE_TRANSFORM_WIDTH* = (104).lv_style_prop_t
  LV_STYLE_TRANSFORM_HEIGHT* = (105).lv_style_prop_t
  LV_STYLE_TRANSLATE_X* = (106).lv_style_prop_t
  LV_STYLE_TRANSLATE_Y* = (107).lv_style_prop_t
  LV_STYLE_TRANSFORM_ZOOM* = (108).lv_style_prop_t
  LV_STYLE_TRANSFORM_ANGLE* = (109).lv_style_prop_t
  LV_STYLE_TRANSFORM_PIVOT_X* = (110).lv_style_prop_t
  LV_STYLE_TRANSFORM_PIVOT_Y* = (111).lv_style_prop_t
  LV_STYLE_LAST_BUILT_IN_PROP* = (111).lv_style_prop_t
  LV_STYLE_NUM_BUILT_IN_PROPS* = (LV_STYLE_LAST_BUILT_IN_PROP.lv_style_prop_t +
      typeof(LV_STYLE_LAST_BUILT_IN_PROP.lv_style_prop_t)(1)).lv_style_prop_t
  LV_STYLE_PROP_ANY* = (0x0000FFFF).lv_style_prop_t
  LV_STYLE_PROP_CONST* = (0x0000FFFF).lv_style_prop_t ## ```
                                                      ##   magic value for const styles
                                                      ## ```
  LV_STYLE_RES_NOT_FOUND* = (0).lv_style_res_t
  LV_STYLE_RES_FOUND* = (LV_STYLE_RES_NOT_FOUND + 1).lv_style_res_t
  LV_STYLE_RES_INHERIT* = (LV_STYLE_RES_FOUND + 1).lv_style_res_t
  LV_STATE_DEFAULT* = (0x00000000).lv_state_t
  LV_STATE_CHECKED* = (0x00000001).lv_state_t
  LV_STATE_FOCUSED* = (0x00000002).lv_state_t
  LV_STATE_FOCUS_KEY* = (0x00000004).lv_state_t
  LV_STATE_EDITED* = (0x00000008).lv_state_t
  LV_STATE_HOVERED* = (0x00000010).lv_state_t
  LV_STATE_PRESSED* = (0x00000020).lv_state_t
  LV_STATE_SCROLLED* = (0x00000040).lv_state_t
  LV_STATE_DISABLED* = (0x00000080).lv_state_t
  LV_STATE_USER_1* = (0x00001000).lv_state_t
  LV_STATE_USER_2* = (0x00002000).lv_state_t
  LV_STATE_USER_3* = (0x00004000).lv_state_t
  LV_STATE_USER_4* = (0x00008000).lv_state_t
  LV_STATE_ANY* = (0x0000FFFF).lv_state_t ## ```
                                          ##   < Special value can be used in some functions to target all states
                                          ## ```
  LV_PART_MAIN* = (0x00000000).lv_part_t ## ```
                                         ##   < A background like rectangle
                                         ## ```
  LV_PART_SCROLLBAR* = (0x00010000).lv_part_t ## ```
                                              ##   < The scrollbar(s)
                                              ## ```
  LV_PART_INDICATOR* = (0x00020000).lv_part_t ## ```
                                              ##   < Indicator, e.g. for slider, bar, switch, or the tick box of the checkbox
                                              ## ```
  LV_PART_KNOB* = (0x00030000).lv_part_t ## ```
                                         ##   < Like handle to grab to adjust the value
                                         ## ```
  LV_PART_SELECTED* = (0x00040000).lv_part_t ## ```
                                             ##   < Indicate the currently selected option or section
                                             ## ```
  LV_PART_ITEMS* = (0x00050000).lv_part_t ## ```
                                          ##   < Used if the widget has multiple similar elements (e.g. table cells)
                                          ## ```
  LV_PART_TICKS* = (0x00060000).lv_part_t ## ```
                                          ##   < Ticks on scale e.g. for a chart or meter
                                          ## ```
  LV_PART_CURSOR* = (0x00070000).lv_part_t ## ```
                                           ##   < Mark a specific place e.g. for text area's cursor or on a chart
                                           ## ```
  LV_PART_CUSTOM_FIRST* = (0x00080000).lv_part_t ## ```
                                                 ##   < Extension point for custom widgets
                                                 ## ```
  LV_PART_ANY* = (0x000F0000).lv_part_t ## ```
                                        ##   < Special value can be used in some functions to target all parts
                                        ## ```
  LV_OBJ_FLAG_HIDDEN* = ((1'i32 shl typeof(1'i32)(0))).lv_obj_flag_t ## ```
                                                                     ##   < Make the object hidden. (Like it wasn't there at all)
                                                                     ## ```
  LV_OBJ_FLAG_CLICKABLE* = ((1'i32 shl typeof(1'i32)(1))).lv_obj_flag_t ## ```
                                                                        ##   < Make the object clickable by the input devices
                                                                        ## ```
  LV_OBJ_FLAG_CLICK_FOCUSABLE* = ((1'i32 shl typeof(1'i32)(2))).lv_obj_flag_t ## ```
                                                                              ##   < Add focused state to the object when clicked
                                                                              ## ```
  LV_OBJ_FLAG_CHECKABLE* = ((1'i32 shl typeof(1'i32)(3))).lv_obj_flag_t ## ```
                                                                        ##   < Toggle checked state when the object is clicked
                                                                        ## ```
  LV_OBJ_FLAG_SCROLLABLE* = ((1'i32 shl typeof(1'i32)(4))).lv_obj_flag_t ## ```
                                                                         ##   < Make the object scrollable
                                                                         ## ```
  LV_OBJ_FLAG_SCROLL_ELASTIC* = ((1'i32 shl typeof(1'i32)(5))).lv_obj_flag_t ## ```
                                                                             ##   < Allow scrolling inside but with slower speed
                                                                             ## ```
  LV_OBJ_FLAG_SCROLL_MOMENTUM* = ((1'i32 shl typeof(1'i32)(6))).lv_obj_flag_t ## ```
                                                                              ##   < Make the object scroll further when "thrown"
                                                                              ## ```
  LV_OBJ_FLAG_SCROLL_ONE* = ((1'i32 shl typeof(1'i32)(7))).lv_obj_flag_t ## ```
                                                                         ##   < Allow scrolling only one snappable children
                                                                         ## ```
  LV_OBJ_FLAG_SCROLL_CHAIN_HOR* = ((1'i32 shl typeof(1'i32)(8))).lv_obj_flag_t ## ```
                                                                               ##   < Allow propagating the horizontal scroll to a parent
                                                                               ## ```
  LV_OBJ_FLAG_SCROLL_CHAIN_VER* = ((1'i32 shl typeof(1'i32)(9))).lv_obj_flag_t ## ```
                                                                               ##   < Allow propagating the vertical scroll to a parent
                                                                               ## ```
  LV_OBJ_FLAG_SCROLL_CHAIN* = ((LV_OBJ_FLAG_SCROLL_CHAIN_HOR.lv_obj_flag_t or
      typeof(LV_OBJ_FLAG_SCROLL_CHAIN_HOR.lv_obj_flag_t)(
      LV_OBJ_FLAG_SCROLL_CHAIN_VER.lv_obj_flag_t))).lv_obj_flag_t ## ```
                                                                  ##   < Allow propagating the vertical scroll to a parent
                                                                  ## ```
  LV_OBJ_FLAG_SCROLL_ON_FOCUS* = ((1'i32 shl typeof(1'i32)(10))).lv_obj_flag_t ## ```
                                                                               ##   < Automatically scroll object to make it visible when focused
                                                                               ## ```
  LV_OBJ_FLAG_SCROLL_WITH_ARROW* = ((1'i32 shl typeof(1'i32)(11))).lv_obj_flag_t ## ```
                                                                                 ##   < Allow scrolling the focused object with arrow keys
                                                                                 ## ```
  LV_OBJ_FLAG_SNAPPABLE* = ((1'i32 shl typeof(1'i32)(12))).lv_obj_flag_t ## ```
                                                                         ##   < If scroll snap is enabled on the parent it can snap to this object
                                                                         ## ```
  LV_OBJ_FLAG_PRESS_LOCK* = ((1'i32 shl typeof(1'i32)(13))).lv_obj_flag_t ## ```
                                                                          ##   < Keep the object pressed even if the press slid from the object
                                                                          ## ```
  LV_OBJ_FLAG_EVENT_BUBBLE* = ((1'i32 shl typeof(1'i32)(14))).lv_obj_flag_t ## ```
                                                                            ##   < Propagate the events to the parent too
                                                                            ## ```
  LV_OBJ_FLAG_GESTURE_BUBBLE* = ((1'i32 shl typeof(1'i32)(15))).lv_obj_flag_t ## ```
                                                                              ##   < Propagate the gestures to the parent
                                                                              ## ```
  LV_OBJ_FLAG_ADV_HITTEST* = ((1'i32 shl typeof(1'i32)(16))).lv_obj_flag_t ## ```
                                                                           ##   < Allow performing more accurate hit (click) test. E.g. consider rounded corners.
                                                                           ## ```
  LV_OBJ_FLAG_IGNORE_LAYOUT* = ((1'i32 shl typeof(1'i32)(17))).lv_obj_flag_t ## ```
                                                                             ##   < Make the object position-able by the layouts
                                                                             ## ```
  LV_OBJ_FLAG_FLOATING* = ((1'i32 shl typeof(1'i32)(18))).lv_obj_flag_t ## ```
                                                                        ##   < Do not scroll the object when the parent scrolls and ignore layout
                                                                        ## ```
  LV_OBJ_FLAG_OVERFLOW_VISIBLE* = ((1'i32 shl typeof(1'i32)(19))).lv_obj_flag_t ## ```
                                                                                ##   < Do not clip the children's content to the parent's boundary
                                                                                ## ```
  LV_OBJ_FLAG_LAYOUT_1* = ((1'i32 shl typeof(1'i32)(23))).lv_obj_flag_t ## ```
                                                                        ##   < Custom flag, free to use by layouts
                                                                        ## ```
  LV_OBJ_FLAG_LAYOUT_2* = ((1'i32 shl typeof(1'i32)(24))).lv_obj_flag_t ## ```
                                                                        ##   < Custom flag, free to use by layouts
                                                                        ## ```
  LV_OBJ_FLAG_WIDGET_1* = ((1'i32 shl typeof(1'i32)(25))).lv_obj_flag_t ## ```
                                                                        ##   < Custom flag, free to use by widget
                                                                        ## ```
  LV_OBJ_FLAG_WIDGET_2* = ((1'i32 shl typeof(1'i32)(26))).lv_obj_flag_t ## ```
                                                                        ##   < Custom flag, free to use by widget
                                                                        ## ```
  LV_OBJ_FLAG_USER_1* = ((1'i32 shl typeof(1'i32)(27))).lv_obj_flag_t ## ```
                                                                      ##   < Custom flag, free to use by user
                                                                      ## ```
  LV_OBJ_FLAG_USER_2* = ((1'i32 shl typeof(1'i32)(28))).lv_obj_flag_t ## ```
                                                                      ##   < Custom flag, free to use by user
                                                                      ## ```
  LV_OBJ_FLAG_USER_3* = ((1'i32 shl typeof(1'i32)(29))).lv_obj_flag_t ## ```
                                                                      ##   < Custom flag, free to use by user
                                                                      ## ```
  LV_OBJ_FLAG_USER_4* = ((1'i32 shl typeof(1'i32)(30))).lv_obj_flag_t ## ```
                                                                      ##   < Custom flag, free to use by user
                                                                      ## ```
  LV_OBJ_DRAW_PART_RECTANGLE* = (0).lv_obj_draw_part_type_t ## ```
                                                            ##   < The main rectangle
                                                            ## ```
  LV_OBJ_DRAW_PART_BORDER_POST* = (LV_OBJ_DRAW_PART_RECTANGLE + 1).lv_obj_draw_part_type_t ## ```
                                                                                           ##   < The border if style_border_post = true
                                                                                           ## ```
  LV_OBJ_DRAW_PART_SCROLLBAR* = (LV_OBJ_DRAW_PART_BORDER_POST + 1).lv_obj_draw_part_type_t ## ```
                                                                                           ##   < The scrollbar
                                                                                           ## ```
  LV_EVENT_ALL* = (0).lv_event_code_t
  LV_EVENT_PRESSED* = (LV_EVENT_ALL + 1).lv_event_code_t ## ```
                                                         ##   < The object has been pressed
                                                         ## ```
  LV_EVENT_PRESSING* = (LV_EVENT_PRESSED + 1).lv_event_code_t ## ```
                                                              ##   < The object is being pressed (called continuously while pressing)
                                                              ## ```
  LV_EVENT_PRESS_LOST* = (LV_EVENT_PRESSING + 1).lv_event_code_t ## ```
                                                                 ##   < The object is still being pressed but slid cursor/finger off of the object
                                                                 ## ```
  LV_EVENT_SHORT_CLICKED* = (LV_EVENT_PRESS_LOST + 1).lv_event_code_t ## ```
                                                                      ##   < The object was pressed for a short period of time, then released it. Not called if scrolled.
                                                                      ## ```
  LV_EVENT_LONG_PRESSED* = (LV_EVENT_SHORT_CLICKED + 1).lv_event_code_t ## ```
                                                                        ##   < Object has been pressed for at least long_press_time.  Not called if scrolled.
                                                                        ## ```
  LV_EVENT_LONG_PRESSED_REPEAT* = (LV_EVENT_LONG_PRESSED + 1).lv_event_code_t ## ```
                                                                              ##   < Called after long_press_time in every long_press_repeat_time ms.  Not called if scrolled.
                                                                              ## ```
  LV_EVENT_CLICKED* = (LV_EVENT_LONG_PRESSED_REPEAT + 1).lv_event_code_t ## ```
                                                                         ##   < Called on release if not scrolled (regardless to long press)
                                                                         ## ```
  LV_EVENT_RELEASED* = (LV_EVENT_CLICKED + 1).lv_event_code_t ## ```
                                                              ##   < Called in every cases when the object has been released
                                                              ## ```
  LV_EVENT_SCROLL_BEGIN* = (LV_EVENT_RELEASED + 1).lv_event_code_t ## ```
                                                                   ##   < Scrolling begins. The event parameter is a pointer to the animation of the scroll. Can be modified
                                                                   ## ```
  LV_EVENT_SCROLL_THROW_BEGIN* = (LV_EVENT_SCROLL_BEGIN + 1).lv_event_code_t ## ```
                                                                             ##   < Scrolling begins. The event parameter is a pointer to the animation of the scroll. Can be modified
                                                                             ## ```
  LV_EVENT_SCROLL_END* = (LV_EVENT_SCROLL_THROW_BEGIN + 1).lv_event_code_t ## ```
                                                                           ##   < Scrolling ends
                                                                           ## ```
  LV_EVENT_SCROLL* = (LV_EVENT_SCROLL_END + 1).lv_event_code_t ## ```
                                                               ##   < Scrolling
                                                               ## ```
  LV_EVENT_GESTURE* = (LV_EVENT_SCROLL + 1).lv_event_code_t ## ```
                                                            ##   < A gesture is detected. Get the gesture with lv_indev_get_gesture_dir(lv_indev_get_act());
                                                            ## ```
  LV_EVENT_KEY* = (LV_EVENT_GESTURE + 1).lv_event_code_t ## ```
                                                         ##   < A key is sent to the object. Get the key with lv_indev_get_key(lv_indev_get_act());
                                                         ## ```
  LV_EVENT_FOCUSED* = (LV_EVENT_KEY + 1).lv_event_code_t ## ```
                                                         ##   < The object is focused
                                                         ## ```
  LV_EVENT_DEFOCUSED* = (LV_EVENT_FOCUSED + 1).lv_event_code_t ## ```
                                                               ##   < The object is defocused
                                                               ## ```
  LV_EVENT_LEAVE* = (LV_EVENT_DEFOCUSED + 1).lv_event_code_t ## ```
                                                             ##   < The object is defocused but still selected
                                                             ## ```
  LV_EVENT_HIT_TEST* = (LV_EVENT_LEAVE + 1).lv_event_code_t ## ```
                                                            ##   < Perform advanced hit-testing
                                                            ##      Drawing events
                                                            ## ```
  LV_EVENT_COVER_CHECK* = (LV_EVENT_HIT_TEST + 1).lv_event_code_t ## ```
                                                                  ##   < Check if the object fully covers an area. The event parameter is lv_cover_check_info_t.
                                                                  ## ```
  LV_EVENT_REFR_EXT_DRAW_SIZE* = (LV_EVENT_COVER_CHECK + 1).lv_event_code_t ## ```
                                                                            ##   < Get the required extra draw area around the object (e.g. for shadow). The event parameter is lv_coord_t to store the size.
                                                                            ## ```
  LV_EVENT_DRAW_MAIN_BEGIN* = (LV_EVENT_REFR_EXT_DRAW_SIZE + 1).lv_event_code_t ## ```
                                                                                ##   < Starting the main drawing phase
                                                                                ## ```
  LV_EVENT_DRAW_MAIN* = (LV_EVENT_DRAW_MAIN_BEGIN + 1).lv_event_code_t ## ```
                                                                       ##   < Perform the main drawing
                                                                       ## ```
  LV_EVENT_DRAW_MAIN_END* = (LV_EVENT_DRAW_MAIN + 1).lv_event_code_t ## ```
                                                                     ##   < Finishing the main drawing phase
                                                                     ## ```
  LV_EVENT_DRAW_POST_BEGIN* = (LV_EVENT_DRAW_MAIN_END + 1).lv_event_code_t ## ```
                                                                           ##   < Starting the post draw phase (when all children are drawn)
                                                                           ## ```
  LV_EVENT_DRAW_POST* = (LV_EVENT_DRAW_POST_BEGIN + 1).lv_event_code_t ## ```
                                                                       ##   < Perform the post draw phase (when all children are drawn)
                                                                       ## ```
  LV_EVENT_DRAW_POST_END* = (LV_EVENT_DRAW_POST + 1).lv_event_code_t ## ```
                                                                     ##   < Finishing the post draw phase (when all children are drawn)
                                                                     ## ```
  LV_EVENT_DRAW_PART_BEGIN* = (LV_EVENT_DRAW_POST_END + 1).lv_event_code_t ## ```
                                                                           ##   < Starting to draw a part. The event parameter is lv_obj_draw_dsc_t.
                                                                           ## ```
  LV_EVENT_DRAW_PART_END* = (LV_EVENT_DRAW_PART_BEGIN + 1).lv_event_code_t ## ```
                                                                           ##   < Finishing to draw a part. The event parameter is lv_obj_draw_dsc_t. 
                                                                           ##      Special events
                                                                           ## ```
  LV_EVENT_VALUE_CHANGED* = (LV_EVENT_DRAW_PART_END + 1).lv_event_code_t ## ```
                                                                         ##   < The object's value has changed (i.e. slider moved)
                                                                         ## ```
  LV_EVENT_INSERT* = (LV_EVENT_VALUE_CHANGED + 1).lv_event_code_t ## ```
                                                                  ##   < A text is inserted to the object. The event data is char being inserted.
                                                                  ## ```
  LV_EVENT_REFRESH* = (LV_EVENT_INSERT + 1).lv_event_code_t ## ```
                                                            ##   < Notify the object to refresh something on it (for the user)
                                                            ## ```
  LV_EVENT_READY* = (LV_EVENT_REFRESH + 1).lv_event_code_t ## ```
                                                           ##   < A process has finished
                                                           ## ```
  LV_EVENT_CANCEL* = (LV_EVENT_READY + 1).lv_event_code_t ## ```
                                                          ##   < A process has been cancelled 
                                                          ##      Other events
                                                          ## ```
  LV_EVENT_DELETE* = (LV_EVENT_CANCEL + 1).lv_event_code_t ## ```
                                                           ##   < Object is being deleted
                                                           ## ```
  LV_EVENT_CHILD_CHANGED* = (LV_EVENT_DELETE + 1).lv_event_code_t ## ```
                                                                  ##   < Child was removed, added, or its size, position were changed
                                                                  ## ```
  LV_EVENT_CHILD_CREATED* = (LV_EVENT_CHILD_CHANGED + 1).lv_event_code_t ## ```
                                                                         ##   < Child was created, always bubbles up to all parents
                                                                         ## ```
  LV_EVENT_CHILD_DELETED* = (LV_EVENT_CHILD_CREATED + 1).lv_event_code_t ## ```
                                                                         ##   < Child was deleted, always bubbles up to all parents
                                                                         ## ```
  LV_EVENT_SCREEN_UNLOAD_START* = (LV_EVENT_CHILD_DELETED + 1).lv_event_code_t ## ```
                                                                               ##   < A screen unload started, fired immediately when scr_load is called
                                                                               ## ```
  LV_EVENT_SCREEN_LOAD_START* = (LV_EVENT_SCREEN_UNLOAD_START + 1).lv_event_code_t ## ```
                                                                                   ##   < A screen load started, fired when the screen change delay is expired
                                                                                   ## ```
  LV_EVENT_SCREEN_LOADED* = (LV_EVENT_SCREEN_LOAD_START + 1).lv_event_code_t ## ```
                                                                             ##   < A screen was loaded
                                                                             ## ```
  LV_EVENT_SCREEN_UNLOADED* = (LV_EVENT_SCREEN_LOADED + 1).lv_event_code_t ## ```
                                                                           ##   < A screen was unloaded
                                                                           ## ```
  LV_EVENT_SIZE_CHANGED* = (LV_EVENT_SCREEN_UNLOADED + 1).lv_event_code_t ## ```
                                                                          ##   < Object coordinates/size have changed
                                                                          ## ```
  LV_EVENT_STYLE_CHANGED* = (LV_EVENT_SIZE_CHANGED + 1).lv_event_code_t ## ```
                                                                        ##   < Object's style has changed
                                                                        ## ```
  LV_EVENT_LAYOUT_CHANGED* = (LV_EVENT_STYLE_CHANGED + 1).lv_event_code_t ## ```
                                                                          ##   < The children position has changed due to a layout recalculation
                                                                          ## ```
  LV_EVENT_GET_SELF_SIZE* = (LV_EVENT_LAYOUT_CHANGED + 1).lv_event_code_t ## ```
                                                                          ##   < Get the internal size of a widget
                                                                          ##      Events of optional LVGL components
                                                                          ## ```
  LV_EVENT_MSG_RECEIVED* = (LV_EVENT_GET_SELF_SIZE + 1).lv_event_code_t
  LV_EVENT_INVALIDATE_AREA* = (LV_EVENT_MSG_RECEIVED + 1).lv_event_code_t
  LV_EVENT_RENDER_START* = (LV_EVENT_INVALIDATE_AREA + 1).lv_event_code_t
  LV_EVENT_RENDER_READY* = (LV_EVENT_RENDER_START + 1).lv_event_code_t
  LV_EVENT_RESOLUTION_CHANGED* = (LV_EVENT_RENDER_READY + 1).lv_event_code_t
  LV_EVENT_REFR_START* = (LV_EVENT_RESOLUTION_CHANGED + 1).lv_event_code_t
  LV_EVENT_REFR_FINISH* = (LV_EVENT_REFR_START + 1).lv_event_code_t
  LV_EVENT_FLUSH_START* = (LV_EVENT_REFR_FINISH + 1).lv_event_code_t
  LV_EVENT_FLUSH_FINISH* = (LV_EVENT_FLUSH_START + 1).lv_event_code_t
  LV_EVENT_LAST* = (LV_EVENT_FLUSH_FINISH + 1).lv_event_code_t ## ```
                                                               ##   Number of default events
                                                               ## ```
  LV_EVENT_PREPROCESS* = (0x00000080).lv_event_code_t ## ```
                                                      ##   This is a flag that can be set with an event so it's processed
                                                      ##                                         before the class default event processing
                                                      ## ```
  LV_DISP_ROTATION_0* = (0).lv_disp_rotation_t
  LV_DISP_ROTATION_90* = (LV_DISP_ROTATION_0 + 1).lv_disp_rotation_t
  LV_DISP_ROTATION_180* = (LV_DISP_ROTATION_90 + 1).lv_disp_rotation_t
  LV_DISP_ROTATION_270* = (LV_DISP_ROTATION_180 + 1).lv_disp_rotation_t
  LV_DISP_RENDER_MODE_PARTIAL* = (0).lv_disp_render_mode_t ## ```
                                                           ##   Use the buffer(s) to render the screen is smaller parts.
                                                           ##        This way the buffers can be smaller then the display to save RAM. At least 1/10 screen size buffer(s) are recommended.
                                                           ## ```
  LV_DISP_RENDER_MODE_DIRECT* = (LV_DISP_RENDER_MODE_PARTIAL + 1).lv_disp_render_mode_t ## ```
                                                                                        ##   The buffer(s) has to be screen sized and LVGL will render into the correct location of the buffer.
                                                                                        ##        This way the buffer always contain the whole image. Only the changed ares will be updated.
                                                                                        ##        With 2 buffers the buffers' content are kept in sync automatically and in flush_cb only address change is required.
                                                                                        ## ```
  LV_DISP_RENDER_MODE_FULL* = (LV_DISP_RENDER_MODE_DIRECT + 1).lv_disp_render_mode_t ## ```
                                                                                     ##   Always redraw the whole screen even if only one pixel has been changed.
                                                                                     ##        With 2 buffers in flush_cb only and address change is required.
                                                                                     ## ```
  LV_SCR_LOAD_ANIM_NONE* = (0).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_OVER_LEFT* = (LV_SCR_LOAD_ANIM_NONE + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_OVER_RIGHT* = (LV_SCR_LOAD_ANIM_OVER_LEFT + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_OVER_TOP* = (LV_SCR_LOAD_ANIM_OVER_RIGHT + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_OVER_BOTTOM* = (LV_SCR_LOAD_ANIM_OVER_TOP + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_MOVE_LEFT* = (LV_SCR_LOAD_ANIM_OVER_BOTTOM + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_MOVE_RIGHT* = (LV_SCR_LOAD_ANIM_MOVE_LEFT + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_MOVE_TOP* = (LV_SCR_LOAD_ANIM_MOVE_RIGHT + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_MOVE_BOTTOM* = (LV_SCR_LOAD_ANIM_MOVE_TOP + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_FADE_IN* = (LV_SCR_LOAD_ANIM_MOVE_BOTTOM + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_FADE_ON* = (LV_SCR_LOAD_ANIM_FADE_IN).lv_scr_load_anim_t ## ```
                                                                            ##   For backward compatibility
                                                                            ## ```
  LV_SCR_LOAD_ANIM_FADE_OUT* = (LV_SCR_LOAD_ANIM_FADE_ON + 1).lv_scr_load_anim_t ## ```
                                                                                 ##   For backward compatibility
                                                                                 ## ```
  LV_SCR_LOAD_ANIM_OUT_LEFT* = (LV_SCR_LOAD_ANIM_FADE_OUT + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_OUT_RIGHT* = (LV_SCR_LOAD_ANIM_OUT_LEFT + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_OUT_TOP* = (LV_SCR_LOAD_ANIM_OUT_RIGHT + 1).lv_scr_load_anim_t
  LV_SCR_LOAD_ANIM_OUT_BOTTOM* = (LV_SCR_LOAD_ANIM_OUT_TOP + 1).lv_scr_load_anim_t
  LV_OBJ_TREE_WALK_NEXT* = (0).lv_obj_tree_walk_res_t
  LV_OBJ_TREE_WALK_SKIP_CHILDREN* = (LV_OBJ_TREE_WALK_NEXT + 1).lv_obj_tree_walk_res_t
  LV_OBJ_TREE_WALK_END* = (LV_OBJ_TREE_WALK_SKIP_CHILDREN + 1).lv_obj_tree_walk_res_t
  LV_SCROLLBAR_MODE_OFF* = (0).lv_scrollbar_mode_t ## ```
                                                   ##   < Never show scrollbars
                                                   ## ```
  LV_SCROLLBAR_MODE_ON* = (LV_SCROLLBAR_MODE_OFF + 1).lv_scrollbar_mode_t ## ```
                                                                          ##   < Always show scrollbars
                                                                          ## ```
  LV_SCROLLBAR_MODE_ACTIVE* = (LV_SCROLLBAR_MODE_ON + 1).lv_scrollbar_mode_t ## ```
                                                                             ##   < Show scroll bars when object is being scrolled
                                                                             ## ```
  LV_SCROLLBAR_MODE_AUTO* = (LV_SCROLLBAR_MODE_ACTIVE + 1).lv_scrollbar_mode_t ## ```
                                                                               ##   < Show scroll bars when the content is large enough to be scrolled
                                                                               ## ```
  LV_SCROLL_SNAP_NONE* = (0).lv_scroll_snap_t ## ```
                                              ##   < Do not align, leave where it is
                                              ## ```
  LV_SCROLL_SNAP_START* = (LV_SCROLL_SNAP_NONE + 1).lv_scroll_snap_t ## ```
                                                                     ##   < Align to the left/top
                                                                     ## ```
  LV_SCROLL_SNAP_END* = (LV_SCROLL_SNAP_START + 1).lv_scroll_snap_t ## ```
                                                                    ##   < Align to the right/bottom
                                                                    ## ```
  LV_SCROLL_SNAP_CENTER* = (LV_SCROLL_SNAP_END + 1).lv_scroll_snap_t ## ```
                                                                     ##   < Align to the center
                                                                     ## ```
  LV_STYLE_STATE_CMP_SAME* = (0).lv_style_state_cmp_t ## ```
                                                      ##   The style properties in the 2 states are identical
                                                      ## ```
  LV_STYLE_STATE_CMP_DIFF_REDRAW* = (LV_STYLE_STATE_CMP_SAME + 1).lv_style_state_cmp_t ## ```
                                                                                       ##   The differences can be shown with a simple redraw
                                                                                       ## ```
  LV_STYLE_STATE_CMP_DIFF_DRAW_PAD* = (LV_STYLE_STATE_CMP_DIFF_REDRAW + 1).lv_style_state_cmp_t ## ```
                                                                                                ##   The differences can be shown with a simple redraw
                                                                                                ## ```
  LV_STYLE_STATE_CMP_DIFF_LAYOUT* = (LV_STYLE_STATE_CMP_DIFF_DRAW_PAD + 1).lv_style_state_cmp_t ## ```
                                                                                                ##   The differences can be shown with a simple redraw
                                                                                                ## ```
  LV_ZOOM_INV_UPSCALE* = 5
  LV_FS_MAX_FN_LENGTH* = 64
  LV_FS_MAX_PATH_LENGTH* = 256
  LV_FS_RES_OK* = (0).lv_fs_res_t
  LV_FS_RES_HW_ERR* = (LV_FS_RES_OK + 1).lv_fs_res_t ## ```
                                                     ##   Low level hardware error
                                                     ## ```
  LV_FS_RES_FS_ERR* = (LV_FS_RES_HW_ERR + 1).lv_fs_res_t ## ```
                                                         ##   Error in the file system structure
                                                         ## ```
  LV_FS_RES_NOT_EX* = (LV_FS_RES_FS_ERR + 1).lv_fs_res_t ## ```
                                                         ##   Driver, file or directory is not exists
                                                         ## ```
  LV_FS_RES_FULL* = (LV_FS_RES_NOT_EX + 1).lv_fs_res_t ## ```
                                                       ##   Disk full
                                                       ## ```
  LV_FS_RES_LOCKED* = (LV_FS_RES_FULL + 1).lv_fs_res_t ## ```
                                                       ##   The file is already opened
                                                       ## ```
  LV_FS_RES_DENIED* = (LV_FS_RES_LOCKED + 1).lv_fs_res_t ## ```
                                                         ##   Access denied. Check 'fs_open' modes and write protect
                                                         ## ```
  LV_FS_RES_BUSY* = (LV_FS_RES_DENIED + 1).lv_fs_res_t ## ```
                                                       ##   The file system now can't handle it, try later
                                                       ## ```
  LV_FS_RES_TOUT* = (LV_FS_RES_BUSY + 1).lv_fs_res_t ## ```
                                                     ##   Process time outed
                                                     ## ```
  LV_FS_RES_NOT_IMP* = (LV_FS_RES_TOUT + 1).lv_fs_res_t ## ```
                                                        ##   Requested function is not implemented
                                                        ## ```
  LV_FS_RES_OUT_OF_MEM* = (LV_FS_RES_NOT_IMP + 1).lv_fs_res_t ## ```
                                                              ##   Not enough memory for an internal operation
                                                              ## ```
  LV_FS_RES_INV_PARAM* = (LV_FS_RES_OUT_OF_MEM + 1).lv_fs_res_t ## ```
                                                                ##   Invalid parameter among arguments
                                                                ## ```
  LV_FS_RES_UNKNOWN* = (LV_FS_RES_INV_PARAM + 1).lv_fs_res_t ## ```
                                                             ##   Other unknown error
                                                             ## ```
  LV_FS_MODE_WR* = (0x00000001).lv_fs_mode_t
  LV_FS_MODE_RD* = (0x00000002).lv_fs_mode_t
  LV_FS_SEEK_SET* = (0x00000000).lv_fs_whence_t ## ```
                                                ##   < Set the position from absolutely (from the start of file)
                                                ## ```
  LV_FS_SEEK_CUR* = (0x00000001).lv_fs_whence_t ## ```
                                                ##   < Set the position from the current position
                                                ## ```
  LV_FS_SEEK_END* = (0x00000002).lv_fs_whence_t ## ```
                                                ##   < Set the position from the end of the file
                                                ## ```
  LV_IMG_SRC_VARIABLE* = (0).lv_img_src_t ## ```
                                          ##   Binary/C variable
                                          ## ```
  LV_IMG_SRC_FILE* = (LV_IMG_SRC_VARIABLE + 1).lv_img_src_t ## ```
                                                            ##   File in filesystem
                                                            ## ```
  LV_IMG_SRC_SYMBOL* = (LV_IMG_SRC_FILE + 1).lv_img_src_t ## ```
                                                          ##   Symbol (@ref lv_symbol_def.h)
                                                          ## ```
  LV_IMG_SRC_UNKNOWN* = (LV_IMG_SRC_SYMBOL + 1).lv_img_src_t ## ```
                                                             ##   Unknown source
                                                             ## ```
  DITHER_GRADIENT* = 0
  LV_RADIUS_CIRCLE* = 0x00007FFF
  LV_DRAW_LABEL_NO_TXT_SEL* = (0x0000FFFF)
  LV_MASK_ID_INV* = (-1)
  LV_MASK_MAX_NUM* = 16
  LV_DRAW_MASK_RES_TRANSP* = (0).lv_draw_mask_res_t
  LV_DRAW_MASK_RES_FULL_COVER* = (LV_DRAW_MASK_RES_TRANSP + 1).lv_draw_mask_res_t
  LV_DRAW_MASK_RES_CHANGED* = (LV_DRAW_MASK_RES_FULL_COVER + 1).lv_draw_mask_res_t
  LV_DRAW_MASK_RES_UNKNOWN* = (LV_DRAW_MASK_RES_CHANGED + 1).lv_draw_mask_res_t
  LV_DRAW_MASK_TYPE_LINE* = (0).lv_draw_mask_type_t
  LV_DRAW_MASK_TYPE_ANGLE* = (LV_DRAW_MASK_TYPE_LINE + 1).lv_draw_mask_type_t
  LV_DRAW_MASK_TYPE_RADIUS* = (LV_DRAW_MASK_TYPE_ANGLE + 1).lv_draw_mask_type_t
  LV_DRAW_MASK_TYPE_FADE* = (LV_DRAW_MASK_TYPE_RADIUS + 1).lv_draw_mask_type_t
  LV_DRAW_MASK_TYPE_MAP* = (LV_DRAW_MASK_TYPE_FADE + 1).lv_draw_mask_type_t
  LV_DRAW_MASK_TYPE_POLYGON* = (LV_DRAW_MASK_TYPE_MAP + 1).lv_draw_mask_type_t
  LV_DRAW_MASK_LINE_SIDE_LEFT* = (0).lv_draw_mask_line_side_t
  LV_DRAW_MASK_LINE_SIDE_RIGHT* = (LV_DRAW_MASK_LINE_SIDE_LEFT + 1).lv_draw_mask_line_side_t
  LV_DRAW_MASK_LINE_SIDE_TOP* = (LV_DRAW_MASK_LINE_SIDE_RIGHT + 1).lv_draw_mask_line_side_t
  LV_DRAW_MASK_LINE_SIDE_BOTTOM* = (LV_DRAW_MASK_LINE_SIDE_TOP + 1).lv_draw_mask_line_side_t
  LV_DRAW_LAYER_FLAG_NONE* = (0).lv_draw_layer_flags_t
  LV_DRAW_LAYER_FLAG_HAS_ALPHA* = (LV_DRAW_LAYER_FLAG_NONE + 1).lv_draw_layer_flags_t
  LV_DRAW_LAYER_FLAG_CAN_SUBDIVIDE* = (LV_DRAW_LAYER_FLAG_HAS_ALPHA + 1).lv_draw_layer_flags_t
  LV_COVER_RES_COVER* = (0).lv_cover_res_t
  LV_COVER_RES_NOT_COVER* = (1).lv_cover_res_t
  LV_COVER_RES_MASKED* = (2).lv_cover_res_t
  LV_LAYER_TYPE_NONE* = (0).lv_layer_type_t
  LV_LAYER_TYPE_SIMPLE* = (LV_LAYER_TYPE_NONE + 1).lv_layer_type_t
  LV_LAYER_TYPE_TRANSFORM* = (LV_LAYER_TYPE_SIMPLE + 1).lv_layer_type_t
  LV_OBJ_CLASS_EDITABLE_INHERIT* = (0).lv_obj_class_editable_t ## ```
                                                               ##   < Check the base class. Must have 0 value to let zero initialized class inherit
                                                               ## ```
  LV_OBJ_CLASS_EDITABLE_TRUE* = (LV_OBJ_CLASS_EDITABLE_INHERIT + 1).lv_obj_class_editable_t ## ```
                                                                                            ##   < Check the base class. Must have 0 value to let zero initialized class inherit
                                                                                            ## ```
  LV_OBJ_CLASS_EDITABLE_FALSE* = (LV_OBJ_CLASS_EDITABLE_TRUE + 1).lv_obj_class_editable_t
  LV_OBJ_CLASS_GROUP_DEF_INHERIT* = (0).lv_obj_class_group_def_t ## ```
                                                                 ##   < Check the base class. Must have 0 value to let zero initialized class inherit
                                                                 ## ```
  LV_OBJ_CLASS_GROUP_DEF_TRUE* = (LV_OBJ_CLASS_GROUP_DEF_INHERIT + 1).lv_obj_class_group_def_t ## ```
                                                                                               ##   < Check the base class. Must have 0 value to let zero initialized class inherit
                                                                                               ## ```
  LV_OBJ_CLASS_GROUP_DEF_FALSE* = (LV_OBJ_CLASS_GROUP_DEF_TRUE + 1).lv_obj_class_group_def_t
  LV_OBJ_CLASS_THEME_INHERITABLE_FALSE* = (0).lv_obj_class_theme_inheritable_t ## ```
                                                                               ##   < Do not inherit theme from base class.
                                                                               ## ```
  LV_OBJ_CLASS_THEME_INHERITABLE_TRUE* = (
      LV_OBJ_CLASS_THEME_INHERITABLE_FALSE + 1).lv_obj_class_theme_inheritable_t ## ```
                                                                                 ##   < Do not inherit theme from base class.
                                                                                 ## ```
  LV_KEY_UP* = (17).lv_key_t ## ```
                             ##   0x11
                             ## ```
  LV_KEY_DOWN* = (18).lv_key_t ## ```
                               ##   0x12
                               ## ```
  LV_KEY_RIGHT* = (19).lv_key_t ## ```
                                ##   0x13
                                ## ```
  LV_KEY_LEFT* = (20).lv_key_t ## ```
                               ##   0x14
                               ## ```
  LV_KEY_ESC* = (27).lv_key_t ## ```
                              ##   0x1B
                              ## ```
  LV_KEY_DEL* = (127).lv_key_t ## ```
                               ##   0x7F
                               ## ```
  LV_KEY_BACKSPACE* = (8).lv_key_t ## ```
                                   ##   0x08
                                   ## ```
  LV_KEY_ENTER* = (10).lv_key_t ## ```
                                ##   0x0A, '\n'
                                ## ```
  LV_KEY_NEXT* = (9).lv_key_t ## ```
                              ##   0x09, '\t'
                              ## ```
  LV_KEY_PREV* = (11).lv_key_t ## ```
                               ##   0x0B, '
                               ## ```
  LV_KEY_HOME* = (2).lv_key_t ## ```
                              ##   0x02, STX
                              ## ```
  LV_KEY_END* = (3).lv_key_t ## ```
                             ##   0x03, ETX
                             ## ```
  LV_GROUP_REFOCUS_POLICY_NEXT* = (0).lv_group_refocus_policy_t
  LV_GROUP_REFOCUS_POLICY_PREV* = (1).lv_group_refocus_policy_t
  LV_INDEV_TYPE_NONE* = (0).lv_indev_type_t ## ```
                                            ##   < Uninitialized state
                                            ## ```
  LV_INDEV_TYPE_POINTER* = (LV_INDEV_TYPE_NONE + 1).lv_indev_type_t ## ```
                                                                    ##   < Touch pad, mouse, external button
                                                                    ## ```
  LV_INDEV_TYPE_KEYPAD* = (LV_INDEV_TYPE_POINTER + 1).lv_indev_type_t ## ```
                                                                      ##   < Keypad or keyboard
                                                                      ## ```
  LV_INDEV_TYPE_BUTTON* = (LV_INDEV_TYPE_KEYPAD + 1).lv_indev_type_t ## ```
                                                                     ##   < External (hardware button) which is assigned to a specific point of the screen
                                                                     ## ```
  LV_INDEV_TYPE_ENCODER* = (LV_INDEV_TYPE_BUTTON + 1).lv_indev_type_t ## ```
                                                                      ##   < Encoder with only Left, Right turn and a Button
                                                                      ## ```
  LV_INDEV_STATE_RELEASED* = (0).lv_indev_state_t
  LV_INDEV_STATE_PRESSED* = (LV_INDEV_STATE_RELEASED + 1).lv_indev_state_t
  LV_FONT_FMT_TXT_CMAP_FORMAT0_FULL* = (0).lv_font_fmt_txt_cmap_type_t
  LV_FONT_FMT_TXT_CMAP_SPARSE_FULL* = (LV_FONT_FMT_TXT_CMAP_FORMAT0_FULL + 1).lv_font_fmt_txt_cmap_type_t
  LV_FONT_FMT_TXT_CMAP_FORMAT0_TINY* = (LV_FONT_FMT_TXT_CMAP_SPARSE_FULL + 1).lv_font_fmt_txt_cmap_type_t
  LV_FONT_FMT_TXT_CMAP_SPARSE_TINY* = (LV_FONT_FMT_TXT_CMAP_FORMAT0_TINY + 1).lv_font_fmt_txt_cmap_type_t
  LV_FONT_FMT_TXT_PLAIN* = (0).lv_font_fmt_txt_bitmap_format_t
  LV_FONT_FMT_TXT_COMPRESSED* = (1).lv_font_fmt_txt_bitmap_format_t
  LV_FONT_FMT_TXT_COMPRESSED_NO_PREFILTER* = (1).lv_font_fmt_txt_bitmap_format_t
  LV_IMG_SIZE_MODE_VIRTUAL* = (0).lv_img_size_mode_t ## ```
                                                     ##   Zoom doesn't affect the coordinates of the object,
                                                     ##         however if zoomed in the image is drawn out of the its coordinates.
                                                     ##         The layout's won't change on zoom
                                                     ## ```
  LV_IMG_SIZE_MODE_REAL* = (LV_IMG_SIZE_MODE_VIRTUAL + 1).lv_img_size_mode_t ## ```
                                                                             ##   If the object size is set to SIZE_CONTENT, then object size equals zoomed image size.
                                                                             ##         It causes layout recalculation.
                                                                             ##         If the object size is set explicitly, the image will be cropped when zoomed in.
                                                                             ## ```
  LV_ANIM_IMG_PART_MAIN* = (0).lv_animimg_part_t
  LV_ARC_MODE_NORMAL* = (0).lv_arc_mode_t
  LV_ARC_MODE_SYMMETRICAL* = (LV_ARC_MODE_NORMAL + 1).lv_arc_mode_t
  LV_ARC_MODE_REVERSE* = (LV_ARC_MODE_SYMMETRICAL + 1).lv_arc_mode_t
  LV_ARC_DRAW_PART_BACKGROUND* = (0).lv_arc_draw_part_type_t ## ```
                                                             ##   < The background arc
                                                             ## ```
  LV_ARC_DRAW_PART_FOREGROUND* = (LV_ARC_DRAW_PART_BACKGROUND + 1).lv_arc_draw_part_type_t ## ```
                                                                                           ##   < The foreground arc
                                                                                           ## ```
  LV_ARC_DRAW_PART_KNOB* = (LV_ARC_DRAW_PART_FOREGROUND + 1).lv_arc_draw_part_type_t ## ```
                                                                                     ##   < The knob
                                                                                     ## ```
  LV_LABEL_WAIT_CHAR_COUNT* = 3
  LV_LABEL_DOT_NUM* = 3
  LV_LABEL_POS_LAST* = 0x0000FFFF
  LV_LABEL_DEFAULT_TEXT* = "Text"
  LV_LABEL_LONG_WRAP* = (0).lv_label_long_mode_t ## ```
                                                 ##   < Keep the object width, wrap lines longer than object width and expand the object height
                                                 ## ```
  LV_LABEL_LONG_DOT* = (LV_LABEL_LONG_WRAP + 1).lv_label_long_mode_t ## ```
                                                                     ##   < Keep the size and write dots at the end if the text is too long
                                                                     ## ```
  LV_LABEL_LONG_SCROLL* = (LV_LABEL_LONG_DOT + 1).lv_label_long_mode_t ## ```
                                                                       ##   < Keep the size and roll the text back and forth
                                                                       ## ```
  LV_LABEL_LONG_SCROLL_CIRCULAR* = (LV_LABEL_LONG_SCROLL + 1).lv_label_long_mode_t ## ```
                                                                                   ##   < Keep the size and roll the text circularly
                                                                                   ## ```
  LV_LABEL_LONG_CLIP* = (LV_LABEL_LONG_SCROLL_CIRCULAR + 1).lv_label_long_mode_t ## ```
                                                                                 ##   < Keep the size and clip the text out of it
                                                                                 ## ```
  LV_BAR_MODE_NORMAL* = (0).lv_bar_mode_t
  LV_BAR_MODE_SYMMETRICAL* = (LV_BAR_MODE_NORMAL + 1).lv_bar_mode_t
  LV_BAR_MODE_RANGE* = (LV_BAR_MODE_SYMMETRICAL + 1).lv_bar_mode_t
  LV_BAR_DRAW_PART_INDICATOR* = (0).lv_bar_draw_part_type_t ## ```
                                                            ##   < The indicator
                                                            ## ```
  LV_BTNMATRIX_BTN_NONE* = 0x0000FFFF
  LV_BTNMATRIX_WIDTH* = (0x0000000F).lv_btnmatrix_ctrl_t ## ```
                                                         ##   < Reserved to store the size units
                                                         ## ```
  LV_BTNMATRIX_CTRL_HIDDEN* = (0x00000010).lv_btnmatrix_ctrl_t ## ```
                                                               ##   < Button hidden
                                                               ## ```
  LV_BTNMATRIX_CTRL_NO_REPEAT* = (0x00000020).lv_btnmatrix_ctrl_t ## ```
                                                                  ##   < Do not repeat press this button.
                                                                  ## ```
  LV_BTNMATRIX_CTRL_DISABLED* = (0x00000040).lv_btnmatrix_ctrl_t ## ```
                                                                 ##   < Disable this button.
                                                                 ## ```
  LV_BTNMATRIX_CTRL_CHECKABLE* = (0x00000080).lv_btnmatrix_ctrl_t ## ```
                                                                  ##   < The button can be toggled.
                                                                  ## ```
  LV_BTNMATRIX_CTRL_CHECKED* = (0x00000100).lv_btnmatrix_ctrl_t ## ```
                                                                ##   < Button is currently toggled (e.g. checked).
                                                                ## ```
  LV_BTNMATRIX_CTRL_CLICK_TRIG* = (0x00000200).lv_btnmatrix_ctrl_t ## ```
                                                                   ##   < 1: Send LV_EVENT_VALUE_CHANGE on CLICK, 0: Send LV_EVENT_VALUE_CHANGE on PRESS
                                                                   ## ```
  LV_BTNMATRIX_CTRL_POPOVER* = (0x00000400).lv_btnmatrix_ctrl_t ## ```
                                                                ##   < Show a popover when pressing this key
                                                                ## ```
  LV_BTNMATRIX_CTRL_RECOLOR* = (0x00000800).lv_btnmatrix_ctrl_t ## ```
                                                                ##   < Enable text recoloring with #color
                                                                ## ```
  LV_BTNMATRIX_CTRL_RESERVED_1* = (0x00001000).lv_btnmatrix_ctrl_t ## ```
                                                                   ##   < Reserved for later use
                                                                   ## ```
  LV_BTNMATRIX_CTRL_RESERVED_2* = (0x00002000).lv_btnmatrix_ctrl_t ## ```
                                                                   ##   < Reserved for later use
                                                                   ## ```
  LV_BTNMATRIX_CTRL_CUSTOM_1* = (0x00004000).lv_btnmatrix_ctrl_t ## ```
                                                                 ##   < Custom free to use flag
                                                                 ## ```
  LV_BTNMATRIX_CTRL_CUSTOM_2* = (0x00008000).lv_btnmatrix_ctrl_t ## ```
                                                                 ##   < Custom free to use flag
                                                                 ## ```
  LV_BTNMATRIX_DRAW_PART_BTN* = (0).lv_btnmatrix_draw_part_type_t ## ```
                                                                  ##   < The rectangle and label of buttons
                                                                  ## ```
  LV_CHART_TYPE_NONE* = (0).lv_chart_type_t ## ```
                                            ##   < Don't draw the series
                                            ## ```
  LV_CHART_TYPE_LINE* = (LV_CHART_TYPE_NONE + 1).lv_chart_type_t ## ```
                                                                 ##   < Connect the points with lines
                                                                 ## ```
  LV_CHART_TYPE_BAR* = (LV_CHART_TYPE_LINE + 1).lv_chart_type_t ## ```
                                                                ##   < Draw columns
                                                                ## ```
  LV_CHART_TYPE_SCATTER* = (LV_CHART_TYPE_BAR + 1).lv_chart_type_t ## ```
                                                                   ##   < Draw points and lines in 2D (x,y coordinates)
                                                                   ## ```
  LV_CHART_UPDATE_MODE_SHIFT* = (0).lv_chart_update_mode_t ## ```
                                                           ##   < Shift old data to the left and add the new one the right
                                                           ## ```
  LV_CHART_UPDATE_MODE_CIRCULAR* = (LV_CHART_UPDATE_MODE_SHIFT + 1).lv_chart_update_mode_t ## ```
                                                                                           ##   < Add the new data in a circular way
                                                                                           ## ```
  LV_CHART_AXIS_PRIMARY_Y* = (0x00000000).lv_chart_axis_t
  LV_CHART_AXIS_SECONDARY_Y* = (0x00000001).lv_chart_axis_t
  LV_CHART_AXIS_PRIMARY_X* = (0x00000002).lv_chart_axis_t
  LV_CHART_AXIS_SECONDARY_X* = (0x00000004).lv_chart_axis_t
  LV_CHART_AXIS_LAST* = (LV_CHART_AXIS_SECONDARY_X + 1).lv_chart_axis_t
  LV_CHART_DRAW_PART_DIV_LINE_INIT* = (0).lv_chart_draw_part_type_t ## ```
                                                                    ##   < Used before/after drawn the div lines
                                                                    ## ```
  LV_CHART_DRAW_PART_DIV_LINE_HOR* = (LV_CHART_DRAW_PART_DIV_LINE_INIT + 1).lv_chart_draw_part_type_t ## ```
                                                                                                      ##   < Used for each horizontal division lines
                                                                                                      ## ```
  LV_CHART_DRAW_PART_DIV_LINE_VER* = (LV_CHART_DRAW_PART_DIV_LINE_HOR + 1).lv_chart_draw_part_type_t ## ```
                                                                                                     ##   < Used for each vertical division lines
                                                                                                     ## ```
  LV_CHART_DRAW_PART_LINE_AND_POINT* = (LV_CHART_DRAW_PART_DIV_LINE_VER + 1).lv_chart_draw_part_type_t ## ```
                                                                                                       ##   < Used on line and scatter charts for lines and points
                                                                                                       ## ```
  LV_CHART_DRAW_PART_BAR* = (LV_CHART_DRAW_PART_LINE_AND_POINT + 1).lv_chart_draw_part_type_t ## ```
                                                                                              ##   < Used on bar charts for the rectangles
                                                                                              ## ```
  LV_CHART_DRAW_PART_CURSOR* = (LV_CHART_DRAW_PART_BAR + 1).lv_chart_draw_part_type_t ## ```
                                                                                      ##   < Used on cursor lines and points
                                                                                      ## ```
  LV_CHART_DRAW_PART_TICK_LABEL* = (LV_CHART_DRAW_PART_CURSOR + 1).lv_chart_draw_part_type_t ## ```
                                                                                             ##   < Used on tick lines and labels
                                                                                             ## ```
  LV_CHECKBOX_DRAW_PART_BOX* = (0).lv_checkbox_draw_part_type_t ## ```
                                                                ##   < The tick box
                                                                ## ```
  LV_COLORWHEEL_MODE_HUE* = (0).lv_colorwheel_mode_t
  LV_COLORWHEEL_MODE_SATURATION* = (LV_COLORWHEEL_MODE_HUE + 1).lv_colorwheel_mode_t
  LV_COLORWHEEL_MODE_VALUE* = (LV_COLORWHEEL_MODE_SATURATION + 1).lv_colorwheel_mode_t
  LV_DROPDOWN_POS_LAST* = 0x0000FFFF
  LV_IMGBTN_STATE_RELEASED* = (0).lv_imgbtn_state_t
  LV_IMGBTN_STATE_PRESSED* = (LV_IMGBTN_STATE_RELEASED + 1).lv_imgbtn_state_t
  LV_IMGBTN_STATE_DISABLED* = (LV_IMGBTN_STATE_PRESSED + 1).lv_imgbtn_state_t
  LV_IMGBTN_STATE_CHECKED_RELEASED* = (LV_IMGBTN_STATE_DISABLED + 1).lv_imgbtn_state_t
  LV_IMGBTN_STATE_CHECKED_PRESSED* = (LV_IMGBTN_STATE_CHECKED_RELEASED + 1).lv_imgbtn_state_t
  LV_IMGBTN_STATE_CHECKED_DISABLED* = (LV_IMGBTN_STATE_CHECKED_PRESSED + 1).lv_imgbtn_state_t
  LV_IMGBTN_STATE_NUM* = (LV_IMGBTN_STATE_CHECKED_DISABLED + 1).lv_imgbtn_state_t
  LV_KEYBOARD_CTRL_BTN_FLAGS* = (LV_BTNMATRIX_CTRL_NO_REPEAT or
      typeof(LV_BTNMATRIX_CTRL_NO_REPEAT)(LV_BTNMATRIX_CTRL_CLICK_TRIG) or
      typeof(LV_BTNMATRIX_CTRL_NO_REPEAT)(LV_BTNMATRIX_CTRL_CHECKED))
  LV_KEYBOARD_MODE_TEXT_LOWER* = (0).lv_keyboard_mode_t
  LV_KEYBOARD_MODE_TEXT_UPPER* = (LV_KEYBOARD_MODE_TEXT_LOWER + 1).lv_keyboard_mode_t
  LV_KEYBOARD_MODE_SPECIAL* = (LV_KEYBOARD_MODE_TEXT_UPPER + 1).lv_keyboard_mode_t
  LV_KEYBOARD_MODE_NUMBER* = (LV_KEYBOARD_MODE_SPECIAL + 1).lv_keyboard_mode_t
  LV_KEYBOARD_MODE_USER_1* = (LV_KEYBOARD_MODE_NUMBER + 1).lv_keyboard_mode_t
  LV_KEYBOARD_MODE_USER_2* = (LV_KEYBOARD_MODE_USER_1 + 1).lv_keyboard_mode_t
  LV_KEYBOARD_MODE_USER_3* = (LV_KEYBOARD_MODE_USER_2 + 1).lv_keyboard_mode_t
  LV_KEYBOARD_MODE_USER_4* = (LV_KEYBOARD_MODE_USER_3 + 1).lv_keyboard_mode_t
  LV_KEYBOARD_MODE_TEXT_ARABIC* = (LV_KEYBOARD_MODE_USER_4 + 1).lv_keyboard_mode_t
  LV_LED_BRIGHT_MIN* = 80
  LV_LED_BRIGHT_MAX* = 255
  LV_LED_DRAW_PART_RECTANGLE* = (0).lv_led_draw_part_type_t ## ```
                                                            ##   < The main rectangle
                                                            ## ```
  LV_MENU_HEADER_TOP_FIXED* = (0).lv_menu_mode_header_t ## ```
                                                        ##   Header is positioned at the top
                                                        ## ```
  LV_MENU_HEADER_TOP_UNFIXED* = (LV_MENU_HEADER_TOP_FIXED + 1).lv_menu_mode_header_t ## ```
                                                                                     ##   Header is positioned at the top and can be scrolled out of view
                                                                                     ## ```
  LV_MENU_HEADER_BOTTOM_FIXED* = (LV_MENU_HEADER_TOP_UNFIXED + 1).lv_menu_mode_header_t ## ```
                                                                                        ##   Header is positioned at the bottom
                                                                                        ## ```
  LV_MENU_ROOT_BACK_BTN_DISABLED* = (0).lv_menu_mode_root_back_btn_t
  LV_MENU_ROOT_BACK_BTN_ENABLED* = (LV_MENU_ROOT_BACK_BTN_DISABLED + 1).lv_menu_mode_root_back_btn_t
  LV_METER_INDICATOR_TYPE_NEEDLE_IMG* = (0).lv_meter_indicator_type_t
  LV_METER_INDICATOR_TYPE_NEEDLE_LINE* = (LV_METER_INDICATOR_TYPE_NEEDLE_IMG + 1).lv_meter_indicator_type_t
  LV_METER_INDICATOR_TYPE_SCALE_LINES* = (
      LV_METER_INDICATOR_TYPE_NEEDLE_LINE + 1).lv_meter_indicator_type_t
  LV_METER_INDICATOR_TYPE_ARC* = (LV_METER_INDICATOR_TYPE_SCALE_LINES + 1).lv_meter_indicator_type_t
  LV_METER_DRAW_PART_ARC* = (0).lv_meter_draw_part_type_t ## ```
                                                          ##   < The arc indicator
                                                          ## ```
  LV_METER_DRAW_PART_NEEDLE_LINE* = (LV_METER_DRAW_PART_ARC + 1).lv_meter_draw_part_type_t ## ```
                                                                                           ##   < The needle lines
                                                                                           ## ```
  LV_METER_DRAW_PART_NEEDLE_IMG* = (LV_METER_DRAW_PART_NEEDLE_LINE + 1).lv_meter_draw_part_type_t ## ```
                                                                                                  ##   < The needle images
                                                                                                  ## ```
  LV_METER_DRAW_PART_TICK* = (LV_METER_DRAW_PART_NEEDLE_IMG + 1).lv_meter_draw_part_type_t ## ```
                                                                                           ##   < The tick lines and labels
                                                                                           ## ```
  LV_ROLLER_MODE_NORMAL* = (0).lv_roller_mode_t ## ```
                                                ##   < Normal mode (roller ends at the end of the options).
                                                ## ```
  LV_ROLLER_MODE_INFINITE* = (LV_ROLLER_MODE_NORMAL + 1).lv_roller_mode_t ## ```
                                                                          ##   < Infinite mode (roller can be scrolled forever).
                                                                          ## ```
  LV_SLIDER_MODE_NORMAL* = (LV_BAR_MODE_NORMAL).lv_slider_mode_t
  LV_SLIDER_MODE_SYMMETRICAL* = (LV_BAR_MODE_SYMMETRICAL).lv_slider_mode_t
  LV_SLIDER_MODE_RANGE* = (LV_BAR_MODE_RANGE).lv_slider_mode_t
  LV_SLIDER_DRAW_PART_KNOB* = (0).lv_slider_draw_part_type_t ## ```
                                                             ##   < The main (right) knob's rectangle
                                                             ## ```
  LV_SLIDER_DRAW_PART_KNOB_LEFT* = (LV_SLIDER_DRAW_PART_KNOB + 1).lv_slider_draw_part_type_t ## ```
                                                                                             ##   < The left knob's rectangle
                                                                                             ## ```
  LV_SPAN_OVERFLOW_CLIP* = (0).lv_span_overflow_t
  LV_SPAN_OVERFLOW_ELLIPSIS* = (LV_SPAN_OVERFLOW_CLIP + 1).lv_span_overflow_t
  LV_SPAN_MODE_FIXED* = (0).lv_span_mode_t ## ```
                                           ##   < fixed the obj size
                                           ## ```
  LV_SPAN_MODE_EXPAND* = (LV_SPAN_MODE_FIXED + 1).lv_span_mode_t ## ```
                                                                 ##   < Expand the object size to the text size
                                                                 ## ```
  LV_SPAN_MODE_BREAK* = (LV_SPAN_MODE_EXPAND + 1).lv_span_mode_t ## ```
                                                                 ##   < Keep width, break the too long lines and expand height
                                                                 ## ```
  LV_TEXTAREA_CURSOR_LAST* = (0x00007FFF)
  LV_PART_TEXTAREA_PLACEHOLDER* = (LV_PART_CUSTOM_FIRST).cint
  LV_SPINBOX_MAX_DIGIT_COUNT* = 10
  LV_SWITCH_KNOB_EXT_AREA_CORRECTION* = 2
  LV_TABLE_CELL_CTRL_MERGE_RIGHT* = (1 shl typeof(1)(0)).lv_table_cell_ctrl_t
  LV_TABLE_CELL_CTRL_TEXT_CROP* = (1 shl typeof(1)(1)).lv_table_cell_ctrl_t
  LV_TABLE_CELL_CTRL_CUSTOM_1* = (1 shl typeof(1)(4)).lv_table_cell_ctrl_t
  LV_TABLE_CELL_CTRL_CUSTOM_2* = (1 shl typeof(1)(5)).lv_table_cell_ctrl_t
  LV_TABLE_CELL_CTRL_CUSTOM_3* = (1 shl typeof(1)(6)).lv_table_cell_ctrl_t
  LV_TABLE_CELL_CTRL_CUSTOM_4* = (1 shl typeof(1)(7)).lv_table_cell_ctrl_t
  LV_TABLE_DRAW_PART_CELL* = (0).lv_table_draw_part_type_t ## ```
                                                           ##   < A cell
                                                           ## ```
  LV_GRIDNAV_CTRL_NONE* = (0x00000000).lv_gridnav_ctrl_t
  LV_GRIDNAV_CTRL_ROLLOVER* = (0x00000001).lv_gridnav_ctrl_t ## ```
                                                             ##   If there is no next/previous object in a direction,
                                                             ##        the focus goes to the object in the next/previous row (on left/right keys)
                                                             ##        or first/last row (on up/down keys)
                                                             ## ```
  LV_GRIDNAV_CTRL_SCROLL_FIRST* = (0x00000002).lv_gridnav_ctrl_t ## ```
                                                                 ##   If an arrow is pressed and the focused object can be scrolled in that direction
                                                                 ##        then it will be scrolled instead of going to the next/previous object.
                                                                 ##        If there is no more room for scrolling the next/previous object will be focused normally
                                                                 ## ```
  LV_IME_PINYIN_K9_MAX_INPUT* = 7
  LV_IME_PINYIN_MODE_K26* = (0).lv_ime_pinyin_mode_t
  LV_IME_PINYIN_MODE_K9* = (LV_IME_PINYIN_MODE_K26 + 1).lv_ime_pinyin_mode_t
  LV_IME_PINYIN_MODE_K9_NUMBER* = (LV_IME_PINYIN_MODE_K9 + 1).lv_ime_pinyin_mode_t
  LV_EXPLORER_SORT_NONE* = (0).lv_file_explorer_sort_t
  LV_EXPLORER_SORT_KIND* = (LV_EXPLORER_SORT_NONE + 1).lv_file_explorer_sort_t
  LV_EXPLORER_HOME_DIR* = (0).lv_file_explorer_dir_t
  LV_EXPLORER_MUSIC_DIR* = (LV_EXPLORER_HOME_DIR + 1).lv_file_explorer_dir_t
  LV_EXPLORER_PICTURES_DIR* = (LV_EXPLORER_MUSIC_DIR + 1).lv_file_explorer_dir_t
  LV_EXPLORER_VIDEO_DIR* = (LV_EXPLORER_PICTURES_DIR + 1).lv_file_explorer_dir_t
  LV_EXPLORER_DOCS_DIR* = (LV_EXPLORER_VIDEO_DIR + 1).lv_file_explorer_dir_t
  LV_EXPLORER_FS_DIR* = (LV_EXPLORER_DOCS_DIR + 1).lv_file_explorer_dir_t
  LV_FLEX_COLUMN* = (1 shl typeof(1)(0))
  LV_FLEX_WRAP* = (1 shl typeof(1)(2))
  LV_FLEX_REVERSE* = (1 shl typeof(1)(3))
  LV_FLEX_ALIGN_START* = (0).lv_flex_align_t
  LV_FLEX_ALIGN_END* = (LV_FLEX_ALIGN_START + 1).lv_flex_align_t
  LV_FLEX_ALIGN_CENTER* = (LV_FLEX_ALIGN_END + 1).lv_flex_align_t
  LV_FLEX_ALIGN_SPACE_EVENLY* = (LV_FLEX_ALIGN_CENTER + 1).lv_flex_align_t
  LV_FLEX_ALIGN_SPACE_AROUND* = (LV_FLEX_ALIGN_SPACE_EVENLY + 1).lv_flex_align_t
  LV_FLEX_ALIGN_SPACE_BETWEEN* = (LV_FLEX_ALIGN_SPACE_AROUND + 1).lv_flex_align_t
  LV_FLEX_FLOW_ROW* = (0x00000000).lv_flex_flow_t
  LV_FLEX_FLOW_COLUMN* = ((1 shl typeof(1)(0))).lv_flex_flow_t
  LV_FLEX_FLOW_ROW_WRAP* = (LV_FLEX_FLOW_ROW.lv_flex_flow_t or
      typeof(LV_FLEX_FLOW_ROW.lv_flex_flow_t)(
      (1 shl typeof(LV_FLEX_FLOW_ROW.lv_flex_flow_t)(2)))).lv_flex_flow_t
  LV_FLEX_FLOW_ROW_REVERSE* = (LV_FLEX_FLOW_ROW.lv_flex_flow_t or
      typeof(LV_FLEX_FLOW_ROW.lv_flex_flow_t)(
      (1 shl typeof(LV_FLEX_FLOW_ROW.lv_flex_flow_t)(3)))).lv_flex_flow_t
  LV_FLEX_FLOW_ROW_WRAP_REVERSE* = (LV_FLEX_FLOW_ROW.lv_flex_flow_t or
      typeof(LV_FLEX_FLOW_ROW.lv_flex_flow_t)(
      (1 shl typeof(LV_FLEX_FLOW_ROW.lv_flex_flow_t)(2))) or
      typeof(LV_FLEX_FLOW_ROW.lv_flex_flow_t)(
      (1 shl typeof(LV_FLEX_FLOW_ROW.lv_flex_flow_t)(3)))).lv_flex_flow_t
  LV_FLEX_FLOW_COLUMN_WRAP* = (LV_FLEX_FLOW_COLUMN.lv_flex_flow_t or
      typeof(LV_FLEX_FLOW_COLUMN.lv_flex_flow_t)(
      (1 shl typeof(LV_FLEX_FLOW_COLUMN.lv_flex_flow_t)(2)))).lv_flex_flow_t
  LV_FLEX_FLOW_COLUMN_REVERSE* = (LV_FLEX_FLOW_COLUMN.lv_flex_flow_t or
      typeof(LV_FLEX_FLOW_COLUMN.lv_flex_flow_t)(
      (1 shl typeof(LV_FLEX_FLOW_COLUMN.lv_flex_flow_t)(3)))).lv_flex_flow_t
  LV_FLEX_FLOW_COLUMN_WRAP_REVERSE* = (LV_FLEX_FLOW_COLUMN.lv_flex_flow_t or
      typeof(LV_FLEX_FLOW_COLUMN.lv_flex_flow_t)(
      (1 shl typeof(LV_FLEX_FLOW_COLUMN.lv_flex_flow_t)(2))) or
      typeof(LV_FLEX_FLOW_COLUMN.lv_flex_flow_t)(
      (1 shl typeof(LV_FLEX_FLOW_COLUMN.lv_flex_flow_t)(3)))).lv_flex_flow_t
  LV_GRID_CONTENT* = (LV_COORD_MAX - typeof(LV_COORD_MAX)(101))
  LV_GRID_TEMPLATE_LAST* = (LV_COORD_MAX)
  LV_GRID_ALIGN_START* = (0).lv_grid_align_t
  LV_GRID_ALIGN_CENTER* = (LV_GRID_ALIGN_START + 1).lv_grid_align_t
  LV_GRID_ALIGN_END* = (LV_GRID_ALIGN_CENTER + 1).lv_grid_align_t
  LV_GRID_ALIGN_STRETCH* = (LV_GRID_ALIGN_END + 1).lv_grid_align_t
  LV_GRID_ALIGN_SPACE_EVENLY* = (LV_GRID_ALIGN_STRETCH + 1).lv_grid_align_t
  LV_GRID_ALIGN_SPACE_AROUND* = (LV_GRID_ALIGN_SPACE_EVENLY + 1).lv_grid_align_t
  LV_GRID_ALIGN_SPACE_BETWEEN* = (LV_GRID_ALIGN_SPACE_AROUND + 1).lv_grid_align_t
  KEYBOARD_BUFFER_SIZE* = 32
  LV_INV_BUF_SIZE* = 32
type
  silence_gcc_warning* {.incompleteStruct, implvglHdr,
                         importc: "struct _silence_gcc_warning".} = object
  lv_uintptr_t* {.importc, implvglHdr.} = ptr uint ## ```
                                                   ##   If c99 or newer,  use the definition of uintptr_t directly from <stdint.h>
                                                   ## ```
  lv_intptr_t* {.importc, implvglHdr.} = ptr int ## ```
                                                 ##   *******************
                                                 ##    GLOBAL PROTOTYPES
                                                 ##   *******************
                                                 ##    *******************
                                                 ##         MACROS
                                                 ##   *******************
                                                 ## ```
  lv_log_level_t* {.importc, implvglHdr.} = int8 ## ```
                                                 ##   Do nothing if LV_USE_LOG 0
                                                 ## ```
  lv_timer_t* {.bycopy, implvglHdr, importc: "struct _lv_timer_t".} = object
    period*: uint32          ## ```
                             ##   < How often the timer should run
                             ## ```
    last_run*: uint32        ## ```
                             ##   < Last time the timer ran
                             ## ```
    timer_cb*: lv_timer_cb_t ## ```
                             ##   < Timer function
                             ## ```
    user_data*: pointer      ## ```
                             ##   < Custom user data
                             ## ```
    repeat_count*: int32 ## ```
                         ##   < 1: One time;  -1 : infinity;  n>0: residual times
                         ## ```
    paused* {.bitsize: 1.}: uint32 ## ```
                                   ##   < 1: One time;  -1 : infinity;  n>0: residual times
                                   ## ```
  
  lv_timer_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_timer_t) {.cdecl.}
  lv_sqrt_res_t* {.bycopy, importc, implvglHdr.} = object
    i*: uint16
    f*: uint16

  lv_mem_monitor_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                              ##   ******************
                                                              ##         INCLUDES
                                                              ##   ******************
                                                              ##     
                                                              ##    GENERATED FILE, DO NOT EDIT IT!
                                                              ##    @file lv_conf_internal.h
                                                              ##    Make sure all the defines of lv_conf.h have a default value
                                                              ##   
                                                              ##     
                                                              ##    @file lv_types.h
                                                              ##   
                                                              ##    
                                                              ##    ******************
                                                              ##         DEFINES
                                                              ##   ******************
                                                              ##    *******************
                                                              ##         TYPEDEFS
                                                              ##   *******************
                                                              ##     
                                                              ##    Heap information structure.
                                                              ## ```
    total_size*: uint32      ## ```
                             ##   < Total heap size
                             ## ```
    free_cnt*: uint32        ## ```
                             ##   < Total heap size
                             ## ```
    free_size*: uint32       ## ```
                             ##   < Size of available memory
                             ## ```
    free_biggest_size*: uint32 ## ```
                               ##   < Size of available memory
                               ## ```
    used_cnt*: uint32
    max_used*: uint32        ## ```
                             ##   < Max size of Heap memory used
                             ## ```
    used_pct*: uint8         ## ```
                             ##   < Percentage used
                             ## ```
    frag_pct*: uint8         ## ```
                             ##   < Amount of fragmentation
                             ## ```
  
  lv_async_cb_t* {.importc, implvglHdr.} = proc (a1: pointer) {.cdecl.}
  lv_anim_t* {.bycopy, implvglHdr, importc: "struct _lv_anim_t".} = object
    `var`*: pointer          ## ```
                             ##   <Variable to animate
                             ## ```
    exec_cb*: lv_anim_exec_xcb_t ## ```
                                 ##   < Function to execute to animate
                                 ## ```
    start_cb*: lv_anim_start_cb_t ## ```
                                  ##   < Call it when the animation is starts (considering delay)
                                  ## ```
    ready_cb*: lv_anim_ready_cb_t ## ```
                                  ##   < Call it when the animation is ready
                                  ## ```
    deleted_cb*: lv_anim_deleted_cb_t ## ```
                                      ##   < Call it when the animation is deleted
                                      ## ```
    get_value_cb*: lv_anim_get_value_cb_t ## ```
                                          ##   < Get the current value in relative mode
                                          ## ```
    user_data*: pointer      ## ```
                             ##   < Custom user data
                             ## ```
    path_cb*: lv_anim_path_cb_t ## ```
                                ##   < Describe the path (curve) of animations
                                ## ```
    start_value*: int32      ## ```
                             ##   < Start value
                             ## ```
    current_value*: int32    ## ```
                             ##   < Current value
                             ## ```
    end_value*: int32        ## ```
                             ##   < End value
                             ## ```
    time*: int32             ## ```
                             ##   < Animation time in ms
                             ## ```
    act_time*: int32 ## ```
                     ##   < Current time in animation. Set to negative to make delay.
                     ## ```
    playback_delay*: uint32  ## ```
                             ##   < Wait before play back
                             ## ```
    playback_time*: uint32   ## ```
                             ##   < Duration of playback animation
                             ## ```
    repeat_delay*: uint32    ## ```
                             ##   < Wait before repeat
                             ## ```
    repeat_cnt*: uint16      ## ```
                             ##   < Repeat count for the animation
                             ## ```
    early_apply* {.bitsize: 1.}: uint8 ## ```
                                       ##   < 1: Apply start value immediately even is there is delay
                                       ##     Animation system use these - user shouldn't set
                                       ## ```
    last_timer_run*: uint32 ## ```
                            ##   < 1: Apply start value immediately even is there is delay
                            ##     Animation system use these - user shouldn't set
                            ## ```
    playback_now* {.bitsize: 1.}: uint8 ## ```
                                        ##   < Play back is in progress
                                        ## ```
    run_round* {.bitsize: 1.}: uint8 ## ```
                                     ##   < Indicates the animation has run in this round
                                     ## ```
    start_cb_called* {.bitsize: 1.}: uint8 ## ```
                                           ##   < Indicates that the start_cb was already called
                                           ## ```
  
  lv_anim_path_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_anim_t): int32 {.
      cdecl.}
  lv_anim_exec_xcb_t* {.importc, implvglHdr.} = proc (a1: pointer; a2: int32) {.
      cdecl.}
  lv_anim_custom_exec_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_anim_t;
      a2: int32) {.cdecl.}
  lv_anim_ready_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_anim_t) {.cdecl.}
  lv_anim_start_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_anim_t) {.cdecl.}
  lv_anim_get_value_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_anim_t): int32 {.
      cdecl.}
  lv_anim_deleted_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_anim_t) {.
      cdecl.}
  lv_anim_timeline_t* {.incompleteStruct, implvglHdr,
                        importc: "struct _lv_anim_timeline_t".} = object
  lv_vaformat_t* {.bycopy, importc, implvglHdr.} = object
    fmt*: cstring
    va*: ptr va_list

  lv_coord_t* {.importc, implvglHdr.} = int16
  lv_point_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                        ##   *******************
                                                        ##         TYPEDEFS
                                                        ##   *******************
                                                        ##     
                                                        ##    Represents a point on the screen.
                                                        ## ```
    x*: lv_coord_t
    y*: lv_coord_t

  lv_area_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                       ##   Represents an area of the screen.
                                                       ## ```
    x1*: lv_coord_t
    y1*: lv_coord_t
    x2*: lv_coord_t
    y2*: lv_coord_t

  lv_font_t* {.bycopy, implvglHdr, importc: "struct _lv_font_t".} = object
    get_glyph_dsc*: proc (a1: ptr lv_font_t; a2: ptr lv_font_glyph_dsc_t;
                          letter: uint32; letter_next: uint32): bool {.cdecl.}
    get_glyph_bitmap*: proc (a1: ptr lv_font_t; a2: uint32): ptr uint8 {.cdecl.} ## ```
                                                                                 ##   Get a glyph's bitmap from a font
                                                                                 ## ```
    line_height*: lv_coord_t ## ```
                             ##   < The real line height where any text fits
                             ## ```
    base_line*: lv_coord_t ## ```
                           ##   < Base line measured from the top of the line_height
                           ## ```
    subpx* {.bitsize: 2.}: uint8 ## ```
                                 ##   < An element of lv_font_subpx_t
                                 ## ```
    underline_position*: int8 ## ```
                              ##   < Distance between the top of the underline and base line (< 0 means below the base line)
                              ## ```
    underline_thickness*: int8 ## ```
                               ##   < Thickness of the underline
                               ## ```
    dsc*: pointer ## ```
                  ##   < Store implementation specific or run_time data or caching here
                  ## ```
    fallback*: ptr lv_font_t ## ```
                             ##   < Fallback font for missing glyph. Resolved recursively
                             ## ```
    user_data*: pointer      ## ```
                             ##   < Custom user data for font.
                             ## ```
  
  lv_font_glyph_dsc_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                 ##   Describes the properties of a glyph.
                                                                 ## ```
    resolved_font*: ptr lv_font_t ## ```
                                  ##   < Pointer to a font where the glyph was actually found after handling fallbacks
                                  ## ```
    adv_w*: uint16 ## ```
                   ##   < The glyph needs this space. Draw the next glyph after this width.
                   ## ```
    box_w*: uint16           ## ```
                             ##   < Width of the glyph's bounding box
                             ## ```
    box_h*: uint16           ## ```
                             ##   < Height of the glyph's bounding box
                             ## ```
    ofs_x*: int16            ## ```
                             ##   < x offset of the bounding box
                             ## ```
    ofs_y*: int16            ## ```
                             ##   < y offset of the bounding box
                             ## ```
    bpp* {.bitsize: 4.}: uint8 ## ```
                               ##   < Bit-per-pixel: 1, 2, 4, 8
                               ## ```
    is_placeholder* {.bitsize: 1.}: uint8 ## ```
                                          ##   Glyph is missing. But placeholder will still be displayed
                                          ## ```
  
  lv_color1_t* {.union, bycopy, importc, implvglHdr.} = object
    blue* {.bitsize: 1.}: uint8
    green* {.bitsize: 1.}: uint8
    red* {.bitsize: 1.}: uint8

  lv_color8_t* {.union, bycopy, importc, implvglHdr.} = object
    blue*: uint8
    green*: uint8
    red*: uint8
    level*: uint8

  lv_color16_t* {.bycopy, importc, implvglHdr.} = object
    blue* {.bitsize: 5.}: uint16
    green* {.bitsize: 6.}: uint16
    red* {.bitsize: 5.}: uint16

  lv_color24_t* {.bycopy, importc, implvglHdr.} = object
    blue*: uint8
    green*: uint8
    red*: uint8

  lv_color32_t* {.bycopy, importc, implvglHdr.} = object
    blue*: uint8
    green*: uint8
    red*: uint8
    alpha*: uint8

  lv_color_t* {.importc, implvglHdr.} = lv_color16_t
  lv_color_hsv_t* {.bycopy, importc, implvglHdr.} = object
    h*: uint16
    s*: uint8
    v*: uint8

  lv_color_filter_dsc_t* {.bycopy, implvglHdr,
                           importc: "struct _lv_color_filter_dsc_t".} = object
    filter_cb*: lv_color_filter_cb_t
    user_data*: pointer

  lv_color_filter_cb_t* {.importc, implvglHdr.} = proc (
      a1: ptr lv_color_filter_dsc_t; a2: lv_color_t; a3: lv_opa_t): lv_color_t {.
      cdecl.}
  lv_gradient_stop_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                ##   A gradient stop definition.
                                                                ##     This matches a color and a position in a virtual 0-255 scale.
                                                                ## ```
    color*: lv_color_t       ## ```
                             ##   < The stop color
                             ## ```
    frac*: uint8             ## ```
                             ##   < The stop position in 1/255 unit
                             ## ```
  
  lv_grad_dsc_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                           ##   A descriptor of a gradient.
                                                           ## ```
    stops*: array[2, lv_gradient_stop_t] ## ```
                                         ##   < A gradient stop array
                                         ## ```
    stops_count*: uint8      ## ```
                             ##   < The number of used stops in the array
                             ## ```
    dir* {.bitsize: 3.}: lv_grad_dir_t ## ```
                                       ##   < The gradient direction.
                                       ##                                                           Any of LV_GRAD_DIR_HOR, LV_GRAD_DIR_VER, LV_GRAD_DIR_NONE
                                       ## ```
    dither* {.bitsize: 3.}: lv_dither_mode_t ## ```
                                             ##   < Whether to dither the gradient or not.
                                             ##                                                           Any of LV_DITHER_NONE, LV_DITHER_ORDERED, LV_DITHER_ERR_DIFF
                                             ## ```
  
  lv_style_value_t* {.union, bycopy, importc, implvglHdr.} = object ## ```
                                                                     ##   A common type to handle all the property types in the same way.
                                                                     ## ```
    num*: int32 ## ```
                ##   < Number integer number (opacity, enums, booleans or "normal" numbers)
                ## ```
    `ptr`*: pointer          ## ```
                             ##   < Constant pointers  (font, cone text, etc)
                             ## ```
    color*: lv_color_t       ## ```
                             ##   < Colors
                             ## ```
  
  lv_style_transition_dsc_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                       ##   Descriptor for style transitions
                                                                       ## ```
    props*: ptr lv_style_prop_t ## ```
                                ##   < An array with the properties to animate.
                                ## ```
    user_data*: pointer ## ```
                        ##   < A custom user data that will be passed to the animation's user_data
                        ## ```
    path_xcb*: lv_anim_path_cb_t ## ```
                                 ##   < A path for the animation.
                                 ## ```
    time*: uint32            ## ```
                             ##   < Duration of the transition in [ms]
                             ## ```
    delay*: uint32           ## ```
                             ##   < Delay before the transition in [ms]
                             ## ```
  
  lv_style_const_prop_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                   ##   Descriptor of a constant style property.
                                                                   ## ```
    prop_ptr*: ptr lv_style_prop_t
    value*: lv_style_value_t

  Union_lvglh1* {.union, bycopy, implvglHdr, importc: "union Union_lvglh1".} = object ## ```
                                                                                       ##   If there is only one property store it directly.
                                                                                       ##       For more properties allocate an array
                                                                                       ## ```
    value1*: lv_style_value_t
    values_and_props*: ptr uint8
    const_props*: ptr lv_style_const_prop_t

  lv_style_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                        ##   Descriptor of a style (a collection of properties and values).
                                                        ## ```
    v_p*: Union_lvglh1       ## ```
                             ##   If there is only one property store it directly.
                             ##       For more properties allocate an array
                             ## ```
    prop1*: uint16
    has_group*: uint8
    prop_cnt*: uint8

  lv_obj_t* {.bycopy, implvglHdr, importc: "struct _lv_obj_t".} = object
    class_p*: ptr lv_obj_class_t
    parent*: ptr lv_obj_t
    spec_attr*: ptr lv_obj_spec_attr_t
    styles*: ptr lv_obj_style_t
    user_data*: pointer
    coords*: lv_area_t
    flags*: lv_obj_flag_t
    state*: lv_state_t
    layout_inv* {.bitsize: 1.}: uint16
    scr_layout_inv* {.bitsize: 1.}: uint16
    skip_trans* {.bitsize: 1.}: uint16
    style_cnt* {.bitsize: 6.}: uint16
    h_layout* {.bitsize: 1.}: uint16
    w_layout* {.bitsize: 1.}: uint16

  lv_event_dsc_t* {.incompleteStruct, implvglHdr,
                    importc: "struct _lv_event_dsc_t".} = object
  lv_event_list_t* {.bycopy, importc, implvglHdr.} = object
    dsc*: ptr lv_event_dsc_t
    cnt*: uint32

  lv_event_t* {.bycopy, implvglHdr, importc: "struct _lv_event_t".} = object
    current_target*: pointer
    original_target*: pointer
    code*: lv_event_code_t
    user_data*: pointer
    param*: pointer
    prev*: ptr lv_event_t
    deleted* {.bitsize: 1.}: uint8
    stop_processing* {.bitsize: 1.}: uint8
    stop_bubbling* {.bitsize: 1.}: uint8

  lv_event_cb_t* {.importc, implvglHdr.} = proc (e: ptr lv_event_t) {.cdecl.}
  lv_theme_t* {.bycopy, implvglHdr, importc: "struct _lv_theme_t".} = object
    apply_cb*: lv_theme_apply_cb_t
    parent*: ptr lv_theme_t ## ```
                            ##   < Apply the current theme's style on top of this theme.
                            ## ```
    user_data*: pointer ## ```
                        ##   < Apply the current theme's style on top of this theme.
                        ## ```
    disp*: ptr lv_disp_t
    color_primary*: lv_color_t
    color_secondary*: lv_color_t
    font_small*: ptr lv_font_t
    font_normal*: ptr lv_font_t
    font_large*: ptr lv_font_t
    flags*: uint32           ## ```
                             ##   Any custom flag used by the theme
                             ## ```
  
  lv_draw_ctx_t* {.bycopy, implvglHdr, importc: "struct _lv_draw_ctx_t".} = object
    buf*: pointer            ## ```
                             ##   Pointer to a buffer to draw into
                             ## ```
    buf_area*: ptr lv_area_t ## ```
                             ##   The position and size of buf (absolute coordinates)
                             ## ```
    clip_area*: ptr lv_area_t ## ```
                              ##   The current clip area with absolute coordinates, always the same or smaller than buf_area
                              ## ```
    clip_area_original*: lv_area_t ## ```
                                   ##   The original area which is updated
                                   ## ```
    color_format*: lv_color_format_t ## ```
                                     ##   The rendered image in draw_ctx->buf will be converted to this format
                                     ##        using draw_ctx->buffer_convert.
                                     ## ```
    init_buf*: proc (draw_ctx: ptr lv_draw_ctx_t) {.cdecl.}
    draw_rect*: proc (draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_rect_dsc_t;
                      coords: ptr lv_area_t) {.cdecl.}
    draw_arc*: proc (draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_arc_dsc_t;
                     center: ptr lv_point_t; radius: uint16;
                     start_angle: uint16; end_angle: uint16) {.cdecl.}
    draw_img_decoded*: proc (draw_ctx: ptr lv_draw_ctx_t;
                             dsc: ptr lv_draw_img_dsc_t; coords: ptr lv_area_t;
                             map_p: ptr uint8; sup: ptr lv_draw_img_sup_t;
                             color_format: lv_color_format_t) {.cdecl.}
    draw_img*: proc (draw_ctx: ptr lv_draw_ctx_t;
                     draw_dsc: ptr lv_draw_img_dsc_t; coords: ptr lv_area_t;
                     src: pointer): lv_res_t {.cdecl.}
    draw_letter*: proc (draw_ctx: ptr lv_draw_ctx_t;
                        dsc: ptr lv_draw_label_dsc_t; pos_p: ptr lv_point_t;
                        letter: uint32) {.cdecl.}
    draw_line*: proc (draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_line_dsc_t;
                      point1: ptr lv_point_t; point2: ptr lv_point_t) {.cdecl.}
    draw_polygon*: proc (draw_ctx: ptr lv_draw_ctx_t;
                         draw_dsc: ptr lv_draw_rect_dsc_t;
                         points: UncheckedArray[lv_point_t]; point_cnt: uint16) {.
        cdecl.}
    draw_transform*: proc (draw_ctx: ptr lv_draw_ctx_t;
                           dest_area: ptr lv_area_t; src_buf: pointer;
                           src_w: lv_coord_t; src_h: lv_coord_t;
                           src_stride: lv_coord_t;
                           draw_dsc: ptr lv_draw_img_dsc_t;
                           sup: ptr lv_draw_img_sup_t; cf: lv_color_format_t;
                           cbuf: ptr lv_color_t; abuf: ptr lv_opa_t) {.cdecl.} ## ```
                                                                               ##   Get an area of a transformed image (zoomed and/or rotated)
                                                                               ##        @param draw_ctx      pointer to a draw context
                                                                               ##        @param dest_area     get this area of the result image. It assumes that the original image is placed to the 0;0 position.
                                                                               ##        @param src_buf       the source image
                                                                               ##        @param src_w         width of the source image in [px]
                                                                               ##        @param src_h         height of the source image in [px]
                                                                               ##        @param src_stride    the stride in [px].
                                                                               ##        @param draw_dsc      an lv_draw_img_dsc_t descriptor containing the transformation parameters
                                                                               ##        @param cf            the color format of src_buf
                                                                               ##        @param cbuf          place the colors of the pixels on dest_area here in RGB format
                                                                               ##        @param abuf          place the opacity of the pixels on dest_area here
                                                                               ## ```
    wait_for_finish*: proc (draw_ctx: ptr lv_draw_ctx_t) {.cdecl.} ## ```
                                                                   ##   Wait until all background operations are finished. (E.g. GPU operations)
                                                                   ## ```
    buffer_copy*: proc (draw_ctx: ptr lv_draw_ctx_t; dest_buf: pointer;
                        dest_stride: lv_coord_t; dest_area: ptr lv_area_t;
                        src_buf: pointer; src_stride: lv_coord_t;
                        src_area: ptr lv_area_t) {.cdecl.} ## ```
                                                           ##   Copy an area from buffer to an other
                                                           ##        @param draw_ctx      pointer to a draw context
                                                           ##        @param dest_buf      copy the buffer into this buffer
                                                           ##        @param dest_stride   the width of the dest_buf in pixels
                                                           ##        @param dest_area     the destination area
                                                           ##        @param src_buf       copy from this buffer
                                                           ##        @param src_stride    the width of src_buf in pixels
                                                           ##        @param src_area      the source area.
                                                           ##       
                                                           ##        @note dest_area and src_area must have the same width and height
                                                           ##              but can have different x and y position.
                                                           ##        @note dest_area and src_area must be clipped to the real dimensions of the buffers
                                                           ## ```
    buffer_convert*: proc (draw_ctx: ptr lv_draw_ctx_t) {.cdecl.} ## ```
                                                                  ##   Convert the content of draw_ctx->buf to draw_ctx->color_format
                                                                  ##        @param draw_ctx
                                                                  ## ```
    buffer_clear*: proc (draw_ctx: ptr lv_draw_ctx_t) {.cdecl.}
    layer_init*: proc (draw_ctx: ptr lv_draw_ctx_t;
                       layer_ctx: ptr lv_draw_layer_ctx_t;
                       flags: lv_draw_layer_flags_t): ptr lv_draw_layer_ctx_t {.
        cdecl.} ## ```
                ##   Initialize a new layer context.
                ##        The original buffer and area data are already saved from draw_ctx to layer_ctx
                ##        @param draw_ctx      pointer to the current draw context
                ##        @param layer_area    the coordinates of the layer
                ##        @param flags         OR-ed flags from @lv_draw_layer_flags_t
                ##        @return              pointer to the layer context, or NULL on error
                ## ```
    layer_adjust*: proc (draw_ctx: ptr lv_draw_ctx_t;
                         layer_ctx: ptr lv_draw_layer_ctx_t;
                         flags: lv_draw_layer_flags_t) {.cdecl.} ## ```
                                                                 ##   Adjust the layer_ctx and/or draw_ctx based on the layer_ctx->area_act.
                                                                 ##        It's called only if flags has LV_DRAW_LAYER_FLAG_CAN_SUBDIVIDE
                                                                 ##        @param draw_ctx      pointer to the current draw context
                                                                 ##        @param layer_ctx     pointer to a layer context
                                                                 ##        @param flags         OR-ed flags from @lv_draw_layer_flags_t
                                                                 ## ```
    layer_blend*: proc (draw_ctx: ptr lv_draw_ctx_t;
                        layer_ctx: ptr lv_draw_layer_ctx_t;
                        draw_dsc: ptr lv_draw_img_dsc_t) {.cdecl.} ## ```
                                                                   ##   Blend a rendered layer to layer_ctx->area_act
                                                                   ##        @param draw_ctx      pointer to the current draw context
                                                                   ##        @param layer_ctx     pointer to a layer context
                                                                   ##        @param draw_dsc      pointer to an image draw descriptor
                                                                   ## ```
    layer_destroy*: proc (draw_ctx: ptr lv_draw_ctx_t;
                          layer_ctx: ptr lv_draw_layer_ctx_t) {.cdecl.} ## ```
                                                                        ##   Destroy a layer context. The original buffer and area data of the draw_ctx will be restored
                                                                        ##        and the layer_ctx itself will be freed automatically.
                                                                        ##        @param draw_ctx      pointer to the current draw context
                                                                        ##        @param layer_ctx     pointer to a layer context
                                                                        ## ```
    layer_instance_size*: uint ## ```
                               ##   Size of a layer context in bytes.
                               ## ```
    user_data*: pointer

  lv_disp_t* {.bycopy, implvglHdr, importc: "struct _lv_disp_t".} = object
    hor_res*: lv_coord_t     ## ```
                             ##   ---------------------
                             ##        Resolution
                             ##       --------------------
                             ##      Horizontal resolution.
                             ## ```
    ver_res*: lv_coord_t     ## ```
                             ##   Vertical resolution.
                             ## ```
    physical_hor_res*: lv_coord_t ## ```
                                  ##   Horizontal resolution of the full / physical display. Set to -1 for fullscreen mode.
                                  ## ```
    physical_ver_res*: lv_coord_t ## ```
                                  ##   Vertical resolution of the full / physical display. Set to -1 for fullscreen mode.
                                  ## ```
    offset_x*: lv_coord_t ## ```
                          ##   Horizontal offset from the full / physical display. Set to 0 for fullscreen mode.
                          ## ```
    offset_y*: lv_coord_t ## ```
                          ##   Vertical offset from the full / physical display. Set to 0 for fullscreen mode.
                          ## ```
    dpi*: uint32 ## ```
                 ##   DPI (dot per inch) of the display. Default value is LV_DPI_DEF.
                 ##     ---------------------
                 ##        Buffering
                 ##       --------------------
                 ##      First display buffer.
                 ## ```
    draw_buf_1*: pointer ## ```
                         ##   DPI (dot per inch) of the display. Default value is LV_DPI_DEF.
                         ##     ---------------------
                         ##        Buffering
                         ##       --------------------
                         ##      First display buffer.
                         ## ```
    draw_buf_2*: pointer     ## ```
                             ##   Second display buffer.
                             ## ```
    draw_buf_act*: pointer   ## ```
                             ##   Internal, used by the library
                             ## ```
    draw_buf_size*: uint32   ## ```
                             ##   In byte count
                             ## ```
    flush_cb*: lv_disp_flush_cb_t ## ```
                                  ##   MANDATORY: Write the internal buffer (draw_buf) to the display. 'lv_disp_flush_ready()' has to be
                                  ##        called when finished
                                  ## ```
    flushing*: cint ## ```
                    ##   1: flushing is in progress. (It can't be a bit field because when it's cleared from IRQ Read-Modify-Write issue might occur)
                    ## ```
    flushing_last*: cint ## ```
                         ##   1: It was the last chunk to flush. (It can't be a bit field because when it's cleared from IRQ Read-Modify-Write issue might occur)
                         ## ```
    last_area* {.bitsize: 1.}: uint32 ## ```
                                      ##   1: the last area is being rendered
                                      ## ```
    last_part* {.bitsize: 1.}: uint32 ## ```
                                      ##   1: the last part of the current area is being rendered
                                      ## ```
    render_mode*: lv_disp_render_mode_t
    antialiasing* {.bitsize: 1.}: uint32 ## ```
                                         ##   < 1: anti-aliasing is enabled on this display.
                                         ##      1: The current screen rendering is in progress
                                         ## ```
    rendering_in_progress* {.bitsize: 1.}: uint32 ## ```
                                                  ##   < 1: anti-aliasing is enabled on this display.
                                                  ##      1: The current screen rendering is in progress
                                                  ## ```
    color_format*: lv_color_format_t
    inv_areas*: lv_area_t    ## ```
                             ##   Invalidated (marked to redraw) areas
                             ## ```
    inv_area_joined*: uint8
    inv_p*: uint16
    inv_en_cnt*: int32
    draw_ctx*: ptr lv_draw_ctx_t
    draw_ctx_init*: proc (disp: ptr lv_disp_t; draw_ctx: ptr lv_draw_ctx_t) {.
        cdecl.}
    draw_ctx_deinit*: proc (disp: ptr lv_disp_t; draw_ctx: ptr lv_draw_ctx_t) {.
        cdecl.}
    draw_ctx_size*: uint
    screens*: ptr ptr lv_obj_t ## ```
                               ##   < Array of screen objects.
                               ## ```
    act_scr*: ptr lv_obj_t   ## ```
                             ##   < Currently active screen on this display
                             ## ```
    prev_scr*: ptr lv_obj_t  ## ```
                             ##   < Previous screen. Used during screen animations
                             ## ```
    scr_to_load*: ptr lv_obj_t ## ```
                               ##   < The screen prepared to load in lv_scr_load_anim
                               ## ```
    bottom_layer*: ptr lv_obj_t ## ```
                                ##   < @see lv_disp_get_layer_bottom
                                ## ```
    top_layer*: ptr lv_obj_t ## ```
                             ##   < @see lv_disp_get_layer_top
                             ## ```
    sys_layer*: ptr lv_obj_t ## ```
                             ##   < @see lv_disp_get_layer_sys
                             ## ```
    screen_cnt*: uint32      ## ```
                             ##   < @see lv_disp_get_layer_sys
                             ## ```
    draw_prev_over_act* {.bitsize: 1.}: uint8 ## ```
                                              ##   1: Draw previous screen over active screen
                                              ## ```
    del_prev* {.bitsize: 1.}: uint8 ## ```
                                    ##   1: Automatically delete the previous screen when the screen load animation is ready
                                    ##     ---------------------
                                    ##        Others
                                    ##       --------------------
                                    ## ```
    driver_data*: pointer    ## ```
                             ##   < Custom user data
                             ## ```
    user_data*: pointer      ## ```
                             ##   < Custom user data
                             ## ```
    event_list*: lv_event_list_t
    sw_rotate* {.bitsize: 1.}: uint32 ## ```
                                      ##   < 1: use software rotation (slower)
                                      ## ```
    rotation* {.bitsize: 2.}: uint32 ## ```
                                     ##   < Element of  @lv_disp_rotation_t
                                     ##     < The theme assigned to the screen
                                     ## ```
    theme*: ptr lv_theme_t   ## ```
                             ##   < Element of  @lv_disp_rotation_t
                             ##     < The theme assigned to the screen
                             ## ```
    refr_timer*: ptr lv_timer_t ## ```
                                ##   A timer which periodically checks the dirty areas and refreshes them
                                ## ```
    last_activity_time*: uint32 ## ```
                                ##   < Last time when there was activity on this display
                                ##      OPTIONAL: Called periodically while lvgl waits for operation to be completed.
                                ##        For example flushing or GPU
                                ##        User can execute very simple tasks here or yield the task
                                ## ```
    wait_cb*: proc (disp_drv: ptr lv_disp_t) {.cdecl.} ## ```
                                                       ##   < Last time when there was activity on this display
                                                       ##      OPTIONAL: Called periodically while lvgl waits for operation to be completed.
                                                       ##        For example flushing or GPU
                                                       ##        User can execute very simple tasks here or yield the task
                                                       ## ```
    color_chroma_key*: lv_color_t ## ```
                                  ##   On CHROMA_KEYED images this color will be transparent.
                                  ##        LV_COLOR_CHROMA_KEY by default. (lv_conf.h)
                                  ## ```
  
  lv_disp_flush_cb_t* {.importc, implvglHdr.} = proc (disp: ptr lv_disp_t;
      area: ptr lv_area_t; px_map: ptr lv_color_t) {.cdecl.}
  lv_obj_class_t* {.bycopy, implvglHdr, importc: "struct _lv_obj_class_t".} = object
    base_class*: ptr lv_obj_class_t
    constructor_cb*: proc (class_p: ptr lv_obj_class_t; obj: ptr lv_obj_t) {.
        cdecl.}
    destructor_cb*: proc (class_p: ptr lv_obj_class_t; obj: ptr lv_obj_t) {.
        cdecl.}
    event_cb*: proc (class_p: ptr lv_obj_class_t; e: ptr lv_event_t) {.cdecl.} ## ```
                                                                               ##   < Widget type specific event function
                                                                               ## ```
    user_data*: pointer      ## ```
                             ##   < Widget type specific event function
                             ## ```
    width_def*: lv_coord_t
    height_def*: lv_coord_t
    editable* {.bitsize: 2.}: uint32 ## ```
                                     ##   < Value from ::lv_obj_class_editable_t
                                     ## ```
    group_def* {.bitsize: 2.}: uint32 ## ```
                                      ##   < Value from ::lv_obj_class_group_def_t
                                      ## ```
    instance_size* {.bitsize: 16.}: uint32 ## ```
                                           ##   < Value from ::lv_obj_class_group_def_t
                                           ## ```
    theme_inheritable* {.bitsize: 1.}: uint32 ## ```
                                              ##   < Value from ::lv_obj_class_theme_inheritable_t
                                              ## ```
  
  lv_obj_tree_walk_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_obj_t;
      a2: pointer): lv_obj_tree_walk_res_t {.cdecl.}
  lv_layout_update_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_obj_t;
      user_data: pointer) {.cdecl.}
  lv_layout_dsc_t* {.bycopy, importc, implvglHdr.} = object
    cb*: lv_layout_update_cb_t
    user_data*: pointer

  lv_style_selector_t* {.importc, implvglHdr.} = uint32
  lv_obj_style_t* {.bycopy, implvglHdr, importc: "_lv_obj_style_t".} = object
    style*: ptr lv_style_t
    selector* {.bitsize: 24.}: uint32
    is_local* {.bitsize: 1.}: uint32
    is_trans* {.bitsize: 1.}: uint32

  lv_obj_style_transition_dsc_t* {.bycopy, implvglHdr,
                                   importc: "_lv_obj_style_transition_dsc_t".} = object
    time*: uint16
    delay*: uint16
    selector*: lv_style_selector_t
    prop*: lv_style_prop_t
    path_cb*: lv_anim_path_cb_t
    user_data*: pointer

  lv_img_header_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                             ##   *******************
                                                             ##         TYPEDEFS
                                                             ##   *******************
                                                             ##     
                                                             ##    The first 8 bit is very important to distinguish the different source types.
                                                             ##    For more info see lv_img_get_src_type() in lv_img.c
                                                             ##    On big endian systems the order is reversed so cf and always_zero must be at
                                                             ##    the end of the struct.
                                                             ## ```
    cf* {.bitsize: 5.}: uint32 ## ```
                               ##   Color format: See lv_color_format_t
                               ## ```
    always_zero* {.bitsize: 3.}: uint32 ## ```
                                        ##   It the upper bits of the first byte. Always zero to look like a
                                        ##                                    non-printable character
                                        ## ```
    reserved* {.bitsize: 1.}: uint32 ## ```
                                     ##   Reserved to be used later
                                     ## ```
    chroma_keyed* {.bitsize: 2.}: uint32 ## ```
                                         ##   Reserved to be used later
                                         ## ```
    w* {.bitsize: 11.}: uint32 ## ```
                               ##   Width of the image map
                               ## ```
    h* {.bitsize: 11.}: uint32 ## ```
                               ##   Height of the image map
                               ## ```
  
  lv_img_dsc_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                          ##   Image header it is compatible with
                                                          ##    the result from image converter utility
                                                          ## ```
    header*: lv_img_header_t ## ```
                             ##   < A header describing the basics of the image
                             ## ```
    data_size*: uint32       ## ```
                             ##   < Size of the image in bytes
                             ## ```
    data*: ptr uint8         ## ```
                             ##   < Pointer to the data of the image
                             ## ```
  
  lv_fs_drv_t* {.bycopy, implvglHdr, importc: "struct _lv_fs_drv_t".} = object
    letter*: cchar
    cache_size*: uint16
    ready_cb*: proc (drv: ptr lv_fs_drv_t): bool {.cdecl.}
    open_cb*: proc (drv: ptr lv_fs_drv_t; path: cstring; mode: lv_fs_mode_t): pointer {.
        cdecl.}
    close_cb*: proc (drv: ptr lv_fs_drv_t; file_p: pointer): lv_fs_res_t {.cdecl.}
    read_cb*: proc (drv: ptr lv_fs_drv_t; file_p: pointer; buf: pointer;
                    btr: uint32; br: ptr uint32): lv_fs_res_t {.cdecl.}
    write_cb*: proc (drv: ptr lv_fs_drv_t; file_p: pointer; buf: pointer;
                     btw: uint32; bw: ptr uint32): lv_fs_res_t {.cdecl.}
    seek_cb*: proc (drv: ptr lv_fs_drv_t; file_p: pointer; pos: uint32;
                    whence: lv_fs_whence_t): lv_fs_res_t {.cdecl.}
    tell_cb*: proc (drv: ptr lv_fs_drv_t; file_p: pointer; pos_p: ptr uint32): lv_fs_res_t {.
        cdecl.}
    dir_open_cb*: proc (drv: ptr lv_fs_drv_t; path: cstring): pointer {.cdecl.}
    dir_read_cb*: proc (drv: ptr lv_fs_drv_t; rddir_p: pointer; fn: cstring): lv_fs_res_t {.
        cdecl.}
    dir_close_cb*: proc (drv: ptr lv_fs_drv_t; rddir_p: pointer): lv_fs_res_t {.
        cdecl.}
    user_data*: pointer      ## ```
                             ##   < Custom file user data
                             ## ```
  
  lv_fs_file_cache_t* {.bycopy, importc, implvglHdr.} = object
    start*: uint32
    `end`*: uint32
    file_position*: uint32
    buffer*: pointer

  lv_fs_file_t* {.bycopy, importc, implvglHdr.} = object
    file_d*: pointer
    drv*: ptr lv_fs_drv_t
    cache*: ptr lv_fs_file_cache_t

  lv_fs_dir_t* {.bycopy, importc, implvglHdr.} = object
    dir_d*: pointer
    drv*: ptr lv_fs_drv_t

  lv_img_decoder_dsc_t* {.bycopy, implvglHdr,
                          importc: "struct _lv_img_decoder_dsc_t".} = object
    decoder*: ptr lv_img_decoder_t ## ```
                                   ##   The decoder which was able to open the image source
                                   ## ```
    src*: pointer ## ```
                  ##   The image source. A file path like "S:my_img.png" or pointer to an lv_img_dsc_t variable
                  ## ```
    color*: lv_color_t ## ```
                       ##   Color to draw the image. Used when the image has alpha channel only
                       ## ```
    frame_id*: int32         ## ```
                             ##   Frame of the image, using with animated images
                             ## ```
    src_type*: lv_img_src_t ## ```
                            ##   Type of the source: file or variable. Can be set in open function if required
                            ## ```
    header*: lv_img_header_t ## ```
                             ##   Info about the opened image: color format, size, etc. MUST be set in open function
                             ## ```
    img_data*: ptr uint8 ## ```
                         ##   Pointer to a buffer where the image's data (pixels) are stored in a decoded, plain format.
                         ##         MUST be set in open function
                         ## ```
    palette*: ptr lv_color32_t
    palette_size*: uint32
    time_to_open*: uint32 ## ```
                          ##   How much time did it take to open the image. [ms]
                          ##         If not set lv_img_cache will measure and set the time to open
                          ## ```
    error_msg*: cstring ## ```
                        ##   A text to display instead of the image when the image can't be opened.
                        ##        Can be set in open function or set NULL.
                        ## ```
    user_data*: pointer      ## ```
                             ##   Store any custom data here is required
                             ## ```
  
  lv_img_decoder_t* {.bycopy, implvglHdr, importc: "struct _lv_img_decoder_t".} = object
    info_cb*: lv_img_decoder_info_f_t
    open_cb*: lv_img_decoder_open_f_t
    read_line_cb*: lv_img_decoder_read_line_f_t
    close_cb*: lv_img_decoder_close_f_t
    user_data*: pointer

  lv_img_decoder_info_f_t* {.importc, implvglHdr.} = proc (
      decoder: ptr lv_img_decoder_t; src: pointer; header: ptr lv_img_header_t): lv_res_t {.
      cdecl.}
  lv_img_decoder_open_f_t* {.importc, implvglHdr.} = proc (
      decoder: ptr lv_img_decoder_t; dsc: ptr lv_img_decoder_dsc_t): lv_res_t {.
      cdecl.}
  lv_img_decoder_read_line_f_t* {.importc, implvglHdr.} = proc (
      decoder: ptr lv_img_decoder_t; dsc: ptr lv_img_decoder_dsc_t;
      x: lv_coord_t; y: lv_coord_t; len: lv_coord_t; buf: ptr uint8): lv_res_t {.
      cdecl.}
  lv_img_decoder_close_f_t* {.importc, implvglHdr.} = proc (
      decoder: ptr lv_img_decoder_t; dsc: ptr lv_img_decoder_dsc_t) {.cdecl.}
  lv_img_cache_entry_t* {.bycopy, implvglHdr, importc: "_lv_img_cache_entry_t".} = object ## ```
                                                                                           ##   ******************
                                                                                           ##         INCLUDES
                                                                                           ##   ******************
                                                                                           ##     
                                                                                           ##    @file lv_img_decoder.h
                                                                                           ##   
                                                                                           ##    
                                                                                           ##    ******************
                                                                                           ##         DEFINES
                                                                                           ##   ******************
                                                                                           ##    *******************
                                                                                           ##         TYPEDEFS
                                                                                           ##   *******************
                                                                                           ##     
                                                                                           ##    When loading images from the network it can take a long time to download and decode the image.
                                                                                           ##   
                                                                                           ##    To avoid repeating this heavy load images can be cached.
                                                                                           ## ```
    dec_dsc*: lv_img_decoder_dsc_t ## ```
                                   ##   < Image information
                                   ## ```
    user_data*: pointer      ## ```
                             ##   < Image cache entry user data
                             ## ```
  
  lv_img_cache_manager_t* {.bycopy, importc, implvglHdr.} = object
    open_cb*: proc (src: pointer; color: lv_color_t; frame_id: int32): ptr lv_img_cache_entry_t {.
        cdecl.}
    set_size_cb*: proc (new_entry_cnt: uint16) {.cdecl.}
    invalidate_src_cb*: proc (src: pointer) {.cdecl.}

  lv_grad_color_t* {.importc, implvglHdr.} = lv_color_t
  lv_gradient_cache_t* {.bycopy, implvglHdr,
                         importc: "struct _lv_gradient_cache_t".} = object ## ```
                                                                            ##   To avoid recomputing gradient for each draw operation,
                                                                            ##     it's possible to cache the computation in this structure instance.
                                                                            ##     Whenever possible, this structure is reused instead of recomputing the gradient map
                                                                            ## ```
    key*: uint32 ## ```
                 ##   < A discriminating key that's built from the drawing operation.
                 ##                                      If the key does not match, the cache item is not used
                 ## ```
    life* {.bitsize: 30.}: uint32 ## ```
                                  ##   < A life counter that's incremented on usage. Higher counter is
                                  ##                                      less likely to be evicted from the cache
                                  ## ```
    filled* {.bitsize: 1.}: uint32 ## ```
                                   ##   < Used to skip dithering in it if already done
                                   ## ```
    not_cached* {.bitsize: 1.}: uint32 ## ```
                                       ##   < The cache was too small so this item is not managed by the cache
                                       ## ```
    map*: ptr lv_color_t ## ```
                         ##   < The computed gradient low bitdepth color map, points into the
                         ##                                      cache's buffer, no free needed
                         ## ```
    alloc_size*: lv_coord_t  ## ```
                             ##   < The map allocated size in colors
                             ## ```
    size*: lv_coord_t ## ```
                      ##   < The computed gradient color map size, in colors
                      ## ```
  
  lv_grad_t* {.importc, implvglHdr.} = lv_gradient_cache_t ## ```
                                                           ##   To avoid recomputing gradient for each draw operation,
                                                           ##     it's possible to cache the computation in this structure instance.
                                                           ##     Whenever possible, this structure is reused instead of recomputing the gradient map
                                                           ## ```
  lv_draw_rect_dsc_t* {.bycopy, importc, implvglHdr.} = object
    radius*: lv_coord_t
    blend_mode*: lv_blend_mode_t
    bg_opa*: lv_opa_t        ## ```
                             ##   Background
                             ## ```
    bg_color*: lv_color_t ## ```
                          ##   < First element of a gradient is a color, so it maps well here
                          ## ```
    bg_grad*: lv_grad_dsc_t ## ```
                            ##   < First element of a gradient is a color, so it maps well here
                            ## ```
    bg_img_src*: pointer     ## ```
                             ##   Background img
                             ## ```
    bg_img_symbol_font*: pointer
    bg_img_recolor*: lv_color_t
    bg_img_opa*: lv_opa_t
    bg_img_recolor_opa*: lv_opa_t
    bg_img_tiled*: uint8
    border_color*: lv_color_t ## ```
                              ##   Border
                              ## ```
    border_width*: lv_coord_t
    border_opa*: lv_opa_t
    border_post* {.bitsize: 1.}: uint8 ## ```
                                       ##   There is a border it will be drawn later.
                                       ## ```
    border_side* {.bitsize: 5.}: lv_border_side_t ## ```
                                                  ##   There is a border it will be drawn later.
                                                  ## ```
    outline_color*: lv_color_t ## ```
                               ##   Outline
                               ## ```
    outline_width*: lv_coord_t
    outline_pad*: lv_coord_t
    outline_opa*: lv_opa_t
    shadow_color*: lv_color_t ## ```
                              ##   Shadow
                              ## ```
    shadow_width*: lv_coord_t
    shadow_ofs_x*: lv_coord_t
    shadow_ofs_y*: lv_coord_t
    shadow_spread*: lv_coord_t
    shadow_opa*: lv_opa_t

  lv_draw_label_dsc_t* {.bycopy, importc, implvglHdr.} = object
    font*: ptr lv_font_t
    sel_start*: uint32
    sel_end*: uint32
    color*: lv_color_t
    sel_color*: lv_color_t
    sel_bg_color*: lv_color_t
    line_space*: lv_coord_t
    letter_space*: lv_coord_t
    ofs_x*: lv_coord_t
    ofs_y*: lv_coord_t
    opa*: lv_opa_t
    bidi_dir*: lv_base_dir_t
    align*: lv_text_align_t
    flag*: lv_text_flag_t
    decor* {.bitsize: 3.}: lv_text_decor_t
    blend_mode* {.bitsize: 3.}: lv_blend_mode_t

  lv_draw_label_hint_t* {.bycopy, implvglHdr,
                          importc: "struct _lv_draw_label_hint_t".} = object ## ```
                                                                              ##   Store some info to speed up drawing of very large texts
                                                                              ##    It takes a lot of time to get the first visible character because
                                                                              ##    all the previous characters needs to be checked to calculate the positions.
                                                                              ##    This structure stores an earlier (e.g. at -1000 px) coordinate and the index of that line.
                                                                              ##    Therefore the calculations can start from here.
                                                                              ## ```
    line_start*: int32       ## ```
                             ##   Index of the line at y coordinate
                             ## ```
    y*: int32 ## ```
              ##   Give the y coordinate of the first letter at line start index. Relative to the label's coordinates
              ## ```
    coord_y*: int32 ## ```
                    ##   The 'y1' coordinate of the label when the hint was saved.
                    ##        Used to invalidate the hint if the label has moved too much.
                    ## ```
  
  lv_draw_img_sup_t* {.bycopy, importc, implvglHdr.} = object
    chroma_key_color*: lv_color_t
    alpha_color*: lv_color_t
    palette*: ptr lv_color32_t
    palette_size* {.bitsize: 9.}: uint32
    chroma_keyed* {.bitsize: 1.}: uint32

  lv_draw_img_dsc_t* {.bycopy, importc, implvglHdr.} = object
    angle*: lv_coord_t
    zoom*: lv_coord_t
    pivot*: lv_point_t
    chroma_key_color*: lv_color_t
    recolor*: lv_color_t
    recolor_opa*: lv_opa_t
    opa*: lv_opa_t
    blend_mode* {.bitsize: 4.}: lv_blend_mode_t
    frame_id*: int32
    antialias* {.bitsize: 1.}: uint16
    sup*: ptr lv_draw_img_sup_t

  lv_draw_line_dsc_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                ##   ******************
                                                                ##         INCLUDES
                                                                ##   ******************
                                                                ##     
                                                                ##    GENERATED FILE, DO NOT EDIT IT!
                                                                ##    @file lv_conf_internal.h
                                                                ##    Make sure all the defines of lv_conf.h have a default value
                                                                ##   
                                                                ##     
                                                                ##    @file lv_color.h
                                                                ##   
                                                                ##    
                                                                ##     
                                                                ##    @file lv_area.h
                                                                ##   
                                                                ##    
                                                                ##     
                                                                ##    @file lv_style.h
                                                                ##   
                                                                ##    
                                                                ##    ******************
                                                                ##         DEFINES
                                                                ##   ******************
                                                                ##    *******************
                                                                ##         TYPEDEFS
                                                                ##   *******************
                                                                ## ```
    color*: lv_color_t
    width*: lv_coord_t
    dash_width*: lv_coord_t
    dash_gap*: lv_coord_t
    opa*: lv_opa_t
    blend_mode* {.bitsize: 2.}: lv_blend_mode_t
    round_start* {.bitsize: 1.}: uint8
    round_end* {.bitsize: 1.}: uint8
    raw_end* {.bitsize: 1.}: uint8 ## ```
                                   ##   Do not bother with perpendicular line ending if it's not visible for any reason
                                   ## ```
  
  lv_draw_arc_dsc_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                               ##   ******************
                                                               ##         INCLUDES
                                                               ##   ******************
                                                               ##     
                                                               ##    GENERATED FILE, DO NOT EDIT IT!
                                                               ##    @file lv_conf_internal.h
                                                               ##    Make sure all the defines of lv_conf.h have a default value
                                                               ##   
                                                               ##     
                                                               ##    @file lv_color.h
                                                               ##   
                                                               ##    
                                                               ##     
                                                               ##    @file lv_area.h
                                                               ##   
                                                               ##    
                                                               ##     
                                                               ##    @file lv_style.h
                                                               ##   
                                                               ##    
                                                               ##    ******************
                                                               ##         DEFINES
                                                               ##   ******************
                                                               ##    *******************
                                                               ##         TYPEDEFS
                                                               ##   *******************
                                                               ## ```
    color*: lv_color_t
    width*: lv_coord_t
    start_angle*: uint16
    end_angle*: uint16
    img_src*: pointer
    opa*: lv_opa_t
    blend_mode* {.bitsize: 2.}: lv_blend_mode_t
    rounded* {.bitsize: 1.}: uint8

  lv_draw_mask_saved_t* {.bycopy, implvglHdr, importc: "_lv_draw_mask_saved_t".} = object
    param*: pointer
    custom_id*: pointer

  lv_draw_mask_saved_arr_t* {.implvglHdr, importc: "_lv_draw_mask_saved_arr_t".} = array[
      16, lv_draw_mask_saved_t]
  lv_draw_mask_xcb_t* {.importc, implvglHdr.} = proc (mask_buf: ptr lv_opa_t;
      abs_x: lv_coord_t; abs_y: lv_coord_t; len: lv_coord_t; p: pointer): lv_draw_mask_res_t {.
      cdecl.}
  lv_draw_mask_common_dsc_t* {.bycopy, implvglHdr,
                               importc: "_lv_draw_mask_common_dsc_t".} = object
    cb*: lv_draw_mask_xcb_t
    `type`*: lv_draw_mask_type_t

  Type_lvglh1* {.bycopy, implvglHdr, importc: "struct Type_lvglh1".} = object
    p1*: lv_point_t          ## ```
                             ##   First point
                             ## ```
    p2*: lv_point_t          ## ```
                             ##   Second point
                             ## ```
    side* {.bitsize: 2.}: lv_draw_mask_line_side_t ## ```
                                                   ##   Which side to keep?
                                                   ## ```
  
  lv_draw_mask_line_param_t* {.bycopy, importc, implvglHdr.} = object
    dsc*: lv_draw_mask_common_dsc_t ## ```
                                    ##   The first element must be the common descriptor
                                    ## ```
    cfg*: Type_lvglh1
    origo*: lv_point_t       ## ```
                             ##   A point of the line
                             ## ```
    xy_steep*: int32 ## ```
                     ##   X / (1024*Y) steepness (X is 0..1023 range). What is the change of X in 1024 Y?
                     ## ```
    yx_steep*: int32 ## ```
                     ##   Y / (1024*X) steepness (Y is 0..1023 range). What is the change of Y in 1024 X?
                     ## ```
    steep*: int32 ## ```
                  ##   Helper which stores yx_steep for flat lines and xy_steep for steep (non flat) lines
                  ## ```
    spx*: int32 ## ```
                ##   Steepness in 1 px in 0..255 range. Used only by flat lines.
                ## ```
    flat* {.bitsize: 1.}: uint8 ## ```
                                ##   1: It's a flat line? (Near to horizontal)
                                ## ```
    inv* {.bitsize: 1.}: uint8 ## ```
                               ##   Invert the mask. The default is: Keep the left part.
                               ##       It is used to select left/right/top/bottom
                               ## ```
  
  Type_lvglh2* {.bycopy, implvglHdr, importc: "struct Type_lvglh2".} = object
    vertex_p*: lv_point_t
    start_angle*: lv_coord_t
    end_angle*: lv_coord_t

  lv_draw_mask_angle_param_t* {.bycopy, importc, implvglHdr.} = object
    dsc*: lv_draw_mask_common_dsc_t ## ```
                                    ##   The first element must be the common descriptor
                                    ## ```
    cfg*: Type_lvglh2
    start_line*: lv_draw_mask_line_param_t
    end_line*: lv_draw_mask_line_param_t
    delta_deg*: uint16

  lv_draw_mask_radius_circle_dsc_t* {.bycopy, implvglHdr, importc: "_lv_draw_mask_radius_circle_dsc_t".} = object
    buf*: ptr uint8
    cir_opa*: ptr lv_opa_t ## ```
                           ##   Opacity of values on the circumference of an 1/4 circle
                           ## ```
    x_start_on_y*: ptr uint16 ## ```
                              ##   The x coordinate of the circle for each y value
                              ## ```
    opa_start_on_y*: ptr uint16 ## ```
                                ##   The index of cir_opa for each y value
                                ## ```
    life*: int32             ## ```
                             ##   How many times the entry way used
                             ## ```
    used_cnt*: uint32        ## ```
                             ##   Like a semaphore to count the referencing masks
                             ## ```
    radius*: lv_coord_t      ## ```
                             ##   The radius of the entry
                             ## ```
  
  lv_draw_mask_radius_circle_dsc_arr_t* {.implvglHdr,
      importc: "_lv_draw_mask_radius_circle_dsc_arr_t".} = array[4,
      lv_draw_mask_radius_circle_dsc_t]
  Type_lvglh3* {.bycopy, implvglHdr, importc: "struct Type_lvglh3".} = object
    rect*: lv_area_t
    radius*: lv_coord_t      ## ```
                             ##   Invert the mask. 0: Keep the pixels inside.
                             ## ```
    outer* {.bitsize: 1.}: uint8 ## ```
                                 ##   Invert the mask. 0: Keep the pixels inside.
                                 ## ```
  
  lv_draw_mask_radius_param_t* {.bycopy, importc, implvglHdr.} = object
    dsc*: lv_draw_mask_common_dsc_t ## ```
                                    ##   The first element must be the common descriptor
                                    ## ```
    cfg*: Type_lvglh3
    circle*: ptr lv_draw_mask_radius_circle_dsc_t

  Type_lvglh4* {.bycopy, implvglHdr, importc: "struct Type_lvglh4".} = object
    coords*: lv_area_t
    y_top*: lv_coord_t
    y_bottom*: lv_coord_t
    opa_top*: lv_opa_t
    opa_bottom*: lv_opa_t

  lv_draw_mask_fade_param_t* {.bycopy, importc, implvglHdr.} = object
    dsc*: lv_draw_mask_common_dsc_t ## ```
                                    ##   The first element must be the common descriptor
                                    ## ```
    cfg*: Type_lvglh4

  Type_lvglh5* {.bycopy, implvglHdr, importc: "struct Type_lvglh5".} = object
    coords*: lv_area_t
    map*: ptr lv_opa_t

  lv_draw_mask_map_param_t* {.bycopy, implvglHdr,
                              importc: "struct _lv_draw_mask_map_param_t".} = object
    dsc*: lv_draw_mask_common_dsc_t ## ```
                                    ##   The first element must be the common descriptor
                                    ## ```
    cfg*: Type_lvglh5

  Type_lvglh6* {.bycopy, implvglHdr, importc: "struct Type_lvglh6".} = object
    points*: ptr lv_point_t
    point_cnt*: uint16

  lv_draw_mask_polygon_param_t* {.bycopy, importc, implvglHdr.} = object
    dsc*: lv_draw_mask_common_dsc_t ## ```
                                    ##   The first element must be the common descriptor
                                    ## ```
    cfg*: Type_lvglh6

  lv_draw_layer_ctx_t* {.bycopy, implvglHdr,
                         importc: "struct _lv_draw_layer_ctx_t".} = object
    area_full*: lv_area_t
    area_act*: lv_area_t
    max_row_with_alpha*: lv_coord_t
    max_row_with_no_alpha*: lv_coord_t
    buf*: pointer
    original*: Type_lvglh7

  lv_draw_mask_t* {.bycopy, importc, implvglHdr.} = object
    user_data*: pointer

  Type_lvglh7* {.bycopy, implvglHdr, importc: "struct Type_lvglh7".} = object
    clip_area*: ptr lv_area_t
    buf_area*: ptr lv_area_t
    buf*: pointer
    color_format*: lv_color_format_t

  lv_obj_draw_part_dsc_t* {.bycopy, importc, implvglHdr.} = object
    draw_ctx*: ptr lv_draw_ctx_t ## ```
                                 ##   < Draw context
                                 ## ```
    class_p*: ptr lv_obj_class_t ## ```
                                 ##   < The class that sent the event
                                 ## ```
    `type`*: uint32 ## ```
                    ##   < The type if part being draw. Element of lv_<name>_draw_part_type_t
                    ## ```
    draw_area*: ptr lv_area_t ## ```
                              ##   < The area of the part being drawn
                              ## ```
    rect_dsc*: ptr lv_draw_rect_dsc_t ## ```
                                      ##   < The area of the part being drawn
                                      ## ```
    label_dsc*: ptr lv_draw_label_dsc_t ## ```
                                        ##   < A draw descriptor that can be modified to changed what LVGL will draw. Set only for rectangle-like parts
                                        ## ```
    line_dsc*: ptr lv_draw_line_dsc_t ## ```
                                      ##   < A draw descriptor that can be modified to changed what LVGL will draw. Set only for text-like parts
                                      ## ```
    img_dsc*: ptr lv_draw_img_dsc_t ## ```
                                    ##   < A draw descriptor that can be modified to changed what LVGL will draw. Set only for line-like parts
                                    ## ```
    arc_dsc*: ptr lv_draw_arc_dsc_t ## ```
                                    ##   < A draw descriptor that can be modified to changed what LVGL will draw. Set only for image-like parts
                                    ## ```
    p1*: ptr lv_point_t ## ```
                        ##   < A draw descriptor that can be modified to changed what LVGL will draw. Set only for arc-like parts
                        ## ```
    p2*: ptr lv_point_t ## ```
                        ##   < A point calculated during drawing. E.g. a point of chart.
                        ## ```
    text*: cstring ## ```
                   ##   < A text calculated during drawing. Can be modified. E.g. tick labels on a chart axis.
                   ## ```
    text_length*: uint32 ## ```
                         ##   < Size of the text buffer containing null-terminated text string calculated during drawing.
                         ## ```
    part*: uint32            ## ```
                             ##   < The current part for which the event is sent
                             ## ```
    id*: uint32 ## ```
                ##   < The index of the part. E.g. a button's index on button matrix or table cell index.
                ## ```
    radius*: lv_coord_t ## ```
                        ##   < E.g. the radius of an arc (not the corner radius).
                        ## ```
    value*: int32 ## ```
                  ##   < A value calculated during drawing. E.g. Chart's tick line value.
                  ## ```
    sub_part_ptr*: pointer ## ```
                           ##   < A pointer the identifies something in the part. E.g. chart series.
                           ## ```
  
  lv_obj_class_event_cb_t* {.importc, implvglHdr.} = proc (
      class_p: ptr lv_obj_class_t; e: ptr lv_event_t) {.cdecl.}
  lv_ll_node_t* {.importc, implvglHdr.} = uint8 ## ```
                                                ##   ******************
                                                ##         INCLUDES
                                                ##   ******************
                                                ##    ******************
                                                ##         DEFINES
                                                ##   ******************
                                                ##    *******************
                                                ##         TYPEDEFS
                                                ##   *******************
                                                ##      Dummy type to make handling easier
                                                ## ```
  lv_ll_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                     ##   Description of a linked list
                                                     ## ```
    n_size*: uint32
    head*: ptr lv_ll_node_t
    tail*: ptr lv_ll_node_t

  lv_group_t* {.bycopy, implvglHdr, importc: "struct _lv_group_t".} = object
    obj_ll*: lv_ll_t         ## ```
                             ##   < Linked list to store the objects in the group
                             ## ```
    obj_focus*: ptr ptr lv_obj_t ## ```
                                 ##   < The object in focus
                                 ## ```
    focus_cb*: lv_group_focus_cb_t ## ```
                                   ##   < A function to call when a new object is focused (optional)
                                   ## ```
    edge_cb*: lv_group_edge_cb_t ## ```
                                 ##   < A function to call when an edge is reached, no more focus
                                 ##                                                       targets are available in this direction (to allow edge feedback
                                 ##                                                       like a sound or a scroll bounce)
                                 ## ```
    user_data*: pointer
    frozen* {.bitsize: 1.}: uint8 ## ```
                                  ##   < 1: can't focus to new object
                                  ## ```
    editing* {.bitsize: 1.}: uint8 ## ```
                                   ##   < 1: Edit mode, 0: Navigate mode
                                   ## ```
    refocus_policy* {.bitsize: 1.}: uint8 ## ```
                                          ##   < 1: Focus prev if focused on deletion. 0: Focus next if focused on
                                          ##                                      deletion.
                                          ## ```
    wrap* {.bitsize: 1.}: uint8 ## ```
                                ##   < 1: Focus next/prev can wrap at end of list. 0: Focus next/prev stops at end
                                ##                                      of list.
                                ## ```
  
  lv_group_focus_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_group_t) {.
      cdecl.}
  lv_group_edge_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_group_t;
      a2: bool) {.cdecl.}
  lv_indev_t* {.bycopy, implvglHdr, importc: "struct _lv_indev_t".} = object
    `type`*: lv_indev_type_t ## ```
                             ##   < Input device type
                             ## ```
    read_cb*: lv_indev_read_cb_t ## ```
                                 ##   < Function pointer to read input device data.
                                 ## ```
    feedback_cb*: proc (indev: ptr lv_indev_t; event_code: uint8) {.cdecl.} ## ```
                                                                            ##   Called when an action happened on the input device.
                                                                            ##        The second parameter is the event from lv_event_t
                                                                            ## ```
    state*: lv_indev_state_t ## ```
                             ##   < Current state of the input device.
                             ##     Flags
                             ## ```
    long_pr_sent* {.bitsize: 1.}: uint8 ## ```
                                        ##   < Current state of the input device.
                                        ##     Flags
                                        ## ```
    reset_query* {.bitsize: 1.}: uint8
    disabled* {.bitsize: 1.}: uint8
    wait_until_release* {.bitsize: 1.}: uint8
    pr_timestamp*: uint32    ## ```
                             ##   < Pressed time stamp
                             ## ```
    longpr_rep_timestamp*: uint32 ## ```
                                  ##   < Long press repeat time stamp
                                  ## ```
    driver_data*: pointer
    user_data*: pointer
    disp*: ptr lv_disp_t     ## ```
                             ##   < Pointer to the assigned display
                             ## ```
    read_timer*: ptr lv_timer_t ## ```
                                ##   < Timer to periodically read the input device
                                ## ```
    scroll_limit*: uint8 ## ```
                         ##   < Number of pixels to slide before actually drag the object
                         ## ```
    scroll_throw*: uint8 ## ```
                         ##   < Drag throw slow-down in [%]. Greater value means faster slow-down
                         ## ```
    gesture_min_velocity*: uint8 ## ```
                                 ##   < At least this difference should be between two points to evaluate as gesture
                                 ## ```
    gesture_limit*: uint8 ## ```
                          ##   < At least this difference should be to send a gesture
                          ## ```
    long_press_time*: uint16 ## ```
                             ##   < Long press time in milliseconds
                             ## ```
    long_press_repeat_time*: uint16 ## ```
                                    ##   < Repeated trigger period in long press [ms]
                                    ## ```
    pointer*: Type_lvglh17
    keypad*: Type_lvglh18
    cursor*: ptr lv_obj_t    ## ```
                             ##   < Cursor for LV_INPUT_TYPE_POINTER
                             ## ```
    group*: ptr lv_group_t   ## ```
                             ##   < Keypad destination group
                             ## ```
    btn_points*: ptr lv_point_t ## ```
                                ##   < Array points assigned to the button ()screen will be pressed
                                ##                                         here by the buttons
                                ## ```
  
  lv_indev_data_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                             ##   Data structure passed to an input driver to fill
                                                             ## ```
    point*: lv_point_t ## ```
                       ##   < For LV_INDEV_TYPE_POINTER the currently pressed point
                       ## ```
    key*: uint32 ## ```
                 ##   < For LV_INDEV_TYPE_KEYPAD the currently pressed key
                 ## ```
    btn_id*: uint32 ## ```
                    ##   < For LV_INDEV_TYPE_BUTTON the currently pressed button
                    ## ```
    enc_diff*: int16 ## ```
                     ##   < For LV_INDEV_TYPE_ENCODER number of steps since the previous read
                     ## ```
    state*: lv_indev_state_t ## ```
                             ##   < LV_INDEV_STATE_REL or LV_INDEV_STATE_PR
                             ## ```
    continue_reading*: bool ## ```
                            ##   < If set to true, the read callback is invoked again
                            ## ```
  
  lv_indev_read_cb_t* {.importc, implvglHdr.} = proc (indev: ptr lv_indev_t;
      data: ptr lv_indev_data_t) {.cdecl.}
  lv_hit_test_info_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                ##   Used as the event parameter of ::LV_EVENT_HIT_TEST to check if an point can click the object or not.
                                                                ##    res should be set like this:
                                                                ##      - If already set to false an other event wants that point non clickable. If you want to respect it leave it as false or set true to overwrite it.
                                                                ##      - If already set true and point shouldn't be clickable set to false
                                                                ##      - If already set to true you agree that point can click the object leave it as true
                                                                ## ```
    point*: ptr lv_point_t ## ```
                           ##   < A point relative to screen to check if it can click the object or not
                           ## ```
    res*: bool ## ```
               ##   < true: point can click the object; false: it cannot
               ## ```
  
  lv_cover_check_info_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                   ##   Used as the event parameter of ::LV_EVENT_COVER_CHECK to check if an area is covered by the object or not.
                                                                   ##    In the event use const lv_area_t area = lv_event_get_cover_area(e) to get the area to check
                                                                   ##    and lv_event_set_cover_res(e, res) to set the result.
                                                                   ## ```
    res*: lv_cover_res_t
    area*: ptr lv_area_t

  lv_obj_spec_attr_t* {.bycopy, implvglHdr, importc: "_lv_obj_spec_attr_t".} = object ## ```
                                                                                       ##   Special, rarely used attributes.
                                                                                       ##    They are allocated automatically if any elements is set.
                                                                                       ## ```
    children*: ptr ptr lv_obj_t ## ```
                                ##   < Store the pointer of the children in an array.
                                ## ```
    child_cnt*: uint32       ## ```
                             ##   < Number of children
                             ## ```
    group_p*: ptr lv_group_t ## ```
                             ##   < Number of children
                             ## ```
    event_list*: lv_event_list_t
    scroll*: lv_point_t      ## ```
                             ##   < The current X/Y scroll offset
                             ## ```
    ext_click_pad*: lv_coord_t ## ```
                               ##   < Extra click padding in all direction
                               ## ```
    ext_draw_size*: lv_coord_t ## ```
                               ##   < EXTend the size in every direction for drawing.
                               ## ```
    scrollbar_mode* {.bitsize: 2.}: lv_scrollbar_mode_t ## ```
                                                        ##   < How to display scrollbars
                                                        ## ```
    scroll_snap_x* {.bitsize: 2.}: lv_scroll_snap_t ## ```
                                                    ##   < Where to align the snappable children horizontally
                                                    ## ```
    scroll_snap_y* {.bitsize: 2.}: lv_scroll_snap_t ## ```
                                                    ##   < Where to align the snappable children vertically
                                                    ## ```
    scroll_dir* {.bitsize: 4.}: lv_dir_t ## ```
                                         ##   < The allowed scroll direction(s)
                                         ## ```
    layer_type* {.bitsize: 2.}: uint8 ## ```
                                      ##   < Cache the layer type here. Element of @lv_intermediate_layer_type_t
                                      ## ```
  
  lv_theme_apply_cb_t* {.importc, implvglHdr.} = proc (a1: ptr lv_theme_t;
      a2: ptr lv_obj_t) {.cdecl.}
  lv_font_fmt_txt_glyph_dsc_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                         ##   ******************
                                                                         ##         INCLUDES
                                                                         ##   ******************
                                                                         ##     
                                                                         ##    @file lv_font.h
                                                                         ##   
                                                                         ##    
                                                                         ##    ******************
                                                                         ##         DEFINES
                                                                         ##   ******************
                                                                         ##    *******************
                                                                         ##         TYPEDEFS
                                                                         ##   *******************
                                                                         ##      This describes a glyph.
                                                                         ## ```
    bitmap_index*: uint32 ## ```
                          ##   < Start index of the bitmap. A font can be max 4 GB.
                          ## ```
    adv_w*: uint32 ## ```
                   ##   < Draw the next glyph after this width. 28.4 format (real_value 16 is stored).
                   ## ```
    box_w*: uint16           ## ```
                             ##   < Width of the glyph's bounding box
                             ## ```
    box_h*: uint16           ## ```
                             ##   < Height of the glyph's bounding box
                             ## ```
    ofs_x*: int16            ## ```
                             ##   < x offset of the bounding box
                             ## ```
    ofs_y*: int16 ## ```
                  ##   < y offset of the bounding box. Measured from the top of the line
                  ## ```
  
  lv_font_fmt_txt_cmap_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                    ##   Map codepoints to a glyph_dscs
                                                                    ##    Several formats are supported to optimize memory usage
                                                                    ##    See https:github.com/lvgl/lv_font_conv/blob/master/doc/font_spec.md
                                                                    ## ```
    range_start*: uint32     ## ```
                             ##   First Unicode character for this range
                             ## ```
    range_length*: uint16 ## ```
                          ##   Number of Unicode characters related to this range.
                          ##        Last Unicode character = range_start + range_length - 1
                          ## ```
    glyph_id_start*: uint16 ## ```
                            ##   First glyph ID (array index of glyph_dsc) for this range
                            ## ```
    unicode_list*: ptr uint16
    glyph_id_ofs_list*: pointer ## ```
                                ##   if(type == LV_FONT_FMT_TXT_CMAP_FORMAT0_...) it's uint8_t
                                ##        if(type == LV_FONT_FMT_TXT_CMAP_SPARSE_...)  it's uint16_t
                                ## ```
    list_length*: uint16     ## ```
                             ##   Length of unicode_list and/or glyph_id_ofs_list
                             ## ```
    `type`*: lv_font_fmt_txt_cmap_type_t ## ```
                                         ##   Type of this character map
                                         ## ```
  
  lv_font_fmt_txt_kern_pair_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                         ##   A simple mapping of kern values from pairs
                                                                         ## ```
    glyph_ids*: pointer ## ```
                        ##   To get a kern value of two code points:
                        ##          1. Get the glyph_id_left and glyph_id_right from lv_font_fmt_txt_cmap_t
                        ##          2. for(i = 0; i < pair_cnt 2; i += 2)
                        ##                if(gylph_ids[i] == glyph_id_left &&
                        ##                   gylph_ids[i+1] == glyph_id_right)
                        ##                    return values[i / 2];
                        ## ```
    values*: ptr int8
    pair_cnt* {.bitsize: 30.}: uint32
    glyph_ids_size* {.bitsize: 2.}: uint32 ## ```
                                           ##   0: glyph_ids is stored as uint8_t; 1: as uint16_t
                                           ## ```
  
  lv_font_fmt_txt_kern_classes_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                            ##   More complex but more optimal class based kern value storage
                                                                            ## ```
    class_pair_values*: ptr int8 ## ```
                                 ##   left_class_cnt right_class_cnt value
                                 ## ```
    left_class_mapping*: ptr uint8 ## ```
                                   ##   Map the glyph_ids to classes: index -> glyph_id -> class_id
                                   ## ```
    right_class_mapping*: ptr uint8 ## ```
                                    ##   Map the glyph_ids to classes: index -> glyph_id -> class_id
                                    ## ```
    left_class_cnt*: uint8 ## ```
                           ##   Map the glyph_ids to classes: index -> glyph_id -> class_id
                           ## ```
    right_class_cnt*: uint8

  lv_font_fmt_txt_glyph_cache_t* {.bycopy, importc, implvglHdr.} = object
    last_letter*: uint32
    last_glyph_id*: uint32

  lv_font_fmt_txt_dsc_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                   ##   Describe store additional data for fonts
                                                                   ## ```
    glyph_bitmap*: ptr uint8 ## ```
                             ##   The bitmaps of all glyphs
                             ## ```
    glyph_dsc*: ptr lv_font_fmt_txt_glyph_dsc_t ## ```
                                                ##   Describe the glyphs
                                                ## ```
    cmaps*: ptr lv_font_fmt_txt_cmap_t ## ```
                                       ##   Map the glyphs to Unicode characters.
                                       ##       Array of lv_font_cmap_fmt_txt_t variables
                                       ## ```
    kern_dsc*: pointer ## ```
                       ##   Store kerning values.
                       ##        Can be lv_font_fmt_txt_kern_pair_t  or lv_font_kern_classes_fmt_txt_t
                       ##        depending on kern_classes
                       ## ```
    kern_scale*: uint16      ## ```
                             ##   Scale kern values in 12.4 format
                             ## ```
    cmap_num* {.bitsize: 9.}: uint16 ## ```
                                     ##   Number of cmap tables
                                     ## ```
    bpp* {.bitsize: 4.}: uint16 ## ```
                                ##   Bit per pixel: 1, 2, 3, 4, 8
                                ## ```
    kern_classes* {.bitsize: 1.}: uint16 ## ```
                                         ##   Type of kern_dsc
                                         ## ```
    bitmap_format* {.bitsize: 2.}: uint16 ## ```
                                          ##   storage format of the bitmap
                                          ##        from lv_font_fmt_txt_bitmap_format_t
                                          ## ```
    cache*: ptr lv_font_fmt_txt_glyph_cache_t ## ```
                                              ##   Cache the last letter and is glyph id
                                              ## ```
  
  lv_img_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                      ##   ******************
                                                      ##         INCLUDES
                                                      ##   ******************
                                                      ##     
                                                      ##    GENERATED FILE, DO NOT EDIT IT!
                                                      ##    @file lv_conf_internal.h
                                                      ##    Make sure all the defines of lv_conf.h have a default value
                                                      ##   
                                                      ##     Testing of dependencies
                                                      ##     
                                                      ##    @file lv_obj.h
                                                      ##   
                                                      ##    
                                                      ##     
                                                      ##    @file lv_fs.h
                                                      ##   
                                                      ##    
                                                      ##     
                                                      ##    @file lv_draw.h
                                                      ##   
                                                      ##    
                                                      ##    ******************
                                                      ##         DEFINES
                                                      ##   ******************
                                                      ##    *******************
                                                      ##         TYPEDEFS
                                                      ##   *******************
                                                      ##     
                                                      ##    Data of image
                                                      ## ```
    obj*: lv_obj_t
    src*: pointer ## ```
                  ##   Image source: Pointer to an array or a file or a symbol
                  ## ```
    offset*: lv_point_t ## ```
                        ##   Image source: Pointer to an array or a file or a symbol
                        ## ```
    w*: lv_coord_t           ## ```
                             ##   Width of the image (Handled by the library)
                             ## ```
    h*: lv_coord_t           ## ```
                             ##   Height of the image (Handled by the library)
                             ## ```
    angle*: lv_coord_t       ## ```
                             ##   rotation angle of the image
                             ## ```
    pivot*: lv_point_t       ## ```
                             ##   rotation center of the image
                             ## ```
    zoom*: lv_coord_t ## ```
                      ##   256 means no zoom, 512 double size, 128 half size
                      ## ```
    src_type* {.bitsize: 2.}: uint8 ## ```
                                    ##   See: lv_img_src_t
                                    ## ```
    cf* {.bitsize: 5.}: uint8 ## ```
                              ##   Color format from lv_color_format_t
                              ## ```
    antialias* {.bitsize: 1.}: uint8 ## ```
                                     ##   Apply anti-aliasing in transformations (rotate, zoom)
                                     ## ```
    obj_size_mode* {.bitsize: 2.}: uint8 ## ```
                                         ##   Image size mode when image size and object size is different.
                                         ## ```
  
  lv_animimg_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                          ##   Data of image
                                                          ## ```
    img*: lv_img_t
    anim*: lv_anim_t         ## ```
                             ##   picture sequence
                             ## ```
    dsc*: ptr pointer        ## ```
                             ##   picture sequence
                             ## ```
    pic_count*: int8

  lv_arc_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    rotation*: uint16
    indic_angle_start*: uint16
    indic_angle_end*: uint16
    bg_angle_start*: uint16
    bg_angle_end*: uint16
    value*: int16            ## ```
                             ##   Current value of the arc
                             ## ```
    min_value*: int16        ## ```
                             ##   Minimum value of the arc
                             ## ```
    max_value*: int16        ## ```
                             ##   Maximum value of the arc
                             ## ```
    dragging* {.bitsize: 1.}: uint16 ## ```
                                     ##   Maximum value of the arc
                                     ## ```
    `type`* {.bitsize: 2.}: uint16
    min_close* {.bitsize: 1.}: uint16 ## ```
                                      ##   1: the last pressed angle was closer to minimum end
                                      ## ```
    chg_rate*: uint16 ## ```
                      ##   Drag angle rate of change of the arc (degrees/sec)
                      ## ```
    last_tick*: uint32       ## ```
                             ##   Last dragging event timestamp of the arc
                             ## ```
    last_angle*: int16       ## ```
                             ##   Last dragging angle of the arc
                             ## ```
    knob_offset*: int16      ## ```
                             ##   knob offset from the main arc
                             ## ```
  
  Union_lvglh2* {.union, bycopy, implvglHdr, importc: "union Union_lvglh2".} = object
    tmp_ptr*: cstring ## ```
                      ##   Pointer to the allocated memory containing the character replaced by dots
                      ## ```
    tmp*: array[3 + typeof(3)(1), cchar] ## ```
                                         ##   Directly store the characters if <=4 characters
                                         ## ```
  
  lv_label_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    text*: cstring
    dot*: Union_lvglh2
    dot_end*: uint32         ## ```
                             ##   The real text length, used in dot mode
                             ## ```
    hint*: lv_draw_label_hint_t
    sel_start*: uint32
    sel_end*: uint32
    size_cache*: lv_point_t  ## ```
                             ##   Text size cache
                             ## ```
    offset*: lv_point_t      ## ```
                             ##   Text draw position offset
                             ## ```
    long_mode* {.bitsize: 3.}: lv_label_long_mode_t ## ```
                                                    ##   Determine what to do with the long texts
                                                    ## ```
    static_txt* {.bitsize: 1.}: uint8 ## ```
                                      ##   Flag to indicate the text is static
                                      ## ```
    recolor* {.bitsize: 1.}: uint8 ## ```
                                   ##   Enable in-line letter re-coloring
                                   ## ```
    expand* {.bitsize: 1.}: uint8 ## ```
                                  ##   Ignore real width (used by the library with LV_LABEL_LONG_SCROLL)
                                  ## ```
    dot_tmp_alloc* {.bitsize: 1.}: uint8 ## ```
                                         ##   1: dot is allocated, 0: dot directly holds up to 4 chars
                                         ## ```
    invalid_size_cache* {.bitsize: 1.}: uint8 ## ```
                                              ##   1: Recalculate size and update cache
                                              ## ```
  
  lv_bar_anim_t* {.bycopy, implvglHdr, importc: "_lv_bar_anim_t".} = object
    bar*: ptr lv_obj_t
    anim_start*: int32
    anim_end*: int32
    anim_state*: int32

  lv_bar_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    cur_value*: int32        ## ```
                             ##   < Current value of the bar
                             ## ```
    min_value*: int32        ## ```
                             ##   < Minimum value of the bar
                             ## ```
    max_value*: int32        ## ```
                             ##   < Maximum value of the bar
                             ## ```
    start_value*: int32      ## ```
                             ##   < Start value of the bar
                             ## ```
    indic_area*: lv_area_t ## ```
                           ##   < Save the indicator area. Might be used by derived types
                           ## ```
    cur_value_anim*: lv_bar_anim_t ## ```
                                   ##   < Save the indicator area. Might be used by derived types
                                   ## ```
    start_value_anim*: lv_bar_anim_t
    mode* {.bitsize: 2.}: lv_bar_mode_t ## ```
                                        ##   < Type of bar
                                        ## ```
  
  lv_btn_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t

  lv_btnmatrix_btn_draw_cb_t* {.importc, implvglHdr.} = proc (
      btnm: ptr lv_obj_t; btn_id: uint32; draw_area: ptr lv_area_t;
      clip_area: ptr lv_area_t): bool {.cdecl.}
  lv_btnmatrix_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                            ##   Data of button matrix
                                                            ## ```
    obj*: lv_obj_t
    map_p*: ptr cstring      ## ```
                             ##   Pointer to the current map
                             ## ```
    button_areas*: ptr lv_area_t ## ```
                                 ##   Array of areas of buttons
                                 ## ```
    ctrl_bits*: ptr lv_btnmatrix_ctrl_t ## ```
                                        ##   Array of control bytes
                                        ## ```
    btn_cnt*: uint16 ## ```
                     ##   Number of button in 'map_p'(Handled by the library)
                     ## ```
    row_cnt*: uint16 ## ```
                     ##   Number of rows in 'map_p'(Handled by the library)
                     ## ```
    btn_id_sel*: uint16 ## ```
                        ##   Index of the active button (being pressed/released etc) or LV_BTNMATRIX_BTN_NONE
                        ## ```
    one_check* {.bitsize: 1.}: uint8 ## ```
                                     ##   Single button toggled at once
                                     ## ```
  
  lv_calendar_date_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                ##   ******************
                                                                ##         INCLUDES
                                                                ##   ******************
                                                                ##     
                                                                ##    @file lv_btnmatrix.h
                                                                ##   
                                                                ##    
                                                                ##    ******************
                                                                ##         DEFINES
                                                                ##   ******************
                                                                ##    *******************
                                                                ##         TYPEDEFS
                                                                ##   *******************
                                                                ##     
                                                                ##    Represents a date on the calendar object (platform-agnostic).
                                                                ## ```
    year*: uint16
    month*: int8             ## ```
                             ##   1..12
                             ## ```
    day*: int8               ## ```
                             ##   1..31
                             ## ```
  
  lv_calendar_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                           ##   Data of calendar
                                                           ## ```
    obj*: lv_obj_t
    btnm*: ptr lv_obj_t      ## ```
                             ##   New data for this type
                             ## ```
    today*: lv_calendar_date_t ## ```
                               ##   Date of today
                               ## ```
    showed_date*: lv_calendar_date_t ## ```
                                     ##   Currently visible month (day is ignored)
                                     ## ```
    highlighted_dates*: ptr lv_calendar_date_t ## ```
                                               ##   Currently visible month (day is ignored)
                                               ## ```
    highlighted_dates_num*: uint16 ## ```
                                   ##   Number of elements in highlighted_days
                                   ## ```
    map*: array[8 * typeof(8)(7), cstring] ## ```
                                           ##   Number of elements in highlighted_days
                                           ## ```
    nums*: array[7 * typeof(7)(6), array[4, cchar]]

  lv_canvas_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                         ##   Data of canvas
                                                         ## ```
    img*: lv_img_t
    dsc*: lv_img_dsc_t

  lv_chart_series_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                               ##   Descriptor a chart series
                                                               ## ```
    x_points*: ptr lv_coord_t
    y_points*: ptr lv_coord_t
    color*: lv_color_t
    start_point*: uint16
    hidden* {.bitsize: 1.}: uint8
    x_ext_buf_assigned* {.bitsize: 1.}: uint8
    y_ext_buf_assigned* {.bitsize: 1.}: uint8
    x_axis_sec* {.bitsize: 1.}: uint8
    y_axis_sec* {.bitsize: 1.}: uint8

  lv_chart_cursor_t* {.bycopy, importc, implvglHdr.} = object
    pos*: lv_point_t
    point_id*: lv_coord_t
    color*: lv_color_t
    ser*: ptr lv_chart_series_t
    dir*: lv_dir_t
    pos_set* {.bitsize: 1.}: uint8 ## ```
                                   ##   1: pos is set; 0: point_id is set
                                   ## ```
  
  lv_chart_tick_dsc_t* {.bycopy, importc, implvglHdr.} = object
    major_len*: lv_coord_t
    minor_len*: lv_coord_t
    draw_size*: lv_coord_t
    minor_cnt* {.bitsize: 15.}: uint32
    major_cnt* {.bitsize: 15.}: uint32
    label_en* {.bitsize: 1.}: uint32

  lv_chart_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    series_ll*: lv_ll_t ## ```
                        ##   < Linked list for the series (stores lv_chart_series_t)
                        ## ```
    cursor_ll*: lv_ll_t ## ```
                        ##   < Linked list for the cursors (stores lv_chart_cursor_t)
                        ## ```
    tick*: array[4, lv_chart_tick_dsc_t] ## ```
                                         ##   < Linked list for the cursors (stores lv_chart_cursor_t)
                                         ## ```
    ymin*: array[2, lv_coord_t]
    ymax*: array[2, lv_coord_t]
    xmin*: array[2, lv_coord_t]
    xmax*: array[2, lv_coord_t]
    pressed_point_id*: lv_coord_t
    hdiv_cnt*: uint16        ## ```
                             ##   < Number of horizontal division lines
                             ## ```
    vdiv_cnt*: uint16        ## ```
                             ##   < Number of vertical division lines
                             ## ```
    point_cnt*: uint16       ## ```
                             ##   < Point number in a data line
                             ## ```
    zoom_x*: uint16          ## ```
                             ##   < Point number in a data line
                             ## ```
    zoom_y*: uint16
    `type`* {.bitsize: 3.}: lv_chart_type_t ## ```
                                            ##   < Line or column chart
                                            ## ```
    update_mode* {.bitsize: 1.}: lv_chart_update_mode_t ## ```
                                                        ##   < Line or column chart
                                                        ## ```
  
  lv_checkbox_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    txt*: cstring
    static_txt* {.bitsize: 1.}: uint32

  Type_lvglh8* {.bycopy, implvglHdr, importc: "struct Type_lvglh8".} = object
    pos*: lv_point_t
    recolor* {.bitsize: 1.}: uint8

  lv_colorwheel_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                             ##   Data of color picker
                                                             ## ```
    obj*: lv_obj_t
    hsv*: lv_color_hsv_t
    knob*: Type_lvglh8
    last_click_time*: uint32
    last_change_time*: uint32
    last_press_point*: lv_point_t
    mode* {.bitsize: 2.}: lv_colorwheel_mode_t
    mode_fixed* {.bitsize: 1.}: uint8

  lv_dropdown_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    list*: ptr lv_obj_t      ## ```
                             ##   < The dropped down list
                             ## ```
    text*: cstring           ## ```
                             ##   < Text to display on the dropdown's button
                             ## ```
    symbol*: pointer ## ```
                     ##   < Arrow or other icon when the drop-down list is closed
                     ## ```
    options*: cstring        ## ```
                             ##   < Options in a '\n' separated list
                             ## ```
    option_cnt*: uint16      ## ```
                             ##   < Number of options
                             ## ```
    sel_opt_id*: uint16      ## ```
                             ##   < Index of the currently selected option
                             ## ```
    sel_opt_id_orig*: uint16 ## ```
                             ##   < Store the original index on focus
                             ## ```
    pr_opt_id*: uint16       ## ```
                             ##   < Index of the currently pressed option
                             ## ```
    dir* {.bitsize: 4.}: lv_dir_t ## ```
                                  ##   < Direction in which the list should open
                                  ## ```
    static_txt* {.bitsize: 1.}: uint8 ## ```
                                      ##   < 1: Only a pointer is saved in options
                                      ## ```
    selected_highlight* {.bitsize: 1.}: uint8 ## ```
                                              ##   < 1: Make the selected option highlighted in the list
                                              ## ```
  
  lv_dropdown_list_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    dropdown*: ptr lv_obj_t

  lv_imgbtn_src_info_t* {.bycopy, importc, implvglHdr.} = object
    img_src*: pointer
    header*: lv_img_header_t

  lv_imgbtn_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                         ##   *******************
                                                         ##         TYPEDEFS
                                                         ##   *******************
                                                         ##     Data of image button
                                                         ## ```
    obj*: lv_obj_t
    src_mid*: array[LV_IMGBTN_STATE_NUM, lv_imgbtn_src_info_t] ## ```
                                                               ##   Store center images to each state
                                                               ## ```
    src_left*: array[LV_IMGBTN_STATE_NUM, lv_imgbtn_src_info_t] ## ```
                                                                ##   Store left side images to each state
                                                                ## ```
    src_right*: array[LV_IMGBTN_STATE_NUM, lv_imgbtn_src_info_t] ## ```
                                                                 ##   Store right side images to each state
                                                                 ## ```
  
  lv_keyboard_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                           ##   Data of keyboard
                                                           ## ```
    btnm*: lv_btnmatrix_t
    ta*: ptr lv_obj_t        ## ```
                             ##   Pointer to the assigned text area
                             ## ```
    mode*: lv_keyboard_mode_t ## ```
                              ##   Key map type
                              ## ```
    popovers* {.bitsize: 1.}: uint8 ## ```
                                    ##   Show button titles in popovers on press
                                    ## ```
  
  lv_led_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                      ##   *******************
                                                      ##         TYPEDEFS
                                                      ##   *******************
                                                      ##     Data of led
                                                      ## ```
    obj*: lv_obj_t
    color*: lv_color_t
    bright*: uint8           ## ```
                             ##   < Current brightness of the LED (0..255)
                             ## ```
  
  lv_line_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                       ##   ******************
                                                       ##         INCLUDES
                                                       ##   ******************
                                                       ##     
                                                       ##    @file lv_obj.h
                                                       ##   
                                                       ##    
                                                       ##    ******************
                                                       ##         DEFINES
                                                       ##   ******************
                                                       ##    *******************
                                                       ##         TYPEDEFS
                                                       ##   *******************
                                                       ##     Data of line
                                                       ## ```
    obj*: lv_obj_t
    point_array*: ptr lv_point_t ## ```
                                 ##   < Pointer to an array with the points of the line
                                 ## ```
    point_num*: uint16       ## ```
                             ##   < Number of points in 'point_array'
                             ## ```
    y_inv* {.bitsize: 1.}: uint8 ## ```
                                 ##   < 1: y == 0 will be on the bottom
                                 ## ```
  
  lv_menu_load_page_event_data_t* {.incompleteStruct, implvglHdr, importc: "struct lv_menu_load_page_event_data_t".} = object
  lv_menu_history_t* {.bycopy, importc, implvglHdr.} = object
    page*: ptr lv_obj_t

  lv_menu_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    storage*: ptr lv_obj_t ## ```
                           ##   a pointer to obj that is the parent of all pages not displayed
                           ## ```
    main*: ptr lv_obj_t ## ```
                        ##   a pointer to obj that is the parent of all pages not displayed
                        ## ```
    main_page*: ptr lv_obj_t
    main_header*: ptr lv_obj_t
    main_header_back_btn*: ptr lv_obj_t ## ```
                                        ##   a pointer to obj that on click triggers back btn event handler, can be same as 'main_header'
                                        ## ```
    main_header_title*: ptr lv_obj_t ## ```
                                     ##   a pointer to obj that on click triggers back btn event handler, can be same as 'main_header'
                                     ## ```
    sidebar*: ptr lv_obj_t
    sidebar_page*: ptr lv_obj_t
    sidebar_header*: ptr lv_obj_t
    sidebar_header_back_btn*: ptr lv_obj_t ## ```
                                           ##   a pointer to obj that on click triggers back btn event handler, can be same as 'sidebar_header'
                                           ## ```
    sidebar_header_title*: ptr lv_obj_t ## ```
                                        ##   a pointer to obj that on click triggers back btn event handler, can be same as 'sidebar_header'
                                        ## ```
    selected_tab*: ptr lv_obj_t
    history_ll*: lv_ll_t
    cur_depth*: uint8
    prev_depth*: uint8
    sidebar_generated* {.bitsize: 1.}: uint8
    mode_header* {.bitsize: 2.}: lv_menu_mode_header_t
    mode_root_back_btn* {.bitsize: 1.}: lv_menu_mode_root_back_btn_t

  lv_menu_page_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    title*: cstring
    static_title*: bool

  Type_lvglh9* {.bycopy, implvglHdr, importc: "struct Type_lvglh9".} = object
    src*: pointer
    pivot*: lv_point_t

  Type_lvglh10* {.bycopy, implvglHdr, importc: "struct Type_lvglh10".} = object
    width*: uint16
    r_mod*: int16
    color*: lv_color_t

  Type_lvglh11* {.bycopy, implvglHdr, importc: "struct Type_lvglh11".} = object
    width*: uint16
    src*: pointer
    color*: lv_color_t
    r_mod*: int16

  Type_lvglh12* {.bycopy, implvglHdr, importc: "struct Type_lvglh12".} = object
    width_mod*: int16
    color_start*: lv_color_t
    color_end*: lv_color_t
    local_grad* {.bitsize: 1.}: uint8

  Union_lvglh3* {.union, bycopy, implvglHdr, importc: "union Union_lvglh3".} = object
    needle_img*: Type_lvglh9
    needle_line*: Type_lvglh10
    arc*: Type_lvglh11
    scale_lines*: Type_lvglh12

  lv_meter_indicator_t* {.bycopy, importc, implvglHdr.} = object
    `type`*: lv_meter_indicator_type_t
    opa*: lv_opa_t
    start_value*: int32
    end_value*: int32
    type_data*: Union_lvglh3

  Type_lvglh13* {.bycopy, implvglHdr, importc: "struct Type_lvglh13".} = object
    tick_color*: lv_color_t
    tick_cnt*: uint16
    tick_length*: uint16
    tick_width*: uint16
    tick_major_color*: lv_color_t
    tick_major_nth*: uint16
    tick_major_length*: uint16
    tick_major_width*: uint16
    label_gap*: int16
    label_color*: int16
    min*: int32
    max*: int32
    r_mod*: int16
    angle_range*: uint16
    rotation*: int16

  lv_meter_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                        ##   Data of line meter
                                                        ## ```
    obj*: lv_obj_t
    scale*: Type_lvglh13
    indicator_ll*: lv_ll_t

  lv_msgbox_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    title*: ptr lv_obj_t
    close_btn*: ptr lv_obj_t
    content*: ptr lv_obj_t
    text*: ptr lv_obj_t
    btns*: ptr lv_obj_t

  lv_roller_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    option_cnt*: uint16      ## ```
                             ##   < Number of options
                             ## ```
    sel_opt_id*: uint16      ## ```
                             ##   < Index of the current option
                             ## ```
    sel_opt_id_ori*: uint16  ## ```
                             ##   < Store the original index on focus
                             ## ```
    inf_page_cnt*: uint32 ## ```
                          ##   < Number of extra pages added to make the roller look infinite
                          ## ```
    mode* {.bitsize: 1.}: lv_roller_mode_t ## ```
                                           ##   < Number of extra pages added to make the roller look infinite
                                           ## ```
    moved* {.bitsize: 1.}: uint32

  lv_slider_t* {.bycopy, importc, implvglHdr.} = object
    bar*: lv_bar_t           ## ```
                             ##   Add the ancestor's type first
                             ## ```
    left_knob_area*: lv_area_t ## ```
                               ##   Add the ancestor's type first
                               ## ```
    right_knob_area*: lv_area_t
    pressed_point*: lv_point_t
    value_to_set*: ptr int32 ## ```
                             ##   Which bar value to set
                             ## ```
    dragging* {.bitsize: 1.}: uint8 ## ```
                                    ##   1: the slider is being dragged
                                    ## ```
    left_knob_focus* {.bitsize: 1.}: uint8 ## ```
                                           ##   1: with encoder now the right knob can be adjusted
                                           ## ```
  
  lv_span_t* {.bycopy, importc, implvglHdr.} = object
    txt*: cstring            ## ```
                             ##   a pointer to display text
                             ## ```
    spangroup*: ptr lv_obj_t ## ```
                             ##   a pointer to spangroup
                             ## ```
    style*: lv_style_t       ## ```
                             ##   display text style
                             ## ```
    static_flag* {.bitsize: 1.}: uint8 ## ```
                                       ##   the text is static flag
                                       ## ```
  
  lv_spangroup_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                            ##   Data of label
                                                            ## ```
    obj*: lv_obj_t
    lines*: int32
    indent*: lv_coord_t      ## ```
                             ##   first line indent
                             ## ```
    cache_w*: lv_coord_t     ## ```
                             ##   the cache automatically calculates the width
                             ## ```
    cache_h*: lv_coord_t     ## ```
                             ##   similar cache_w
                             ## ```
    child_ll*: lv_ll_t       ## ```
                             ##   similar cache_w
                             ## ```
    mode* {.bitsize: 2.}: uint8 ## ```
                                ##   details see lv_span_mode_t
                                ## ```
    overflow* {.bitsize: 1.}: uint8 ## ```
                                    ##   details see lv_span_overflow_t
                                    ## ```
    refresh* {.bitsize: 1.}: uint8 ## ```
                                   ##   the spangroup need refresh cache_w and cache_h
                                   ## ```
  
  Type_lvglh14* {.bycopy, implvglHdr, importc: "struct Type_lvglh14".} = object ## ```
                                                                                 ##   Time to show characters in password mode before change them to '*'
                                                                                 ## ```
    valid_x*: lv_coord_t ## ```
                         ##   Used when stepping up/down to a shorter line.
                         ##                                      (Used by the library)
                         ## ```
    pos*: uint32 ## ```
                 ##   The current cursor position
                 ##                                      (0: before 1st letter; 1: before 2nd letter ...)
                 ## ```
    area*: lv_area_t         ## ```
                             ##   Cursor area relative to the Text Area
                             ## ```
    txt_byte_pos*: uint32    ## ```
                             ##   Byte index of the letter after (on) the cursor
                             ## ```
    show* {.bitsize: 1.}: uint8 ## ```
                                ##   Cursor is visible now or not (Handled by the library)
                                ## ```
    click_pos* {.bitsize: 1.}: uint8 ## ```
                                     ##   1: Enable positioning the cursor by clicking the text area
                                     ## ```
  
  lv_textarea_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                           ##   The default value just prevents GCC warning
                                                           ##    *******************
                                                           ##         TYPEDEFS
                                                           ##   *******************
                                                           ##     Data of text area
                                                           ## ```
    obj*: lv_obj_t
    label*: ptr lv_obj_t     ## ```
                             ##   Label of the text area
                             ## ```
    placeholder_txt*: cstring ## ```
                              ##   Place holder label. only visible if text is an empty string
                              ## ```
    pwd_tmp*: cstring        ## ```
                             ##   Used to store the original text in password mode
                             ## ```
    pwd_bullet*: cstring ## ```
                         ##   Replacement characters displayed in password mode
                         ## ```
    accepted_chars*: cstring ## ```
                             ##   Only these characters will be accepted. NULL: accept all
                             ## ```
    max_length*: uint32      ## ```
                             ##   The max. number of characters. 0: no limit
                             ## ```
    pwd_show_time*: uint16 ## ```
                           ##   Time to show characters in password mode before change them to '*'
                           ## ```
    cursor*: Type_lvglh14 ## ```
                          ##   Time to show characters in password mode before change them to '*'
                          ## ```
    sel_start*: uint32       ## ```
                             ##   Temporary values for text selection
                             ## ```
    sel_end*: uint32         ## ```
                             ##   Temporary values for text selection
                             ## ```
    text_sel_in_prog* {.bitsize: 1.}: uint8 ## ```
                                            ##   User is in process of selecting
                                            ## ```
    text_sel_en* {.bitsize: 1.}: uint8 ## ```
                                       ##   Text can be selected on this text area
                                       ## ```
    pwd_mode* {.bitsize: 1.}: uint8 ## ```
                                    ##   Replace characters with '*'
                                    ## ```
    one_line* {.bitsize: 1.}: uint8 ## ```
                                    ##   One line mode (ignore line breaks)
                                    ## ```
  
  lv_spinbox_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                          ##   *******************
                                                          ##         TYPEDEFS
                                                          ##   *******************
                                                          ##     Data of spinbox
                                                          ## ```
    ta*: lv_textarea_t       ## ```
                             ##   Ext. of ancestor
                             ##     New data for this type
                             ## ```
    value*: int32            ## ```
                             ##   Ext. of ancestor
                             ##     New data for this type
                             ## ```
    range_max*: int32
    range_min*: int32
    step*: int32
    digit_count* {.bitsize: 4.}: uint16
    dec_point_pos* {.bitsize: 4.}: uint16 ## ```
                                          ##   if 0, there is no separator and the number is an integer
                                          ## ```
    rollover* {.bitsize: 1.}: uint16 ## ```
                                     ##   Set to true for rollover functionality
                                     ## ```
    digit_step_dir* {.bitsize: 2.}: uint16 ## ```
                                           ##   the direction the digit will step on encoder button press when editing
                                           ## ```
  
  lv_switch_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    anim_state*: int32

  lv_table_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                        ##   Data of table
                                                        ## ```
    obj*: lv_obj_t
    col_cnt*: uint16
    row_cnt*: uint16
    cell_data*: ptr cstring
    row_h*: ptr lv_coord_t
    col_w*: ptr lv_coord_t
    col_act*: uint16
    row_act*: uint16

  lv_tabview_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    map*: ptr cstring
    tab_cnt*: uint16
    tab_cur*: uint16
    tab_pos*: lv_dir_t

  lv_tileview_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                           ##   ******************
                                                           ##         INCLUDES
                                                           ##   ******************
                                                           ##     
                                                           ##    @file lv_obj.h
                                                           ##   
                                                           ##    
                                                           ##    ******************
                                                           ##         DEFINES
                                                           ##   ******************
                                                           ##    *******************
                                                           ##         TYPEDEFS
                                                           ##   *******************
                                                           ## ```
    obj*: lv_obj_t
    tile_act*: ptr lv_obj_t

  lv_tileview_tile_t* {.bycopy, importc, implvglHdr.} = object
    obj*: lv_obj_t
    dir*: lv_dir_t

  lv_win_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                      ##   ******************
                                                      ##         INCLUDES
                                                      ##   ******************
                                                      ##     
                                                      ##    @file lvgl.h
                                                      ##    Include all LVGL related headers
                                                      ##    
                                                      ##    ******************
                                                      ##         DEFINES
                                                      ##   ******************
                                                      ##    *******************
                                                      ##         TYPEDEFS
                                                      ##   *******************
                                                      ## ```
    obj*: lv_obj_t

  lv_monkey* {.incompleteStruct, implvglHdr, importc: "struct _lv_monkey".} = object
  lv_monkey_t* {.importc, implvglHdr.} = lv_monkey
  Type_lvglh15* {.bycopy, implvglHdr, importc: "struct Type_lvglh15".} = object ## ```
                                                                                 ##   < Monkey execution period
                                                                                 ## ```
    min*: uint32             ## ```
                             ##   ! @cond Doxygen_Suppress
                             ## ```
    max*: uint32             ## ```
                             ##   ! @endcond
                             ## ```
  
  Type_lvglh16* {.bycopy, implvglHdr, importc: "struct Type_lvglh16".} = object ## ```
                                                                                 ##   < The range of input value
                                                                                 ## ```
    min*: int32
    max*: int32

  lv_monkey_config_t* {.bycopy, importc, implvglHdr.} = object
    `type`*: lv_indev_type_t ## ```
                             ##   < Input device type
                             ## ```
    period_range*: Type_lvglh15 ## ```
                                ##   < Monkey execution period
                                ## ```
    input_range*: Type_lvglh16 ## ```
                               ##   < The range of input value
                               ## ```
  
  keep_pedantic_happy* {.implvglHdr, importc: "_keep_pedantic_happy".} = cint ## ```
                                                                              ##   *******************
                                                                              ##         MACROS
                                                                              ##   *******************
                                                                              ##     
                                                                              ##    @file lv_templ.c
                                                                              ##   
                                                                              ##    
                                                                              ##    ******************
                                                                              ##         INCLUDES
                                                                              ##   ******************
                                                                              ##    ******************
                                                                              ##         DEFINES
                                                                              ##   ******************
                                                                              ##    *******************
                                                                              ##         TYPEDEFS
                                                                              ##   *******************
                                                                              ##     This typedef exists purely to keep -Wpedantic happy when the file is empty.
                                                                              ##     It can be removed.
                                                                              ## ```
  lv_fragment_manager_t* {.importc, implvglHdr, incompleteStruct.} = object
  lv_fragment_t* {.importc, implvglHdr, bycopy.} = object
    cls*: ptr lv_fragment_class_t ## ```
                                  ##   Class of this fragment
                                  ## ```
    managed*: ptr lv_fragment_managed_states_t ## ```
                                               ##   Managed fragment states. If not null, then this fragment is managed.
                                               ##       
                                               ##        @warning Don't modify values inside this struct!
                                               ## ```
    child_manager*: ptr lv_fragment_manager_t ## ```
                                              ##   Child fragment manager
                                              ## ```
    obj*: ptr lv_obj_t       ## ```
                             ##   lv_obj returned by create_obj_cb
                             ## ```
  
  lv_fragment_class_t* {.importc, implvglHdr, bycopy.} = object
    constructor_cb*: proc (self: ptr lv_fragment_t; args: pointer) {.cdecl.} ## ```
                                                                             ##   Constructor function for fragment class
                                                                             ##        @param self Fragment instance
                                                                             ##        @param args Arguments assigned by fragment manager
                                                                             ## ```
    destructor_cb*: proc (self: ptr lv_fragment_t) {.cdecl.} ## ```
                                                             ##   Destructor function for fragment class
                                                             ##        @param self Fragment instance, will be freed after this call
                                                             ## ```
    attached_cb*: proc (self: ptr lv_fragment_t) {.cdecl.} ## ```
                                                           ##   Fragment attached to manager
                                                           ##        @param self Fragment instance
                                                           ## ```
    detached_cb*: proc (self: ptr lv_fragment_t) {.cdecl.} ## ```
                                                           ##   Fragment detached from manager
                                                           ##        @param self Fragment instance
                                                           ## ```
    create_obj_cb*: proc (self: ptr lv_fragment_t; container: ptr lv_obj_t): ptr lv_obj_t {.
        cdecl.} ## ```
                ##   Create objects
                ##        @param self Fragment instance
                ##        @param container Container of the objects should be created upon
                ##        @return Created object, NULL if multiple objects has been created
                ## ```
    obj_created_cb*: proc (self: ptr lv_fragment_t; obj: ptr lv_obj_t) {.cdecl.} ## ```
                                                                                 ##   @param self Fragment instance
                                                                                 ##        @param obj lv_obj returned by create_obj_cb
                                                                                 ## ```
    obj_will_delete_cb*: proc (self: ptr lv_fragment_t; obj: ptr lv_obj_t) {.
        cdecl.} ## ```
                ##   Called before objects in the fragment will be deleted.
                ##       
                ##        @param self Fragment instance
                ##        @param obj object with this fragment
                ## ```
    obj_deleted_cb*: proc (self: ptr lv_fragment_t; obj: ptr lv_obj_t) {.cdecl.} ## ```
                                                                                 ##   Called when the object created by fragment received LV_EVENT_DELETE event
                                                                                 ##        @param self Fragment instance
                                                                                 ##        @param obj object with this fragment
                                                                                 ## ```
    event_cb*: proc (self: ptr lv_fragment_t; code: cint; userdata: pointer): bool {.
        cdecl.}
    instance_size*: uint     ## ```
                             ##   REQUIRED*: Allocation size of fragment
                             ## ```
  
  lv_fragment_managed_states_t* {.importc, implvglHdr, bycopy.} = object
    cls*: ptr lv_fragment_class_t ## ```
                                  ##   Class of the fragment
                                  ## ```
    manager*: ptr lv_fragment_manager_t ## ```
                                        ##   Manager the fragment attached to
                                        ## ```
    container*: ptr ptr lv_obj_t ## ```
                                 ##   Container object the fragment adding view to
                                 ## ```
    instance*: ptr lv_fragment_t ## ```
                                 ##   Fragment instance
                                 ## ```
    obj_created*: bool
    destroying_obj*: bool
    in_stack*: bool

  lv_imgfont_get_path_cb_t* {.importc, implvglHdr.} = proc (font: ptr lv_font_t;
      img_src: pointer; len: uint16; unicode: uint32; unicode_next: uint32;
      offset_y: ptr lv_coord_t; user_data: pointer): bool {.cdecl.}
  lv_msg_id_t* {.importc, implvglHdr.} = lv_uintptr_t
  lv_msg_t* {.bycopy, importc, implvglHdr.} = object
    id*: lv_msg_id_t         ## ```
                             ##   Identifier of the message
                             ## ```
    user_data*: pointer      ## ```
                             ##   Set the the user_data set in lv_msg_subscribe
                             ## ```
    priv_data*: pointer      ## ```
                             ##   Used internally
                             ## ```
    payload*: pointer        ## ```
                             ##   Pointer to the data of the message
                             ## ```
  
  lv_msg_subscribe_cb_t* {.importc, implvglHdr.} = proc (msg: ptr lv_msg_t) {.
      cdecl.}
  lv_pinyin_dict_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                              ##   Data of pinyin_dict
                                                              ## ```
    py*: cstring
    py_mb*: cstring

  ime_pinyin_k9_py_str_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                    ##   Data of 9-key input(k9) mode
                                                                    ## ```
    py_str*: array[7, cchar]

  lv_ime_pinyin_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                             ##   Data of lv_ime_pinyin
                                                             ## ```
    obj*: lv_obj_t
    kb*: ptr lv_obj_t
    cand_panel*: ptr lv_obj_t
    dict*: ptr lv_pinyin_dict_t
    k9_legal_py_ll*: lv_ll_t
    cand_str*: cstring       ## ```
                             ##   Candidate string
                             ## ```
    input_char*: array[16, cchar] ## ```
                                  ##   Input box character
                                  ## ```
    k9_input_str*: array[7 + typeof(7)(1), cchar] ## ```
                                                  ##   9-key input(k9) mode input string
                                                  ## ```
    k9_py_ll_pos*: uint16    ## ```
                             ##   Current pinyin map pages(k9)
                             ## ```
    k9_legal_py_count*: uint16 ## ```
                               ##   Count of legal Pinyin numbers(k9)
                               ## ```
    k9_input_str_len*: uint16 ## ```
                              ##   9-key input(k9) mode input string max len
                              ## ```
    ta_count*: uint16 ## ```
                      ##   The number of characters entered in the text box this time
                      ## ```
    cand_num*: uint16        ## ```
                             ##   Number of candidates
                             ## ```
    py_page*: uint16         ## ```
                             ##   Current pinyin map pages(k26)
                             ## ```
    py_num*: array[26, uint16] ## ```
                               ##   Number and length of Pinyin
                               ## ```
    py_pos*: array[26, uint16] ## ```
                               ##   Pinyin position
                               ## ```
    mode*: lv_ime_pinyin_mode_t ## ```
                                ##   Set mode, 1: 26-key input(k26), 0: 9-key input(k9). Default: 1.
                                ## ```
  
  lv_file_explorer_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                                ##   Data of canvas
                                                                ## ```
    obj*: lv_obj_t
    cont*: ptr lv_obj_t
    head_area*: ptr lv_obj_t
    browser_area*: ptr lv_obj_t
    file_table*: ptr lv_obj_t
    path_label*: ptr lv_obj_t
    quick_access_area*: ptr lv_obj_t
    list_device*: ptr lv_obj_t
    list_places*: ptr lv_obj_t
    home_dir*: cstring
    music_dir*: cstring
    pictures_dir*: cstring
    video_dir*: cstring
    docs_dir*: cstring
    fs_dir*: cstring
    sel_fn*: cstring
    current_path*: array[(128), cchar]
    sort*: lv_file_explorer_sort_t

  lv_barcode_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                          ##   ******************
                                                          ##         INCLUDES
                                                          ##   ******************
                                                          ##     
                                                          ##    @file lvgl.h
                                                          ##    Include all LVGL related headers
                                                          ##    
                                                          ##    ******************
                                                          ##         DEFINES
                                                          ##   ******************
                                                          ##    *******************
                                                          ##         TYPEDEFS
                                                          ##   *******************
                                                          ##     Data of barcode
                                                          ## ```
    canvas*: lv_canvas_t
    dark_color*: lv_color32_t
    light_color*: lv_color32_t
    scale*: uint16

  gd_Palette* {.bycopy, implvglHdr, importc: "struct _gd_Palette".} = object
    size*: cint
    colors*: array[0x00000100 * typeof(0x00000100)(3), uint8]

  gd_GCE* {.bycopy, implvglHdr, importc: "struct _gd_GCE".} = object
    delay*: uint16
    tindex*: uint8
    disposal*: uint8
    input*: cint
    transparency*: cint

  gd_GIF* {.bycopy, implvglHdr, importc: "struct _gd_GIF".} = object
    fd*: lv_fs_file_t
    data*: cstring
    is_file*: uint8
    f_rw_p*: uint32
    anim_start*: int32
    width*: uint16
    height*: uint16
    depth*: uint16
    loop_count*: int32
    gce*: gd_GCE
    palette*: ptr gd_Palette
    lct*: gd_Palette
    gct*: gd_Palette
    plain_text*: proc (gif: ptr gd_GIF; tx: uint16; ty: uint16; tw: uint16;
                       th: uint16; cw: uint8; ch: uint8; fg: uint8; bg: uint8) {.
        cdecl.}
    comment*: proc (gif: ptr gd_GIF) {.cdecl.}
    application*: proc (gif: ptr gd_GIF; id: array[8, cchar];
                        auth: array[3, cchar]) {.cdecl.}
    fx*: uint16
    fy*: uint16
    fw*: uint16
    fh*: uint16
    bgindex*: uint8
    canvas*: ptr uint8
    frame*: ptr uint8

  lv_gif_t* {.bycopy, importc, implvglHdr.} = object
    img*: lv_img_t
    gif*: ptr gd_GIF
    timer*: ptr lv_timer_t
    imgdsc*: lv_img_dsc_t
    last_call*: uint32

  lv_qrcode_t* {.bycopy, importc, implvglHdr.} = object ## ```
                                                         ##   ******************
                                                         ##         INCLUDES
                                                         ##   ******************
                                                         ##     
                                                         ##    @file lvgl.h
                                                         ##    Include all LVGL related headers
                                                         ##    
                                                         ##    ******************
                                                         ##         DEFINES
                                                         ##   ******************
                                                         ##    *******************
                                                         ##         TYPEDEFS
                                                         ##   *******************
                                                         ##     Data of qrcode
                                                         ## ```
    canvas*: lv_canvas_t
    dark_color*: lv_color_t
    light_color*: lv_color_t

  Type_lvglh17* {.bycopy, implvglHdr, importc: "struct Type_lvglh17".} = object
    act_point*: lv_point_t   ## ```
                             ##   < Current point of input device.
                             ## ```
    last_point*: lv_point_t  ## ```
                             ##   < Last point of input device.
                             ## ```
    last_raw_point*: lv_point_t ## ```
                                ##   < Last point read from read_cb.
                                ## ```
    vect*: lv_point_t        ## ```
                             ##   < Difference between act_point and last_point.
                             ## ```
    scroll_sum*: lv_point_t ## ```
                            ##   Count the dragged pixels to check LV_INDEV_DEF_SCROLL_LIMIT
                            ## ```
    scroll_throw_vect*: lv_point_t ## ```
                                   ##   Count the dragged pixels to check LV_INDEV_DEF_SCROLL_LIMIT
                                   ## ```
    scroll_throw_vect_ori*: lv_point_t
    act_obj*: ptr lv_obj_t   ## ```
                             ##   The object being pressed
                             ## ```
    last_obj*: ptr lv_obj_t  ## ```
                             ##   The last object which was pressed
                             ## ```
    scroll_obj*: ptr lv_obj_t ## ```
                              ##   The object being scrolled
                              ## ```
    last_pressed*: ptr lv_obj_t ## ```
                                ##   The lastly pressed object
                                ## ```
    scroll_area*: lv_area_t  ## ```
                             ##   The lastly pressed object
                             ## ```
    gesture_sum*: lv_point_t ## ```
                             ##   Count the gesture pixels to check LV_INDEV_DEF_GESTURE_LIMIT
                             ##     Flags
                             ## ```
    scroll_dir* {.bitsize: 4.}: lv_dir_t ## ```
                                         ##   Count the gesture pixels to check LV_INDEV_DEF_GESTURE_LIMIT
                                         ##     Flags
                                         ## ```
    gesture_dir* {.bitsize: 4.}: lv_dir_t
    gesture_sent* {.bitsize: 1.}: uint8

  Type_lvglh18* {.bycopy, implvglHdr, importc: "struct Type_lvglh18".} = object
    last_state*: lv_indev_state_t ## ```
                                  ##   Keypad data
                                  ## ```
    last_key*: uint32

var
  lv_font_montserrat_8* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_10* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_12* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_14* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_16* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_18* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_20* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_22* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_24* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_26* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_28* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_30* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_32* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_34* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_36* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_38* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_40* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_42* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_44* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_46* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_48* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_12_subpx* {.importc, implvglHdr.}: lv_font_t
  lv_font_montserrat_28_compressed* {.importc, implvglHdr.}: lv_font_t
  lv_font_dejavu_16_persian_hebrew* {.importc, implvglHdr.}: lv_font_t
  lv_font_simsun_16_cjk* {.importc, implvglHdr.}: lv_font_t
  lv_font_unscii_8* {.importc, implvglHdr.}: lv_font_t
  lv_font_unscii_16* {.importc, implvglHdr.}: lv_font_t
  lv_txt_encoded_size* {.importc: "_lv_txt_encoded_size", implvglHdr.}: proc (
      a1: cstring): uint8 {.cdecl.} ## ```
                                    ##   ************************************************************
                                    ##     GLOBAL FUNCTION POINTERS FOR CHARACTER ENCODING INTERFACE
                                    ##   ************************************************************
                                    ##     
                                    ##    Give the size of an encoded character
                                    ##    @param str pointer to a character in a string
                                    ##    @return length of the encoded character (1,2,3 ...). O in invalid
                                    ## ```
  lv_txt_unicode_to_encoded* {.importc: "_lv_txt_unicode_to_encoded", implvglHdr.}: proc (
      a1: uint32): uint32 {.cdecl.} ## ```
                                    ##   Convert a Unicode letter to encoded
                                    ##    @param letter_uni a Unicode letter
                                    ##    @return Encoded character in Little Endian to be compatible with C chars (e.g. 'Á', 'Ü')
                                    ## ```
  lv_txt_encoded_conv_wc* {.importc: "_lv_txt_encoded_conv_wc", implvglHdr.}: proc (
      c: uint32): uint32 {.cdecl.} ## ```
                                   ##   Convert a wide character, e.g. 'Á' little endian to be compatible with the encoded format.
                                   ##    @param c a wide character
                                   ##    @return c in the encoded format
                                   ## ```
  lv_txt_encoded_next* {.importc: "_lv_txt_encoded_next", implvglHdr.}: proc (
      a1: cstring; a2: ptr uint32): uint32 {.cdecl.} ## ```
                                                     ##   Decode the next encoded character from a string.
                                                     ##    @param txt pointer to '\0' terminated string
                                                     ##    @param i start index in 'txt' where to start.
                                                     ##                   After the call it will point to the next encoded char in 'txt'.
                                                     ##                   NULL to use txt[0] as index
                                                     ##    @return the decoded Unicode character or 0 on invalid data code
                                                     ## ```
  lv_txt_encoded_prev* {.importc: "_lv_txt_encoded_prev", implvglHdr.}: proc (
      a1: cstring; a2: ptr uint32): uint32 {.cdecl.} ## ```
                                                     ##   Get the previous encoded character form a string.
                                                     ##    @param txt pointer to '\0' terminated string
                                                     ##    @param i_start index in 'txt' where to start. After the call it will point to the previous
                                                     ##    encoded char in 'txt'.
                                                     ##    @return the decoded Unicode character or 0 on invalid data
                                                     ## ```
  lv_txt_encoded_get_byte_id* {.importc: "_lv_txt_encoded_get_byte_id",
                                implvglHdr.}: proc (a1: cstring; a2: uint32): uint32 {.
      cdecl.} ## ```
              ##   Convert a letter index (in the encoded text) to byte index.
              ##    E.g. in UTF-8 "AÁRT" index of 'R' is 2 but start at byte 3 because 'Á' is 2 bytes long
              ##    @param txt a '\0' terminated UTF-8 string
              ##    @param enc_id letter index
              ##    @return byte index of the 'enc_id'th letter
              ## ```
  lv_txt_encoded_get_char_id* {.importc: "_lv_txt_encoded_get_char_id",
                                implvglHdr.}: proc (a1: cstring; a2: uint32): uint32 {.
      cdecl.} ## ```
              ##   Convert a byte index (in an encoded text) to character index.
              ##    E.g. in UTF-8 "AÁRT" index of 'R' is 2 but start at byte 3 because 'Á' is 2 bytes long
              ##    @param txt a '\0' terminated UTF-8 string
              ##    @param byte_id byte index
              ##    @return character index of the letter at 'byte_id'th position
              ## ```
  lv_txt_get_encoded_length* {.importc: "_lv_txt_get_encoded_length", implvglHdr.}: proc (
      a1: cstring): uint32 {.cdecl.} ## ```
                                     ##   Get the number of characters (and NOT bytes) in a string.
                                     ##    E.g. in UTF-8 "ÁBC" is 3 characters (but 4 bytes)
                                     ##    @param txt a '\0' terminated char string
                                     ##    @return number of characters
                                     ## ```
  lv_style_const_prop_id_WIDTH* {.importc: "_lv_style_const_prop_id_WIDTH",
                                  implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_MIN_WIDTH* {.importc: "_lv_style_const_prop_id_MIN_WIDTH",
                                      implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_MAX_WIDTH* {.importc: "_lv_style_const_prop_id_MAX_WIDTH",
                                      implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_HEIGHT* {.importc: "_lv_style_const_prop_id_HEIGHT",
                                   implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_MIN_HEIGHT* {.importc: "_lv_style_const_prop_id_MIN_HEIGHT",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_MAX_HEIGHT* {.importc: "_lv_style_const_prop_id_MAX_HEIGHT",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_X* {.importc: "_lv_style_const_prop_id_X", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_Y* {.importc: "_lv_style_const_prop_id_Y", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ALIGN* {.importc: "_lv_style_const_prop_id_ALIGN",
                                  implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSFORM_WIDTH*
      {.importc: "_lv_style_const_prop_id_TRANSFORM_WIDTH", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSFORM_HEIGHT*
      {.importc: "_lv_style_const_prop_id_TRANSFORM_HEIGHT", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSLATE_X* {.importc: "_lv_style_const_prop_id_TRANSLATE_X",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSLATE_Y* {.importc: "_lv_style_const_prop_id_TRANSLATE_Y",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSFORM_ZOOM* {.
      importc: "_lv_style_const_prop_id_TRANSFORM_ZOOM", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSFORM_ANGLE*
      {.importc: "_lv_style_const_prop_id_TRANSFORM_ANGLE", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSFORM_PIVOT_X*
      {.importc: "_lv_style_const_prop_id_TRANSFORM_PIVOT_X", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSFORM_PIVOT_Y*
      {.importc: "_lv_style_const_prop_id_TRANSFORM_PIVOT_Y", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_PAD_TOP* {.importc: "_lv_style_const_prop_id_PAD_TOP",
                                    implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_PAD_BOTTOM* {.importc: "_lv_style_const_prop_id_PAD_BOTTOM",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_PAD_LEFT* {.importc: "_lv_style_const_prop_id_PAD_LEFT",
                                     implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_PAD_RIGHT* {.importc: "_lv_style_const_prop_id_PAD_RIGHT",
                                      implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_PAD_ROW* {.importc: "_lv_style_const_prop_id_PAD_ROW",
                                    implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_PAD_COLUMN* {.importc: "_lv_style_const_prop_id_PAD_COLUMN",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_MARGIN_TOP* {.importc: "_lv_style_const_prop_id_MARGIN_TOP",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_MARGIN_BOTTOM* {.
      importc: "_lv_style_const_prop_id_MARGIN_BOTTOM", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_MARGIN_LEFT* {.importc: "_lv_style_const_prop_id_MARGIN_LEFT",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_MARGIN_RIGHT* {.
      importc: "_lv_style_const_prop_id_MARGIN_RIGHT", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_COLOR* {.importc: "_lv_style_const_prop_id_BG_COLOR",
                                     implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_OPA* {.importc: "_lv_style_const_prop_id_BG_OPA",
                                   implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_GRAD_COLOR* {.
      importc: "_lv_style_const_prop_id_BG_GRAD_COLOR", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_GRAD_DIR* {.importc: "_lv_style_const_prop_id_BG_GRAD_DIR",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_MAIN_STOP* {.
      importc: "_lv_style_const_prop_id_BG_MAIN_STOP", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_GRAD_STOP* {.
      importc: "_lv_style_const_prop_id_BG_GRAD_STOP", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_GRAD* {.importc: "_lv_style_const_prop_id_BG_GRAD",
                                    implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_DITHER_MODE* {.
      importc: "_lv_style_const_prop_id_BG_DITHER_MODE", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_IMG_SRC* {.importc: "_lv_style_const_prop_id_BG_IMG_SRC",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_IMG_OPA* {.importc: "_lv_style_const_prop_id_BG_IMG_OPA",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_IMG_RECOLOR* {.
      importc: "_lv_style_const_prop_id_BG_IMG_RECOLOR", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_IMG_RECOLOR_OPA*
      {.importc: "_lv_style_const_prop_id_BG_IMG_RECOLOR_OPA", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BG_IMG_TILED* {.
      importc: "_lv_style_const_prop_id_BG_IMG_TILED", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BORDER_COLOR* {.
      importc: "_lv_style_const_prop_id_BORDER_COLOR", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BORDER_OPA* {.importc: "_lv_style_const_prop_id_BORDER_OPA",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BORDER_WIDTH* {.
      importc: "_lv_style_const_prop_id_BORDER_WIDTH", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BORDER_SIDE* {.importc: "_lv_style_const_prop_id_BORDER_SIDE",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BORDER_POST* {.importc: "_lv_style_const_prop_id_BORDER_POST",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_OUTLINE_WIDTH* {.
      importc: "_lv_style_const_prop_id_OUTLINE_WIDTH", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_OUTLINE_COLOR* {.
      importc: "_lv_style_const_prop_id_OUTLINE_COLOR", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_OUTLINE_OPA* {.importc: "_lv_style_const_prop_id_OUTLINE_OPA",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_OUTLINE_PAD* {.importc: "_lv_style_const_prop_id_OUTLINE_PAD",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_SHADOW_WIDTH* {.
      importc: "_lv_style_const_prop_id_SHADOW_WIDTH", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_SHADOW_OFS_X* {.
      importc: "_lv_style_const_prop_id_SHADOW_OFS_X", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_SHADOW_OFS_Y* {.
      importc: "_lv_style_const_prop_id_SHADOW_OFS_Y", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_SHADOW_SPREAD* {.
      importc: "_lv_style_const_prop_id_SHADOW_SPREAD", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_SHADOW_COLOR* {.
      importc: "_lv_style_const_prop_id_SHADOW_COLOR", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_SHADOW_OPA* {.importc: "_lv_style_const_prop_id_SHADOW_OPA",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_IMG_OPA* {.importc: "_lv_style_const_prop_id_IMG_OPA",
                                    implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_IMG_RECOLOR* {.importc: "_lv_style_const_prop_id_IMG_RECOLOR",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_IMG_RECOLOR_OPA*
      {.importc: "_lv_style_const_prop_id_IMG_RECOLOR_OPA", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_LINE_WIDTH* {.importc: "_lv_style_const_prop_id_LINE_WIDTH",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_LINE_DASH_WIDTH*
      {.importc: "_lv_style_const_prop_id_LINE_DASH_WIDTH", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_LINE_DASH_GAP* {.
      importc: "_lv_style_const_prop_id_LINE_DASH_GAP", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_LINE_ROUNDED* {.
      importc: "_lv_style_const_prop_id_LINE_ROUNDED", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_LINE_COLOR* {.importc: "_lv_style_const_prop_id_LINE_COLOR",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_LINE_OPA* {.importc: "_lv_style_const_prop_id_LINE_OPA",
                                     implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ARC_WIDTH* {.importc: "_lv_style_const_prop_id_ARC_WIDTH",
                                      implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ARC_ROUNDED* {.importc: "_lv_style_const_prop_id_ARC_ROUNDED",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ARC_COLOR* {.importc: "_lv_style_const_prop_id_ARC_COLOR",
                                      implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ARC_OPA* {.importc: "_lv_style_const_prop_id_ARC_OPA",
                                    implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ARC_IMG_SRC* {.importc: "_lv_style_const_prop_id_ARC_IMG_SRC",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TEXT_COLOR* {.importc: "_lv_style_const_prop_id_TEXT_COLOR",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TEXT_OPA* {.importc: "_lv_style_const_prop_id_TEXT_OPA",
                                     implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TEXT_FONT* {.importc: "_lv_style_const_prop_id_TEXT_FONT",
                                      implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TEXT_LETTER_SPACE*
      {.importc: "_lv_style_const_prop_id_TEXT_LETTER_SPACE", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TEXT_LINE_SPACE*
      {.importc: "_lv_style_const_prop_id_TEXT_LINE_SPACE", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TEXT_DECOR* {.importc: "_lv_style_const_prop_id_TEXT_DECOR",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TEXT_ALIGN* {.importc: "_lv_style_const_prop_id_TEXT_ALIGN",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_RADIUS* {.importc: "_lv_style_const_prop_id_RADIUS",
                                   implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_CLIP_CORNER* {.importc: "_lv_style_const_prop_id_CLIP_CORNER",
                                        implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_OPA* {.importc: "_lv_style_const_prop_id_OPA",
                                implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_COLOR_FILTER_DSC*
      {.importc: "_lv_style_const_prop_id_COLOR_FILTER_DSC", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_COLOR_FILTER_OPA*
      {.importc: "_lv_style_const_prop_id_COLOR_FILTER_OPA", implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ANIM* {.importc: "_lv_style_const_prop_id_ANIM",
                                 implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ANIM_TIME* {.importc: "_lv_style_const_prop_id_ANIM_TIME",
                                      implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_ANIM_SPEED* {.importc: "_lv_style_const_prop_id_ANIM_SPEED",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_TRANSITION* {.importc: "_lv_style_const_prop_id_TRANSITION",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BLEND_MODE* {.importc: "_lv_style_const_prop_id_BLEND_MODE",
                                       implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_LAYOUT* {.importc: "_lv_style_const_prop_id_LAYOUT",
                                   implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_BASE_DIR* {.importc: "_lv_style_const_prop_id_BASE_DIR",
                                     implvglHdr.}: lv_style_prop_t
  lv_style_const_prop_id_inv* {.importc, implvglHdr.}: lv_style_prop_t
  lv_obj_class* {.importc, implvglHdr.}: lv_obj_class_t ## ```
                                                        ##   *******************
                                                        ##         MACROS
                                                        ##   *******************
                                                        ##     
                                                        ##    @file lv_group.h
                                                        ##   
                                                        ##    
                                                        ##     
                                                        ##    Make the base object's class publicly available.
                                                        ## ```
  lv_img_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_animimg_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_arc_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_label_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_bar_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_btn_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_btnmatrix_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_calendar_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_calendar_header_arrow_class* {.importc, implvglHdr.}: lv_obj_class_t ## ```
                                                                          ##   ******************
                                                                          ##         INCLUDES
                                                                          ##   ******************
                                                                          ##     
                                                                          ##    @file lv_obj.h
                                                                          ##   
                                                                          ##    
                                                                          ##    ******************
                                                                          ##         DEFINES
                                                                          ##   ******************
                                                                          ##    *******************
                                                                          ##         TYPEDEFS
                                                                          ##   *******************
                                                                          ## ```
  lv_calendar_header_dropdown_class* {.importc, implvglHdr.}: lv_obj_class_t ## ```
                                                                             ##   ******************
                                                                             ##         INCLUDES
                                                                             ##   ******************
                                                                             ##     
                                                                             ##    @file lv_obj.h
                                                                             ##   
                                                                             ##    
                                                                             ##    ******************
                                                                             ##         DEFINES
                                                                             ##   ******************
                                                                             ##    *******************
                                                                             ##         TYPEDEFS
                                                                             ##   *******************
                                                                             ## ```
  lv_canvas_class* {.importc, implvglHdr.}: lv_obj_class_t ## ```
                                                           ##   ******************
                                                           ##         INCLUDES
                                                           ##   ******************
                                                           ##     
                                                           ##    GENERATED FILE, DO NOT EDIT IT!
                                                           ##    @file lv_conf_internal.h
                                                           ##    Make sure all the defines of lv_conf.h have a default value
                                                           ##   
                                                           ##     
                                                           ##    @file lv_img.h
                                                           ##   
                                                           ##    
                                                           ##     
                                                           ##    @file lv_draw_img.h
                                                           ##   
                                                           ##    
                                                           ##    ******************
                                                           ##         DEFINES
                                                           ##   ******************
                                                           ##    *******************
                                                           ##         TYPEDEFS
                                                           ##   *******************
                                                           ## ```
  lv_chart_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_checkbox_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_colorwheel_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_dropdown_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_dropdownlist_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_imgbtn_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_keyboard_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_led_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_line_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_list_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_list_text_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_list_btn_class* {.importc, implvglHdr.}: lv_obj_class_t ## ```
                                                             ##   *******************
                                                             ##    GLOBAL PROTOTYPES
                                                             ##   *******************
                                                             ##     
                                                             ##    Create a list object
                                                             ##    @param parent    pointer to an object, it will be the parent of the new list
                                                             ##    @return          pointer to the created list
                                                             ## ```
  lv_menu_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_menu_page_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_menu_cont_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_menu_section_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_menu_separator_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_menu_sidebar_cont_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_menu_main_cont_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_menu_sidebar_header_cont_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_menu_main_header_cont_class* {.importc, implvglHdr.}: lv_obj_class_t ## ```
                                                                          ##   *******************
                                                                          ##    GLOBAL PROTOTYPES
                                                                          ##   *******************
                                                                          ##     
                                                                          ##    Create a menu object
                                                                          ##    @param parent pointer to an object, it will be the parent of the new menu
                                                                          ##    @return pointer to the created menu
                                                                          ## ```
  lv_meter_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_msgbox_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_msgbox_content_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_msgbox_backdrop_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_roller_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_slider_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_spangroup_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_textarea_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_spinbox_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_spinner_class* {.importc, implvglHdr.}: lv_obj_class_t ## ```
                                                            ##   ******************
                                                            ##         INCLUDES
                                                            ##   ******************
                                                            ##     
                                                            ##    @file lvgl.h
                                                            ##    Include all LVGL related headers
                                                            ##    
                                                            ##     Testing of dependencies
                                                            ##    ******************
                                                            ##         DEFINES
                                                            ##   ******************
                                                            ##    *******************
                                                            ##         TYPEDEFS
                                                            ##   *******************
                                                            ## ```
  lv_switch_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_table_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_tabview_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_tileview_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_tileview_tile_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_win_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_fragment_get_container* {.importc, implvglHdr.}: lv_obj_t ## ```
                                                               ##   Get container object of this fragment
                                                               ##    @param fragment Fragment instance
                                                               ##    @return Reference to container object
                                                               ## ```
  lv_ime_pinyin_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_file_explorer_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_barcode_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_gif_class* {.importc, implvglHdr.}: lv_obj_class_t
  lv_qrcode_class* {.importc, implvglHdr.}: lv_obj_class_t
  LV_LAYOUT_FLEX* {.importc, implvglHdr.}: uint16 ## ```
                                                  ##   *******************
                                                  ##    GLOBAL VARIABLES
                                                  ##   *******************
                                                  ## ```
  LV_STYLE_FLEX_FLOW* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_FLEX_MAIN_PLACE* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_FLEX_CROSS_PLACE* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_FLEX_TRACK_PLACE* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_FLEX_GROW* {.importc, implvglHdr.}: lv_style_prop_t
  LV_LAYOUT_GRID* {.importc, implvglHdr.}: uint16
  LV_STYLE_GRID_COLUMN_DSC_ARRAY* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_COLUMN_ALIGN* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_ROW_DSC_ARRAY* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_ROW_ALIGN* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_CELL_COLUMN_POS* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_CELL_COLUMN_SPAN* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_CELL_X_ALIGN* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_CELL_ROW_POS* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_CELL_ROW_SPAN* {.importc, implvglHdr.}: lv_style_prop_t
  LV_STYLE_GRID_CELL_Y_ALIGN* {.importc, implvglHdr.}: lv_style_prop_t
proc lv_tick_inc*(tick_period: uint32) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                     ##   ******************
                                                                     ##         INCLUDES
                                                                     ##   ******************
                                                                     ##     
                                                                     ##    GENERATED FILE, DO NOT EDIT IT!
                                                                     ##    @file lv_conf_internal.h
                                                                     ##    Make sure all the defines of lv_conf.h have a default value
                                                                     ##   
                                                                     ##    ******************
                                                                     ##         DEFINES
                                                                     ##   ******************
                                                                     ##    *******************
                                                                     ##         TYPEDEFS
                                                                     ##   *******************
                                                                     ##    *******************
                                                                     ##    GLOBAL PROTOTYPES
                                                                     ##   *******************
                                                                     ##     ! @cond Doxygen_Suppress
                                                                     ##     
                                                                     ##    You have to call this function periodically
                                                                     ##    @param tick_period the call period of this function in milliseconds
                                                                     ## ```
proc lv_tick_get*(): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                          ##   ! @endcond
                                                          ##     
                                                          ##    Get the elapsed milliseconds since start up
                                                          ##    @return the elapsed milliseconds
                                                          ## ```
proc lv_tick_elaps*(prev_tick: uint32): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   Get the elapsed milliseconds since a previous time stamp
                                                                             ##    @param prev_tick a previous time stamp (return value of lv_tick_get() )
                                                                             ##    @return the elapsed milliseconds since 'prev_tick'
                                                                             ## ```
proc lv_timer_core_init*() {.importc: "_lv_timer_core_init", cdecl, implvglHdr.}
  ## ```
                                                                                ##   *******************
                                                                                ##    GLOBAL PROTOTYPES
                                                                                ##   *******************
                                                                                ##     
                                                                                ##    Init the lv_timer module
                                                                                ## ```
proc lv_timer_handler*(): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                               ##   ! @cond Doxygen_Suppress
                                                               ##     
                                                               ##    Call it periodically to handle lv_timers.
                                                               ##    @return time till it needs to be run next (in ms)
                                                               ## ```
proc lv_timer_handler_run_in_period*(period: uint32): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   ! @endcond
                ##     
                ##    Call it in the super-loop of main() or threads. It will run lv_timer_handler()
                ##    with a given period in ms. You can use it with sleep or delay in OS environment.
                ##    This function is used to simplify the porting.
                ##    @param period the period for running lv_timer_handler()
                ##    @return the time after which it must be called again
                ## ```
proc lv_timer_periodic_handler*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                                ##   Call it in the super-loop of main() or threads. It will automatically call lv_timer_handler() at the right time.
                                                                ##    This function is used to simplify the porting.
                                                                ## ```
proc lv_timer_create_basic*(): ptr lv_timer_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Create an "empty" timer. It needs to be initialized with at least
                                                                            ##    lv_timer_set_cb and lv_timer_set_period
                                                                            ##    @return pointer to the created timer
                                                                            ## ```
proc lv_timer_create*(timer_xcb: lv_timer_cb_t; period: uint32;
                      user_data: pointer): ptr lv_timer_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Create a new lv_timer
                ##    @param timer_xcb a callback to call periodically.
                ##                    (the 'x' in the argument name indicates that it's not a fully generic function because it not follows
                ##                     the func_name(object, callback, ...) convention)
                ##    @param period call period in ms unit
                ##    @param user_data custom parameter
                ##    @return pointer to the new timer
                ## ```
proc lv_timer_del*(timer: ptr lv_timer_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Delete a lv_timer
                                                                        ##    @param timer pointer to an lv_timer
                                                                        ## ```
proc lv_timer_pause*(timer: ptr lv_timer_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   Pause/resume a timer.
                                                                          ##    @param timer pointer to an lv_timer
                                                                          ## ```
proc lv_timer_resume*(timer: ptr lv_timer_t) {.importc, cdecl, implvglHdr.}
proc lv_timer_set_cb*(timer: ptr lv_timer_t; timer_cb: lv_timer_cb_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the callback to the timer (the function to call periodically)
                       ##    @param timer pointer to a timer
                       ##    @param timer_cb the function to call periodically
                       ## ```
proc lv_timer_set_period*(timer: ptr lv_timer_t; period: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set new period for a lv_timer
                       ##    @param timer pointer to a lv_timer
                       ##    @param period the new period
                       ## ```
proc lv_timer_ready*(timer: ptr lv_timer_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   Make a lv_timer ready. It will not wait its period.
                                                                          ##    @param timer pointer to a lv_timer.
                                                                          ## ```
proc lv_timer_set_repeat_count*(timer: ptr lv_timer_t; repeat_count: int32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the number of times a timer will repeat.
                                ##    @param timer pointer to a lv_timer.
                                ##    @param repeat_count -1 : infinity;  0 : stop ;  n>0: residual times
                                ## ```
proc lv_timer_reset*(timer: ptr lv_timer_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   Reset a lv_timer.
                                                                          ##    It will be called the previously set period milliseconds later.
                                                                          ##    @param timer pointer to a lv_timer.
                                                                          ## ```
proc lv_timer_enable*(en: bool) {.importc, cdecl, implvglHdr.}
  ## ```
                                                              ##   Enable or disable the whole lv_timer handling
                                                              ##    @param en true: lv_timer handling is running, false: lv_timer handling is suspended
                                                              ## ```
proc lv_timer_get_idle*(): uint8 {.importc, cdecl, implvglHdr.}
  ## ```
                                                               ##   Get idle percentage
                                                               ##    @return the lv_timer idle in percentage
                                                               ## ```
proc lv_timer_get_time_until_next*(): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Get the time remaining until the next timer will run
                                                                           ##    @return the time remaining in ms
                                                                           ## ```
proc lv_timer_get_next*(timer: ptr lv_timer_t): ptr lv_timer_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Iterate through the timers
                ##    @param timer NULL to start iteration or the previous return value to get the next timer
                ##    @return the next timer or NULL if there is no more timer
                ## ```
proc lv_timer_get_user_data*(timer: ptr lv_timer_t): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the user_data passed when the timer was created
                ##    @param timer pointer to the lv_timer
                ##    @return pointer to the user_data
                ## ```
proc lv_trigo_sin*(angle: int16): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                      ##   *******************
                                                                      ##    GLOBAL PROTOTYPES
                                                                      ##   *******************
                                                                      ##     ! @cond Doxygen_Suppress
                                                                      ##     
                                                                      ##    Return with sinus of an angle
                                                                      ##    @param angle
                                                                      ##    @return sinus of 'angle'. sin(-90) = -32767, sin(90) = 32767
                                                                      ## ```
proc lv_trigo_cos*(angle: int16): int32 {.importc, cdecl, implvglHdr.}
proc lv_cubic_bezier*(x: int32; x1: int32; y1: int32; x2: int32; y2: int32): int32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   ! @endcond
                                ##     
                                ##    Calculate the y value of cubic-bezier(x1, y1, x2, y2) function as specified x.
                                ##    @param x time in range of [0..LV_BEZIER_VAL_MAX]
                                ##    @param x1 x of control point 1 in range of [0..LV_BEZIER_VAL_MAX]
                                ##    @param y1 y of control point 1 in range of [0..LV_BEZIER_VAL_MAX]
                                ##    @param x2 x of control point 2 in range of [0..LV_BEZIER_VAL_MAX]
                                ##    @param y2 y of control point 2 in range of [0..LV_BEZIER_VAL_MAX]
                                ##    @return the value calculated
                                ## ```
proc lv_bezier3*(t: int32; u0: int32; u1: uint32; u2: int32; u3: int32): int32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Calculate a value of a Cubic Bezier function.
                                ##    @param t time in range of [0..LV_BEZIER_VAL_MAX]
                                ##    @param u0 must be 0
                                ##    @param u1 control value 1 values in range of [0..LV_BEZIER_VAL_MAX]
                                ##    @param u2 control value 2 in range of [0..LV_BEZIER_VAL_MAX]
                                ##    @param u3 must be LV_BEZIER_VAL_MAX
                                ##    @return the value calculated from the given parameters in range of [0..LV_BEZIER_VAL_MAX]
                                ## ```
proc lv_atan2*(x: cint; y: cint): uint16 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                       ##   Calculate the atan2 of a vector.
                                                                       ##    @param x
                                                                       ##    @param y
                                                                       ##    @return the angle in degree calculated from the given parameters in range of [0..360]
                                                                       ## ```
proc lv_sqrt*(x: uint32; q: ptr lv_sqrt_res_t; mask: uint32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   ! @cond Doxygen_Suppress
                ##     
                ##    Get the square root of a number
                ##    @param x integer which square root should be calculated
                ##    @param q store the result here. q->i: integer part, q->f: fractional part in 1/256 unit
                ##    @param mask optional to skip some iterations if the magnitude of the root is known.
                ##    Set to 0x8000 by default.
                ##    If root < 16: mask = 0x80
                ##    If root < 256: mask = 0x800
                ##    Else: mask = 0x8000
                ## ```
proc lv_pow*(base: int64; exp: int8): int64 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   ! @endcond
                                                                          ##     
                                                                          ##    Calculate the integer exponents.
                                                                          ##    @param base
                                                                          ##    @param exp
                                                                          ##    @return base raised to the power exponent
                                                                          ## ```
proc lv_map*(x: int32; min_in: int32; max_in: int32; min_out: int32;
             max_out: int32): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                  ##   Get the mapped of a number given an input and output range
                                                                  ##    @param x integer which mapped value should be calculated
                                                                  ##    @param min_in min input range
                                                                  ##    @param max_in max input range
                                                                  ##    @param min_out max output range
                                                                  ##    @param max_out max output range
                                                                  ##    @return the mapped number
                                                                  ## ```
proc lv_rand*(min: uint32; max: uint32): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   Get a pseudo random number in the given range
                                                                              ##    @param min   the minimum value
                                                                              ##    @param max   the maximum value
                                                                              ##    @return return the random number. min <= return_value <= max
                                                                              ## ```
proc lv_malloc*(size: uint): pointer {.importc, cdecl, implvglHdr.}
  ## ```
                                                                   ##   *******************
                                                                   ##    GLOBAL PROTOTYPES
                                                                   ##   *******************
                                                                   ##     
                                                                   ##    Allocate a memory dynamically
                                                                   ##    @param size size of the memory to allocate in bytes
                                                                   ##    @return pointer to the allocated memory
                                                                   ## ```
proc lv_free*(data: pointer) {.importc, cdecl, implvglHdr.}
  ## ```
                                                           ##   Free an allocated data
                                                           ##    @param data pointer to an allocated memory
                                                           ## ```
proc lv_realloc*(data_p: pointer; new_size: uint): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Reallocate a memory with a new size. The old content will be kept.
                ##    @param data_p pointer to an allocated memory.
                ##                  Its content will be copied to the new memory block and freed
                ##    @param new_size the desired new size in byte
                ##    @return pointer to the new memory, NULL on failure
                ## ```
proc lv_memcpy*(dst: pointer; src: pointer; len: uint): pointer {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   @brief Copies a block of memory from a source address to a destination address.
                       ##    @param dst Pointer to the destination array where the content is to be copied.
                       ##    @param src Pointer to the source of data to be copied.
                       ##    @param len Number of bytes to copy.
                       ##    @return Pointer to the destination array.
                       ##    @note The function does not check for any overlapping of the source and destination memory blocks.
                       ## ```
proc lv_memset*(dst: pointer; v: uint8; len: uint) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   @brief Fills a block of memory with a specified value.
                                                                                 ##    @param dst Pointer to the destination array to fill with the specified value.
                                                                                 ##    @param v Value to be set. The value is passed as an int, but the function fills
                                                                                 ##             the block of memory using the unsigned char conversion of this value.
                                                                                 ##    @param len Number of bytes to be set to the value.
                                                                                 ## ```
proc lv_memzero*(dst: pointer; len: uint) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Same as memset(dst, 0x00, len).
                                                                        ##    @param dst pointer to the destination buffer
                                                                        ##    @param len number of byte to set
                                                                        ## ```
proc lv_strlen*(str: cstring): uint {.importc, cdecl, implvglHdr.}
  ## ```
                                                                  ##   @brief Computes the length of the string str up to, but not including the terminating null character.
                                                                  ##    @param str Pointer to the null-terminated byte string to be examined.
                                                                  ##    @return The length of the string in bytes.
                                                                  ## ```
proc lv_strncpy*(dst: cstring; src: cstring; dest_size: uint): cstring {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   @brief Copies up to dest_size characters from the string pointed to by src to the character array pointed to by dst.
                                ##    @param dst Pointer to the destination array where the content is to be copied.
                                ##    @param src Pointer to the source of data to be copied.
                                ##    @param dest_size Maximum number of characters to be copied to dst, including the null character.
                                ##    @return A pointer to the destination array, which is dst.
                                ## ```
proc lv_strcpy*(dst: cstring; src: cstring): cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   @brief Copies the string pointed to by src, including the terminating null character,
                ##           to the character array pointed to by dst.
                ##    @param dst Pointer to the destination array where the content is to be copied.
                ##    @param src Pointer to the source of data to be copied.
                ##    @return A pointer to the destination array, which is dst.
                ## ```
proc lv_mem_test*(): lv_res_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                            ##   @brief Tests the memory allocation system by allocating and freeing a block of memory.
                                                            ##    @return LV_RES_OK if the memory allocation system is working properly, or LV_RES_INV if there is an error.
                                                            ## ```
proc lv_mem_monitor*(mon_p: ptr lv_mem_monitor_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Give information about the work memory of dynamic allocation
                                                                                ##    @param mon_p pointer to a lv_mem_monitor_t variable,
                                                                                ##                 the result of the analysis will be stored here
                                                                                ## ```
proc lv_async_call*(async_xcb: lv_async_cb_t; user_data: pointer): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Call an asynchronous function the next time lv_timer_handler() is run. This function is likely to return
                                ##   *before** the call actually happens!
                                ##    @param async_xcb a callback which is the task itself.
                                ##                    (the 'x' in the argument name indicates that it's not a fully generic function because it not follows
                                ##                     the func_name(object, callback, ...) convention)
                                ##    @param user_data custom parameter
                                ## ```
proc lv_async_call_cancel*(async_xcb: lv_async_cb_t; user_data: pointer): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Cancel an asynchronous function call
                                ##    @param async_xcb a callback which is the task itself.
                                ##    @param user_data custom parameter
                                ## ```
proc lv_anim_core_init*() {.importc: "_lv_anim_core_init", cdecl, implvglHdr.}
  ## ```
                                                                              ##   *******************
                                                                              ##    GLOBAL PROTOTYPES
                                                                              ##   *******************
                                                                              ##     
                                                                              ##    Init. the animation module
                                                                              ## ```
proc lv_anim_init*(a: ptr lv_anim_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                   ##   Initialize an animation variable.
                                                                   ##    E.g.:
                                                                   ##    lv_anim_t a;
                                                                   ##    lv_anim_init(&a);
                                                                   ##    lv_anim_set_...(&a);
                                                                   ##    lv_anim_start(&a);
                                                                   ##    @param a     pointer to an lv_anim_t variable to initialize
                                                                   ## ```
proc lv_anim_set_var*(a: ptr lv_anim_t; `var`: pointer) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set a variable to animate
                ##    @param a     pointer to an initialized lv_anim_t variable
                ##    @param var   pointer to a variable to animate
                ## ```
proc lv_anim_set_exec_cb*(a: ptr lv_anim_t; exec_cb: lv_anim_exec_xcb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a function to animate var
                                ##    @param a         pointer to an initialized lv_anim_t variable
                                ##    @param exec_cb   a function to execute during animation
                                ##                     LVGL's built-in functions can be used.
                                ##                     E.g. lv_obj_set_x
                                ## ```
proc lv_anim_set_time*(a: ptr lv_anim_t; duration: uint32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the duration of an animation
                ##    @param a         pointer to an initialized lv_anim_t variable
                ##    @param duration  duration of the animation in milliseconds
                ## ```
proc lv_anim_set_delay*(a: ptr lv_anim_t; delay: uint32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set a delay before starting the animation
                ##    @param a         pointer to an initialized lv_anim_t variable
                ##    @param delay     delay before the animation in milliseconds
                ## ```
proc lv_anim_set_values*(a: ptr lv_anim_t; start: int32; `end`: int32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the start and end values of an animation
                                ##    @param a         pointer to an initialized lv_anim_t variable
                                ##    @param start     the start value
                                ##    @param end       the end value
                                ## ```
proc lv_anim_set_custom_exec_cb*(a: ptr lv_anim_t;
                                 exec_cb: lv_anim_custom_exec_cb_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Similar to lv_anim_set_exec_cb but lv_anim_custom_exec_cb_t receives
                       ##    lv_anim_t  as its first parameter instead of void.
                       ##    This function might be used when LVGL is bound to other languages because
                       ##    it's more consistent to have lv_anim_t as first parameter.
                       ##    The variable to animate can be stored in the animation's user_data
                       ##    @param a         pointer to an initialized lv_anim_t variable
                       ##    @param exec_cb   a function to execute.
                       ## ```
proc lv_anim_set_path_cb*(a: ptr lv_anim_t; path_cb: lv_anim_path_cb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the path (curve) of the animation.
                                ##    @param a         pointer to an initialized lv_anim_t variable
                                ##    @param path_cb a function to set the current value of the animation.
                                ## ```
proc lv_anim_set_start_cb*(a: ptr lv_anim_t; start_cb: lv_anim_start_cb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a function call when the animation really starts (considering delay)
                                ##    @param a         pointer to an initialized lv_anim_t variable
                                ##    @param start_cb  a function call when the animation starts
                                ## ```
proc lv_anim_set_get_value_cb*(a: ptr lv_anim_t;
                               get_value_cb: lv_anim_get_value_cb_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a function to use the current value of the variable and make start and end value
                       ##    relative to the returned current value.
                       ##    @param a             pointer to an initialized lv_anim_t variable
                       ##    @param get_value_cb  a function call when the animation starts
                       ## ```
proc lv_anim_set_ready_cb*(a: ptr lv_anim_t; ready_cb: lv_anim_ready_cb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a function call when the animation is ready
                                ##    @param a         pointer to an initialized lv_anim_t variable
                                ##    @param ready_cb  a function call when the animation is ready
                                ## ```
proc lv_anim_set_deleted_cb*(a: ptr lv_anim_t; deleted_cb: lv_anim_deleted_cb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a function call when the animation is deleted.
                                ##    @param a         pointer to an initialized lv_anim_t variable
                                ##    @param deleted_cb  a function call when the animation is deleted
                                ## ```
proc lv_anim_set_playback_time*(a: ptr lv_anim_t; time: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Make the animation to play back to when the forward direction is ready
                       ##    @param a         pointer to an initialized lv_anim_t variable
                       ##    @param time      the duration of the playback animation in milliseconds. 0: disable playback
                       ## ```
proc lv_anim_set_playback_delay*(a: ptr lv_anim_t; delay: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Make the animation to play back to when the forward direction is ready
                       ##    @param a         pointer to an initialized lv_anim_t variable
                       ##    @param delay     delay in milliseconds before starting the playback animation.
                       ## ```
proc lv_anim_set_repeat_count*(a: ptr lv_anim_t; cnt: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Make the animation repeat itself.
                ##    @param a         pointer to an initialized lv_anim_t variable
                ##    @param cnt       repeat count or LV_ANIM_REPEAT_INFINITE for infinite repetition. 0: to disable repetition.
                ## ```
proc lv_anim_set_repeat_delay*(a: ptr lv_anim_t; delay: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a delay before repeating the animation.
                       ##    @param a         pointer to an initialized lv_anim_t variable
                       ##    @param delay     delay in milliseconds before repeating the animation.
                       ## ```
proc lv_anim_set_early_apply*(a: ptr lv_anim_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set a whether the animation's should be applied immediately or only when the delay expired.
                ##    @param a         pointer to an initialized lv_anim_t variable
                ##    @param en        true: apply the start value immediately in lv_anim_start;
                ##                     false: apply the start value only when delay ms is elapsed and the animations really starts
                ## ```
proc lv_anim_set_user_data*(a: ptr lv_anim_t; user_data: pointer) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the custom user data field of the animation.
                       ##    @param a           pointer to an initialized lv_anim_t variable
                       ##    @param user_data   pointer to the new user_data.
                       ## ```
proc lv_anim_start*(a: ptr lv_anim_t): ptr lv_anim_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Create an animation
                ##    @param a         an initialized 'anim_t' variable. Not required after call.
                ##    @return          pointer to the created animation (different from the a parameter)
                ## ```
proc lv_anim_get_delay*(a: ptr lv_anim_t): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Get a delay before starting the animation
                                                                                ##    @param a pointer to an initialized lv_anim_t variable
                                                                                ##    @return delay before the animation in milliseconds
                                                                                ## ```
proc lv_anim_get_playtime*(a: ptr lv_anim_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the time used to play the animation.
                ##    @param a pointer to an animation.
                ##    @return the play time in milliseconds.
                ## ```
proc lv_anim_get_time*(a: ptr lv_anim_t): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Get the duration of an animation
                                                                               ##    @param a         pointer to an initialized lv_anim_t variable
                                                                               ##    @return the duration of the animation in milliseconds
                                                                               ## ```
proc lv_anim_get_repeat_count*(a: ptr lv_anim_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the repeat count of the animation.
                ##    @param a         pointer to an initialized lv_anim_t variable
                ##    @return the repeat count or LV_ANIM_REPEAT_INFINITE for infinite repetition. 0: disabled repetition.
                ## ```
proc lv_anim_get_user_data*(a: ptr lv_anim_t): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the user_data field of the animation
                ##    @param   a pointer to an initialized lv_anim_t variable
                ##    @return  the pointer to the custom user_data of the animation
                ## ```
proc lv_anim_del*(`var`: pointer; exec_cb: lv_anim_exec_xcb_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_anim_del_all*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                      ##   Delete all the animations
                                                      ## ```
proc lv_anim_get*(`var`: pointer; exec_cb: lv_anim_exec_xcb_t): ptr lv_anim_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the animation of a variable and its exec_cb.
                                ##    @param var       pointer to variable
                                ##    @param exec_cb   a function pointer which is animating 'var', or NULL to return first matching 'var'
                                ##    @return          pointer to the animation.
                                ## ```
proc lv_anim_get_timer*(): ptr lv_timer_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Get global animation refresher timer.
                                                                        ##    @return pointer to the animation refresher timer.
                                                                        ## ```
proc lv_anim_custom_del*(a: ptr lv_anim_t; exec_cb: lv_anim_custom_exec_cb_t): bool {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Delete an animation by getting the animated variable from a.
                                ##    Only animations with exec_cb will be deleted.
                                ##    This function exists because it's logical that all anim. functions receives an
                                ##    lv_anim_t as their first parameter. It's not practical in C but might make
                                ##    the API more consequent and makes easier to generate bindings.
                                ##    @param a         pointer to an animation.
                                ##    @param exec_cb   a function pointer which is animating 'var',
                                ##                     or NULL to ignore it and delete all the animations of 'var
                                ##    @return          true: at least 1 animation is deleted, false: no animation is deleted
                                ## ```
proc lv_anim_custom_get*(a: ptr lv_anim_t; exec_cb: lv_anim_custom_exec_cb_t): ptr lv_anim_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the animation of a variable and its exec_cb.
                                ##    This function exists because it's logical that all anim. functions receives an
                                ##    lv_anim_t as their first parameter. It's not practical in C but might make
                                ##    the API more consequent and makes easier to generate bindings.
                                ##    @param a         pointer to an animation.
                                ##    @param exec_cb   a function pointer which is animating 'var', or NULL to return first matching 'var'
                                ##    @return          pointer to the animation.
                                ## ```
proc lv_anim_count_running*(): uint16 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                    ##   Get the number of currently running animations
                                                                    ##    @return      the number of running animations
                                                                    ## ```
proc lv_anim_speed_to_time*(speed: uint32; start: int32; `end`: int32): uint32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Calculate the time of an animation with a given speed and the start and end values
                                ##    @param speed speed of animation in unit/sec
                                ##    @param start     start value of the animation
                                ##    @param end       end value of the animation
                                ##    @return          the required time [ms] for the animation with the given parameters
                                ## ```
proc lv_anim_refr_now*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                       ##   Manually refresh the state of the animations.
                                                       ##    Useful to make the animations running in a blocking process where
                                                       ##    lv_timer_handler can't run for a while.
                                                       ##    Shouldn't be used directly because it is called in lv_refr_now().
                                                       ## ```
proc lv_anim_path_linear*(a: ptr lv_anim_t): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Calculate the current value of an animation applying linear characteristic
                                                                                 ##    @param a     pointer to an animation
                                                                                 ##    @return      the current value to set
                                                                                 ## ```
proc lv_anim_path_ease_in*(a: ptr lv_anim_t): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Calculate the current value of an animation slowing down the start phase
                                                                                  ##    @param a     pointer to an animation
                                                                                  ##    @return      the current value to set
                                                                                  ## ```
proc lv_anim_path_ease_out*(a: ptr lv_anim_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Calculate the current value of an animation slowing down the end phase
                ##    @param a     pointer to an animation
                ##    @return      the current value to set
                ## ```
proc lv_anim_path_ease_in_out*(a: ptr lv_anim_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Calculate the current value of an animation applying an "S" characteristic (cosine)
                ##    @param a     pointer to an animation
                ##    @return      the current value to set
                ## ```
proc lv_anim_path_overshoot*(a: ptr lv_anim_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Calculate the current value of an animation with overshoot at the end
                ##    @param a     pointer to an animation
                ##    @return      the current value to set
                ## ```
proc lv_anim_path_bounce*(a: ptr lv_anim_t): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Calculate the current value of an animation with 3 bounces
                                                                                 ##    @param a     pointer to an animation
                                                                                 ##    @return      the current value to set
                                                                                 ## ```
proc lv_anim_path_step*(a: ptr lv_anim_t): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Calculate the current value of an animation applying step characteristic.
                                                                               ##    (Set end value on the end of the animation)
                                                                               ##    @param a     pointer to an animation
                                                                               ##    @return      the current value to set
                                                                               ## ```
proc lv_anim_timeline_create*(): ptr lv_anim_timeline_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##   GLOBAL PROTOTYPES
                ##  *******************
                ##     
                ##    Create an animation timeline.
                ##    @return pointer to the animation timeline.
                ## ```
proc lv_anim_timeline_del*(at: ptr lv_anim_timeline_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Delete animation timeline.
                ##    @param at    pointer to the animation timeline.
                ## ```
proc lv_anim_timeline_add*(at: ptr lv_anim_timeline_t; start_time: uint32;
                           a: ptr lv_anim_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Add animation to the animation timeline.
                                                                           ##    @param at            pointer to the animation timeline.
                                                                           ##    @param start_time    the time the animation started on the timeline, note that start_time will override the value of delay.
                                                                           ##    @param a             pointer to an animation.
                                                                           ## ```
proc lv_anim_timeline_start*(at: ptr lv_anim_timeline_t): uint32 {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Start the animation timeline.
                       ##    @param at    pointer to the animation timeline.
                       ##    @return total time spent in animation timeline.
                       ## ```
proc lv_anim_timeline_stop*(at: ptr lv_anim_timeline_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Stop the animation timeline.
                ##    @param at    pointer to the animation timeline.
                ## ```
proc lv_anim_timeline_set_reverse*(at: ptr lv_anim_timeline_t; reverse: bool) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the playback direction of the animation timeline.
                                ##    @param at        pointer to the animation timeline.
                                ##    @param reverse   whether to play in reverse.
                                ## ```
proc lv_anim_timeline_set_progress*(at: ptr lv_anim_timeline_t; progress: uint16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the progress of the animation timeline.
                                ##    @param at        pointer to the animation timeline.
                                ##    @param progress  set value 0~65535 to map 0~100% animation progress.
                                ## ```
proc lv_anim_timeline_get_playtime*(at: ptr lv_anim_timeline_t): uint32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the time used to play the animation timeline.
                                ##    @param at    pointer to the animation timeline.
                                ##    @return total time spent in animation timeline.
                                ## ```
proc lv_anim_timeline_get_reverse*(at: ptr lv_anim_timeline_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_snprintf_builtin*(buffer: cstring; count: uint; format: cstring): cint {.
    importc, cdecl, implvglHdr, varargs.}
proc lv_vsnprintf_builtin*(buffer: cstring; count: uint; format: cstring;
                           va: va_list): cint {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   @file lv_profiler_builtin.h.h
                                                                            ## ```
proc lv_area_set*(area_p: ptr lv_area_t; x1: lv_coord_t; y1: lv_coord_t;
                  x2: lv_coord_t; y2: lv_coord_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   *******************
                                                                                ##    GLOBAL PROTOTYPES
                                                                                ##   *******************
                                                                                ##     
                                                                                ##    Initialize an area
                                                                                ##    @param area_p pointer to an area
                                                                                ##    @param x1 left coordinate of the area
                                                                                ##    @param y1 top coordinate of the area
                                                                                ##    @param x2 right coordinate of the area
                                                                                ##    @param y2 bottom coordinate of the area
                                                                                ## ```
proc lv_area_copy*(dest: ptr lv_area_t; src: ptr lv_area_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Copy an area
                ##    @param dest pointer to the destination area
                ##    @param src pointer to the source area
                ## ```
proc lv_area_get_width*(area_p: ptr lv_area_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the width of an area
                ##    @param area_p pointer to an area
                ##    @return the width of the area (if x1 == x2 -> width = 1)
                ## ```
proc lv_area_get_height*(area_p: ptr lv_area_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the height of an area
                ##    @param area_p pointer to an area
                ##    @return the height of the area (if y1 == y2 -> height = 1)
                ## ```
proc lv_area_set_width*(area_p: ptr lv_area_t; w: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the width of an area
                ##    @param area_p pointer to an area
                ##    @param w the new width of the area (w == 1 makes x1 == x2)
                ## ```
proc lv_area_set_height*(area_p: ptr lv_area_t; h: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the height of an area
                ##    @param area_p pointer to an area
                ##    @param h the new height of the area (h == 1 makes y1 == y2)
                ## ```
proc lv_area_set_pos*(area_p: ptr lv_area_t; x: lv_coord_t; y: lv_coord_t) {.
    importc: "_lv_area_set_pos", cdecl, implvglHdr.}
  ## ```
                                                    ##   Set the position of an area (width and height will be kept)
                                                    ##    @param area_p pointer to an area
                                                    ##    @param x the new x coordinate of the area
                                                    ##    @param y the new y coordinate of the area
                                                    ## ```
proc lv_area_get_size*(area_p: ptr lv_area_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Return with area of an area (x y)
                ##    @param area_p pointer to an area
                ##    @return size of area
                ## ```
proc lv_area_increase*(area: ptr lv_area_t; w_extra: lv_coord_t;
                       h_extra: lv_coord_t) {.importc, cdecl, implvglHdr.}
proc lv_area_move*(area: ptr lv_area_t; x_ofs: lv_coord_t; y_ofs: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_area_intersect*(res_p: ptr lv_area_t; a1_p: ptr lv_area_t;
                        a2_p: ptr lv_area_t): bool {.
    importc: "_lv_area_intersect", cdecl, implvglHdr.}
proc lv_area_join*(a_res_p: ptr lv_area_t; a1_p: ptr lv_area_t;
                   a2_p: ptr lv_area_t) {.importc: "_lv_area_join", cdecl,
    implvglHdr.}
  ## ```
                ##   Join two areas into a third which involves the other two
                ##    @param a_res_p pointer to an area, the result will be stored here
                ##    @param a1_p pointer to the first area
                ##    @param a2_p pointer to the second area
                ## ```
proc lv_area_is_point_on*(a_p: ptr lv_area_t; p_p: ptr lv_point_t;
                          radius: lv_coord_t): bool {.
    importc: "_lv_area_is_point_on", cdecl, implvglHdr.}
proc lv_area_is_on*(a1_p: ptr lv_area_t; a2_p: ptr lv_area_t): bool {.
    importc: "_lv_area_is_on", cdecl, implvglHdr.}
proc lv_area_is_in*(ain_p: ptr lv_area_t; aholder_p: ptr lv_area_t;
                    radius: lv_coord_t): bool {.importc: "_lv_area_is_in",
    cdecl, implvglHdr.}
proc lv_area_is_out*(aout_p: ptr lv_area_t; aholder_p: ptr lv_area_t;
                     radius: lv_coord_t): bool {.importc: "_lv_area_is_out",
    cdecl, implvglHdr.}
proc lv_area_is_equal*(a: ptr lv_area_t; b: ptr lv_area_t): bool {.
    importc: "_lv_area_is_equal", cdecl, implvglHdr.}
proc lv_area_align*(base: ptr lv_area_t; to_align: ptr lv_area_t;
                    align: lv_align_t; ofs_x: lv_coord_t; ofs_y: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Align an area to an other
                                ##    @param base an area where the other will be aligned
                                ##    @param to_align the area to align
                                ##    @param align LV_ALIGN_...
                                ##    @param ofs_x X offset
                                ##    @param ofs_y Y offset
                                ## ```
proc lv_point_transform*(p: ptr lv_point_t; angle: int32; zoom: int32;
                         pivot: ptr lv_point_t) {.importc, cdecl, implvglHdr.}
proc lv_pct*(x: lv_coord_t): lv_coord_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                      ##   The default value just prevents GCC warning
                                                                      ##     
                                                                      ##    Convert a percentage value to lv_coord_t.
                                                                      ##    Percentage values are stored in special range
                                                                      ##    @param x the percentage (0..1000)
                                                                      ##    @return a coordinate that stores the percentage
                                                                      ## ```
proc lv_font_get_glyph_bitmap*(font_p: ptr lv_font_t; letter: uint32): ptr uint8 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Return with the bitmap of a font.
                                ##    @param font_p pointer to a font
                                ##    @param letter a UNICODE character code
                                ##    @return pointer to the bitmap of the letter
                                ## ```
proc lv_font_get_glyph_dsc*(font_p: ptr lv_font_t;
                            dsc_out: ptr lv_font_glyph_dsc_t; letter: uint32;
                            letter_next: uint32): bool {.importc, cdecl,
    implvglHdr.}
proc lv_font_get_glyph_width*(font: ptr lv_font_t; letter: uint32;
                              letter_next: uint32): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the width of a glyph with kerning
                ##    @param font pointer to a font
                ##    @param letter a UNICODE letter
                ##    @param letter_next the next letter after letter. Used for kerning
                ##    @return the width of the glyph
                ## ```
proc lv_font_get_line_height*(font_p: ptr lv_font_t): lv_coord_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the line height of a font. All characters fit into this height
                       ##    @param font_p pointer to a font
                       ##    @return the height of a font
                       ## ```
proc lv_font_default*(): ptr lv_font_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                     ##   Declare the custom (user defined) fonts
                                                                     ##     
                                                                     ##    Just a wrapper around LV_FONT_DEFAULT because it might be more convenient to use a function in some cases
                                                                     ##    @return  pointer to LV_FONT_DEFAULT
                                                                     ## ```
proc lv_color_to_native*(src_buf: ptr uint8; src_cf: lv_color_format_t;
                         c_out: ptr lv_color_t; a_out: ptr lv_opa_t;
                         alpha_color: lv_color_t; px_cnt: uint32) {.importc,
    cdecl, implvglHdr.}
proc lv_color_from_native*(src_buf: ptr lv_color_t; dest_buf: ptr uint8;
                           dest_cf: lv_color_format_t; px_cnt: uint32) {.
    importc, cdecl, implvglHdr.}
proc lv_color_from_native_alpha*(src_buf: ptr uint8; dest_buf: ptr uint8;
                                 dest_cf: lv_color_format_t; px_cnt: uint32) {.
    importc, cdecl, implvglHdr.}
proc lv_color_format_get_size*(src_cf: lv_color_format_t): uint8 {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the pixel size of a color format in bits
                       ##    @param src_cf a color format (LV_IMG_CF_...)
                       ##    @return the pixel size in bits
                       ## ```
proc lv_color_format_has_alpha*(src_cf: lv_color_format_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_color8_set_int*(c: ptr lv_color8_t; v: uint8) {.importc, cdecl,
    implvglHdr.}
proc lv_color16_set_int*(c: ptr lv_color16_t; v: uint16) {.importc, cdecl,
    implvglHdr.}
proc lv_color24_set_int*(c: ptr lv_color24_t; v: uint32) {.importc, cdecl,
    implvglHdr.}
proc lv_color32_set_int*(c: ptr lv_color32_t; v: uint32) {.importc, cdecl,
    implvglHdr.}
proc lv_color_set_int*(c: ptr lv_color_t; v: uint32) {.importc, cdecl,
    implvglHdr.}
proc lv_color8_to_int*(c: lv_color8_t): uint8 {.importc, cdecl, implvglHdr.}
proc lv_color16_to_int*(c: lv_color16_t): uint16 {.importc, cdecl, implvglHdr.}
proc lv_color24_to_int*(c: lv_color24_t): uint32 {.importc, cdecl, implvglHdr.}
proc lv_color32_to_int*(c: lv_color32_t): uint32 {.importc, cdecl, implvglHdr.}
proc lv_color_to_int*(c: lv_color_t): uint32 {.importc, cdecl, implvglHdr.}
proc lv_color8_from_buf*(buf: ptr uint8): lv_color8_t {.importc, cdecl,
    implvglHdr.}
proc lv_color16_from_buf*(buf: ptr uint8): lv_color16_t {.importc, cdecl,
    implvglHdr.}
proc lv_color24_from_buf*(buf: ptr uint8): lv_color24_t {.importc, cdecl,
    implvglHdr.}
proc lv_color32_from_buf*(buf: ptr uint8): lv_color32_t {.importc, cdecl,
    implvglHdr.}
proc lv_color_from_buf*(buf: ptr uint8): lv_color_t {.importc, cdecl, implvglHdr.}
proc lv_color_eq*(c1: lv_color_t; c2: lv_color_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_color_to8*(color: lv_color_t): lv_color8_t {.importc, cdecl, implvglHdr.}
proc lv_color_to16*(color: lv_color_t): lv_color16_t {.importc, cdecl,
    implvglHdr.}
proc lv_color_to24*(color: lv_color_t): lv_color24_t {.importc, cdecl,
    implvglHdr.}
proc lv_color_to32*(color: lv_color_t): lv_color32_t {.importc, cdecl,
    implvglHdr.}
proc lv_color_mix*(c1: lv_color_t; c2: lv_color_t; mix: uint8): lv_color_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   ! @cond Doxygen_Suppress
                                ##     
                                ##    Mix two colors with a given ratio.
                                ##    @param c1 the first color to mix (usually the foreground)
                                ##    @param c2 the second color to mix (usually the background)
                                ##    @param mix The ratio of the colors. 0: full c2, 255: full c1, 127: half c1 and halfc2
                                ##    @return the mixed color
                                ## ```
proc lv_color_premult*(c: lv_color_t; mix: uint8; `out`: ptr uint16) {.importc,
    cdecl, implvglHdr.}
proc lv_color_mix_premult*(premult_c1: ptr uint16; c2: lv_color_t; mix: uint8): lv_color_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Mix two colors with a given ratio. It runs faster than lv_color_mix but requires some pre computation.
                                ##    @param premult_c1 The first color. Should be preprocessed with lv_color_premult(c1)
                                ##    @param c2 The second color. As it is no pre computation required on it
                                ##    @param mix The ratio of the colors. 0: full c1, 255: full c2, 127: half c1 and half c2.
                                ##               Should be modified like mix = 255 - mix
                                ##    @return the mixed color
                                ##    @note 255 won't give clearly c1.
                                ## ```
proc lv_color_mix_with_alpha*(bg_color: lv_color_t; bg_opa: lv_opa_t;
                              fg_color: lv_color_t; fg_opa: lv_opa_t;
                              res_color: ptr lv_color_t; res_opa: ptr lv_opa_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Mix two colors. Both color can have alpha value.
                                ##    @param bg_color background color
                                ##    @param bg_opa alpha of the background color
                                ##    @param fg_color foreground color
                                ##    @param fg_opa alpha of the foreground color
                                ##    @param res_color the result color
                                ##    @param res_opa the result opacity
                                ## ```
proc lv_color_brightness*(color: lv_color_t): uint8 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   ! @endcond
                                                                                  ##     
                                                                                  ##    Get the brightness of a color
                                                                                  ##    @param color a color
                                                                                  ##    @return the brightness [0..255]
                                                                                  ## ```
proc lv_color_make*(r: uint8; g: uint8; b: uint8): lv_color_t {.importc, cdecl,
    implvglHdr.}
proc lv_color_hex*(c: uint32): lv_color_t {.importc, cdecl, implvglHdr.}
proc lv_color_hex3*(c: uint32): lv_color_t {.importc, cdecl, implvglHdr.}
proc lv_color_filter_dsc_init*(dsc: ptr lv_color_filter_dsc_t;
                               cb: lv_color_filter_cb_t) {.importc, cdecl,
    implvglHdr.}
proc lv_color_fill*(buf: ptr lv_color_t; color: lv_color_t; px_num: uint32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   ! @cond Doxygen_Suppress
                                ##     !
                                ## ```
proc lv_color_lighten*(c: lv_color_t; lvl: lv_opa_t): lv_color_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   ! @endcond
                       ## ```
proc lv_color_darken*(c: lv_color_t; lvl: lv_opa_t): lv_color_t {.importc,
    cdecl, implvglHdr.}
proc lv_color_change_lightness*(c: lv_color_t; lvl: lv_opa_t): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_color_hsv_to_rgb*(h: uint16; s: uint8; v: uint8): lv_color_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Convert a HSV color to RGB
                       ##    @param h hue [0..359]
                       ##    @param s saturation [0..100]
                       ##    @param v value [0..100]
                       ##    @return the given RGB color in RGB (with LV_COLOR_DEPTH depth)
                       ## ```
proc lv_color_rgb_to_hsv*(r8: uint8; g8: uint8; b8: uint8): lv_color_hsv_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Convert a 32-bit RGB color to HSV
                                ##    @param r8 8-bit red
                                ##    @param g8 8-bit green
                                ##    @param b8 8-bit blue
                                ##    @return the given RGB color in HSV
                                ## ```
proc lv_color_to_hsv*(color: lv_color_t): lv_color_hsv_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Convert a color to HSV
                ##    @param color color
                ##    @return the given color in HSV
                ## ```
proc lv_color_chroma_key*(): lv_color_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                      ##   Just a wrapper around LV_COLOR_CHROMA_KEY because it might be more convenient to use a function in some cases
                                                                      ##    @return LV_COLOR_CHROMA_KEY
                                                                      ## ```
proc lv_palette_main*(p: lv_palette_t): lv_color_t {.importc, cdecl, implvglHdr.}
proc lv_color_white*(): lv_color_t {.importc, cdecl, implvglHdr.}
proc lv_color_black*(): lv_color_t {.importc, cdecl, implvglHdr.}
proc lv_palette_lighten*(p: lv_palette_t; lvl: uint8): lv_color_t {.importc,
    cdecl, implvglHdr.}
proc lv_palette_darken*(p: lv_palette_t; lvl: uint8): lv_color_t {.importc,
    cdecl, implvglHdr.}
proc lv_txt_get_size*(size_res: ptr lv_point_t; text: cstring;
                      font: ptr lv_font_t; letter_space: lv_coord_t;
                      line_space: lv_coord_t; max_width: lv_coord_t;
                      flag: lv_text_flag_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   *******************
                                                                          ##    GLOBAL PROTOTYPES
                                                                          ##   *******************
                                                                          ##     
                                                                          ##    Get size of a text
                                                                          ##    @param size_res pointer to a 'point_t' variable to store the result
                                                                          ##    @param text pointer to a text
                                                                          ##    @param font pointer to font of the text
                                                                          ##    @param letter_space letter space of the text
                                                                          ##    @param line_space line space of the text
                                                                          ##    @param max_width max width of the text (break the lines to fit this size). Set COORD_MAX to avoid
                                                                          ##    @param flag settings for the text from ::lv_text_flag_t
                                                                          ##   
                                                                          ##    line breaks
                                                                          ## ```
proc lv_txt_get_next_line*(txt: cstring; font: ptr lv_font_t;
                           letter_space: lv_coord_t; max_width: lv_coord_t;
                           used_width: ptr lv_coord_t; flag: lv_text_flag_t): uint32 {.
    importc: "_lv_txt_get_next_line", cdecl, implvglHdr.}
  ## ```
                                                         ##   Get the next line of text. Check line length and break chars too.
                                                         ##    @param txt a '\0' terminated string
                                                         ##    @param font pointer to a font
                                                         ##    @param letter_space letter space
                                                         ##    @param max_width max width of the text (break the lines to fit this size). Set COORD_MAX to avoid
                                                         ##    line breaks
                                                         ##    @param used_width When used_width != NULL, save the width of this line if
                                                         ##    flag == LV_TEXT_FLAG_NONE, otherwise save -1.
                                                         ##    @param flag settings for the text from 'txt_flag_type' enum
                                                         ##    @return the index of the first char of the new line (in byte index not letter index. With UTF-8
                                                         ##    they are different)
                                                         ## ```
proc lv_txt_get_width*(txt: cstring; length: uint32; font: ptr lv_font_t;
                       letter_space: lv_coord_t; flag: lv_text_flag_t): lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Give the length of a text with a given font
                                ##    @param txt a '\0' terminate string
                                ##    @param length length of 'txt' in byte count and not characters (Á is 1 character but 2 bytes in
                                ##    UTF-8)
                                ##    @param font pointer to a font
                                ##    @param letter_space letter space
                                ##    @param flag settings for the text from 'txt_flag_t' enum
                                ##    @return length of a char_num long text
                                ## ```
proc lv_txt_is_cmd*(state: ptr lv_text_cmd_state_t; c: uint32): bool {.
    importc: "_lv_txt_is_cmd", cdecl, implvglHdr.}
proc lv_txt_ins*(txt_buf: cstring; pos: uint32; ins_txt: cstring) {.
    importc: "_lv_txt_ins", cdecl, implvglHdr.}
  ## ```
                                               ##   Insert a string into an other
                                               ##    @param txt_buf the original text (must be big enough for the result text and NULL terminated)
                                               ##    @param pos position to insert (0: before the original text, 1: after the first char etc.)
                                               ##    @param ins_txt text to insert, must be '\0' terminated
                                               ## ```
proc lv_txt_cut*(txt: cstring; pos: uint32; len: uint32) {.
    importc: "_lv_txt_cut", cdecl, implvglHdr.}
  ## ```
                                               ##   Delete a part of a string
                                               ##    @param txt string to modify, must be '\0' terminated and should point to a heap or stack frame, not read-only memory.
                                               ##    @param pos position where to start the deleting (0: before the first char, 1: after the first
                                               ##    char etc.)
                                               ##    @param len number of characters to delete
                                               ## ```
proc lv_txt_set_text_vfmt*(fmt: cstring; ap: va_list): cstring {.
    importc: "_lv_txt_set_text_vfmt", cdecl, implvglHdr.}
  ## ```
                                                         ##   return a new formatted text. Memory will be allocated to store the text.
                                                         ##    @param fmt printf-like format
                                                         ##    @param ap items to print
                                                         ##   
                                                         ##    @return pointer to the allocated text string.
                                                         ## ```
proc lv_txt_encoded_letter_next_2*(txt: cstring; letter: ptr uint32;
                                   letter_next: ptr uint32; ofs: ptr uint32) {.
    importc: "_lv_txt_encoded_letter_next_2", cdecl, implvglHdr.}
  ## ```
                                                                 ##   Decode two encoded character from a string.
                                                                 ##    @param txt pointer to '\0' terminated string
                                                                 ##    @param letter the first decoded Unicode character or 0 on invalid data code
                                                                 ##    @param letter_next the second decoded Unicode character or 0 on invalid data code
                                                                 ##    @param ofs start index in 'txt' where to start.
                                                                 ##                   After the call it will point to the next encoded char in 'txt'.
                                                                 ##                   NULL to use txt[0] as index
                                                                 ## ```
proc lv_txt_is_break_char*(letter: uint32): bool {.
    importc: "_lv_txt_is_break_char", cdecl, implvglHdr.}
  ## ```
                                                         ##   Test if char is break char or not (a text can broken here or not)
                                                         ##    @param letter a letter
                                                         ##    @return false: 'letter' is not break char
                                                         ## ```
proc lv_txt_is_a_word*(letter: uint32): bool {.importc: "_lv_txt_is_a_word",
    cdecl, implvglHdr.}
  ## ```
                       ##   Test if char is break char or not (a text can broken here or not)
                       ##    @param letter a letter
                       ##    @return false: 'letter' is not break char
                       ## ```
proc lv_bidi_process*(str_in: cstring; str_out: cstring; base_dir: lv_base_dir_t) {.
    importc: "_lv_bidi_process", cdecl, implvglHdr.}
  ## ```
                                                    ##   *******************
                                                    ##    GLOBAL PROTOTYPES
                                                    ##   *******************
                                                    ##     
                                                    ##    Convert a text to get the characters in the correct visual order according to
                                                    ##    Unicode Bidirectional Algorithm
                                                    ##    @param str_in the text to process
                                                    ##    @param str_out store the result here. Has the be strlen(str_in) length
                                                    ##    @param base_dir LV_BASE_DIR_LTR or LV_BASE_DIR_RTL
                                                    ## ```
proc lv_bidi_detect_base_dir*(txt: cstring): lv_base_dir_t {.
    importc: "_lv_bidi_detect_base_dir", cdecl, implvglHdr.}
  ## ```
                                                            ##   Auto-detect the direction of a text based on the first strong character
                                                            ##    @param txt the text to process
                                                            ##    @return LV_BASE_DIR_LTR or LV_BASE_DIR_RTL
                                                            ## ```
proc lv_bidi_get_logical_pos*(str_in: cstring; bidi_txt: ptr cstring;
                              len: uint32; base_dir: lv_base_dir_t;
                              visual_pos: uint32; is_rtl: ptr bool): uint16 {.
    importc: "_lv_bidi_get_logical_pos", cdecl, implvglHdr.}
  ## ```
                                                            ##   Get the logical position of a character in a line
                                                            ##    @param str_in the input string. Can be only one line.
                                                            ##    @param bidi_txt internally the text is bidi processed which buffer can be get here.
                                                            ##    If not required anymore has to freed with lv_free()
                                                            ##    Can be NULL is unused
                                                            ##    @param len length of the line in character count
                                                            ##    @param base_dir base direction of the text: LV_BASE_DIR_LTR or LV_BASE_DIR_RTL
                                                            ##    @param visual_pos the visual character position which logical position should be get
                                                            ##    @param is_rtl tell the char at visual_pos is RTL or LTR context
                                                            ##    @return the logical character position
                                                            ## ```
proc lv_bidi_get_visual_pos*(str_in: cstring; bidi_txt: ptr cstring;
                             len: uint16; base_dir: lv_base_dir_t;
                             logical_pos: uint32; is_rtl: ptr bool): uint16 {.
    importc: "_lv_bidi_get_visual_pos", cdecl, implvglHdr.}
  ## ```
                                                           ##   Get the visual position of a character in a line
                                                           ##    @param str_in the input string. Can be only one line.
                                                           ##    @param bidi_txt internally the text is bidi processed which buffer can be get here.
                                                           ##    If not required anymore has to freed with lv_free()
                                                           ##    Can be NULL is unused
                                                           ##    @param len length of the line in character count
                                                           ##    @param base_dir base direction of the text: LV_BASE_DIR_LTR or LV_BASE_DIR_RTL
                                                           ##    @param logical_pos the logical character position which visual position should be get
                                                           ##    @param is_rtl tell the char at logical_pos is RTL or LTR context
                                                           ##    @return the visual character position
                                                           ## ```
proc lv_bidi_process_paragraph*(str_in: cstring; str_out: cstring; len: uint32;
                                base_dir: lv_base_dir_t;
                                pos_conv_out: ptr uint16; pos_conv_len: uint16) {.
    importc: "_lv_bidi_process_paragraph", cdecl, implvglHdr.}
  ## ```
                                                              ##   Bidi process a paragraph of text
                                                              ##    @param str_in the string to process
                                                              ##    @param str_out store the result here
                                                              ##    @param len length of the text
                                                              ##    @param base_dir base dir of the text
                                                              ##    @param pos_conv_out an uint16_t array to store the related logical position of the character.
                                                              ##    Can be NULL is unused
                                                              ##    @param pos_conv_len length of pos_conv_out in element count
                                                              ## ```
proc lv_bidi_calculate_align*(align: ptr lv_text_align_t;
                              base_dir: ptr lv_base_dir_t; txt: cstring) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the real text alignment from the a text alignment, base direction and a text.
                                ##    @param align     LV_TEXT_ALIGN_..., write back the calculated align here (LV_TEXT_ALIGN_LEFT/RIGHT/CENTER)
                                ##    @param base_dir  LV_BASE_DIR_..., write the calculated base dir here (LV_BASE_DIR_LTR/RTL)
                                ##    @param txt       a text, used with LV_BASE_DIR_AUTO to determine the base direction
                                ## ```
proc lv_style_init*(style: ptr lv_style_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   *******************
                                                                         ##    GLOBAL PROTOTYPES
                                                                         ##   *******************
                                                                         ##     
                                                                         ##    Initialize a style
                                                                         ##    @param style pointer to a style to initialize
                                                                         ##    @note Do not call lv_style_init on styles that already have some properties
                                                                         ##          because this function won't free the used memory, just sets a default state for the style.
                                                                         ##          In other words be sure to initialize styles only once!
                                                                         ## ```
proc lv_style_reset*(style: ptr lv_style_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   Clear all properties from a style and free all allocated memories.
                                                                          ##    @param style pointer to a style
                                                                          ## ```
proc lv_style_register_prop*(flag: uint8): lv_style_prop_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Register a new style property for custom usage
                ##    @return a new property ID, or LV_STYLE_PROP_INV if there are no more available.
                ##    @example
                ##    lv_style_prop_t MY_PROP;
                ##    static inline void lv_style_set_my_prop(lv_style_t style, lv_color_t value) {
                ##    lv_style_value_t v = {.color = value}; lv_style_set_prop(style, MY_PROP, v); }
                ##   
                ##    ...
                ##    MY_PROP = lv_style_register_prop();
                ##    ...
                ##    lv_style_set_my_prop(&style1, lv_palette_main(LV_PALETTE_RED));
                ## ```
proc lv_style_get_num_custom_props*(): lv_style_prop_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the number of custom properties that have been registered thus far.
                ## ```
proc lv_style_remove_prop*(style: ptr lv_style_t; prop: lv_style_prop_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_prop*(style: ptr lv_style_t; prop: lv_style_prop_t;
                        value: lv_style_value_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Set the value of property in a style.
                                                                               ##    This function shouldn't be used directly by the user.
                                                                               ##    Instead use lv_style_set_<prop_name>(). E.g. lv_style_set_bg_color()
                                                                               ##    @param style pointer to style
                                                                               ##    @param prop the ID of a property (e.g. LV_STYLE_BG_COLOR)
                                                                               ##    @param value lv_style_value_t variable in which a field is set according to the type of prop
                                                                               ## ```
proc lv_style_set_prop_meta*(style: ptr lv_style_t; prop: lv_style_prop_t;
                             meta: uint16) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Set a special meta state for a property in a style.
                                                                         ##    This function shouldn't be used directly by the user.
                                                                         ##    @param style pointer to style
                                                                         ##    @param prop the ID of a property (e.g. LV_STYLE_BG_COLOR)
                                                                         ##    @param meta the meta value to attach to the property in the style
                                                                         ## ```
proc lv_style_get_prop*(style: ptr lv_style_t; prop: lv_style_prop_t;
                        value: ptr lv_style_value_t): lv_style_res_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the value of a property
                       ##    @param style pointer to a style
                       ##    @param prop  the ID of a property
                       ##    @param value pointer to a lv_style_value_t variable to store the value
                       ##    @return LV_RES_INV: the property wasn't found in the style (value is unchanged)
                       ##            LV_RES_OK: the property was fond, and value is set accordingly
                       ##    @note For performance reasons there are no sanity check on style
                       ## ```
proc lv_style_transition_dsc_init*(tr: ptr lv_style_transition_dsc_t;
                                   props: UncheckedArray[lv_style_prop_t];
                                   path_cb: lv_anim_path_cb_t; time: uint32;
                                   delay: uint32; user_data: pointer) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Initialize a transition descriptor.
                       ##    @param tr        pointer to a transition descriptor to initialize
                       ##    @param props     an array with the properties to transition. The last element must be zero.
                       ##    @param path_cb   an animation path (ease) callback. If NULL liner path will be used.
                       ##    @param time      duration of the transition in [ms]
                       ##    @param delay     delay before the transition in [ms]
                       ##    @param user_data any custom data that will be saved in the transition animation and will be available when path_cb is called
                       ##    @example
                       ##    const static lv_style_prop_t trans_props[] = { LV_STYLE_BG_OPA, LV_STYLE_BG_COLOR, 0 };
                       ##     static lv_style_transition_dsc_t trans1;
                       ##     lv_style_transition_dsc_init(&trans1, trans_props, NULL, 300, 0, NULL);
                       ## ```
proc lv_style_prop_get_default*(prop: lv_style_prop_t): lv_style_value_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the default value of a property
                                ##    @param prop the ID of a property
                                ##    @return the default value
                                ## ```
proc lv_style_get_prop_inlined*(style: ptr lv_style_t; prop: lv_style_prop_t;
                                value: ptr lv_style_value_t): lv_style_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the value of a property
                                ##    @param style pointer to a style
                                ##    @param prop  the ID of a property
                                ##    @param value pointer to a lv_style_value_t variable to store the value
                                ##    @return LV_RES_INV: the property wasn't found in the style (value is unchanged)
                                ##            LV_RES_OK: the property was fond, and value is set accordingly
                                ##    @note For performance reasons there are no sanity check on style
                                ##    @note This function is the same as ::lv_style_get_prop but inlined. Use it only on performance critical places
                                ## ```
proc lv_style_is_empty*(style: ptr lv_style_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_style_get_prop_group*(prop: lv_style_prop_t): uint8 {.
    importc: "_lv_style_get_prop_group", cdecl, implvglHdr.}
  ## ```
                                                            ##   Tell the group of a property. If the a property from a group is set in a style the (1 << group) bit of style->has_group is set.
                                                            ##    It allows early skipping the style if the property is not exists in the style at all.
                                                            ##    @param prop a style property
                                                            ##    @return the group [0..7] 7 means all the custom properties with index > 112
                                                            ## ```
proc lv_style_prop_lookup_flags*(prop: lv_style_prop_t): uint8 {.
    importc: "_lv_style_prop_lookup_flags", cdecl, implvglHdr.}
  ## ```
                                                               ##   Get the flags of a built-in or custom property.
                                                               ##   
                                                               ##    @param prop a style property
                                                               ##    @return the flags of the property
                                                               ## ```
proc lv_style_set_width*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_min_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_max_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_height*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_min_height*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_max_height*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_x*(style: ptr lv_style_t; value: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
proc lv_style_set_y*(style: ptr lv_style_t; value: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
proc lv_style_set_align*(style: ptr lv_style_t; value: lv_align_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_transform_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_transform_height*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_translate_x*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_translate_y*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_transform_zoom*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_transform_angle*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_transform_pivot_x*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_transform_pivot_y*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_pad_top*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_pad_bottom*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_pad_left*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_pad_right*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_pad_row*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_pad_column*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_margin_top*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_margin_bottom*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_margin_left*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_margin_right*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_color*(style: ptr lv_style_t; value: lv_color_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_bg_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_bg_grad_color*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_grad_dir*(style: ptr lv_style_t; value: lv_grad_dir_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_main_stop*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_grad_stop*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_grad*(style: ptr lv_style_t; value: ptr lv_grad_dsc_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_dither_mode*(style: ptr lv_style_t; value: lv_dither_mode_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_img_src*(style: ptr lv_style_t; value: pointer) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_bg_img_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_bg_img_recolor*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_img_recolor_opa*(style: ptr lv_style_t; value: lv_opa_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_bg_img_tiled*(style: ptr lv_style_t; value: bool) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_border_color*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_border_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_border_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_border_side*(style: ptr lv_style_t; value: lv_border_side_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_border_post*(style: ptr lv_style_t; value: bool) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_outline_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_outline_color*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_outline_opa*(style: ptr lv_style_t; value: lv_opa_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_outline_pad*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_shadow_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_shadow_ofs_x*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_shadow_ofs_y*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_shadow_spread*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_shadow_color*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_shadow_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_img_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_img_recolor*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_img_recolor_opa*(style: ptr lv_style_t; value: lv_opa_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_line_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_line_dash_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_line_dash_gap*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_line_rounded*(style: ptr lv_style_t; value: bool) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_line_color*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_line_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_arc_width*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_arc_rounded*(style: ptr lv_style_t; value: bool) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_arc_color*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_arc_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_arc_img_src*(style: ptr lv_style_t; value: pointer) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_text_color*(style: ptr lv_style_t; value: lv_color_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_text_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_text_font*(style: ptr lv_style_t; value: ptr lv_font_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_text_letter_space*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_text_line_space*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_text_decor*(style: ptr lv_style_t; value: lv_text_decor_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_text_align*(style: ptr lv_style_t; value: lv_text_align_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_radius*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_clip_corner*(style: ptr lv_style_t; value: bool) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_opa*(style: ptr lv_style_t; value: lv_opa_t) {.importc, cdecl,
    implvglHdr.}
proc lv_style_set_color_filter_dsc*(style: ptr lv_style_t;
                                    value: ptr lv_color_filter_dsc_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_color_filter_opa*(style: ptr lv_style_t; value: lv_opa_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_anim*(style: ptr lv_style_t; value: ptr lv_anim_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_anim_time*(style: ptr lv_style_t; value: uint32) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_anim_speed*(style: ptr lv_style_t; value: uint32) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_transition*(style: ptr lv_style_t;
                              value: ptr lv_style_transition_dsc_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_blend_mode*(style: ptr lv_style_t; value: lv_blend_mode_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_layout*(style: ptr lv_style_t; value: uint16) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_base_dir*(style: ptr lv_style_t; value: lv_base_dir_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_size*(style: ptr lv_style_t; width: lv_coord_t;
                        height: lv_coord_t) {.importc, cdecl, implvglHdr.}
proc lv_style_set_pad_all*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_pad_hor*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_pad_ver*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_set_pad_gap*(style: ptr lv_style_t; value: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_style_prop_has_flag*(prop: lv_style_prop_t; flag: uint8): bool {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   @brief Check if the style property has a specified behavioral flag.
                                ##   
                                ##    Do not pass multiple flags to this function as backwards-compatibility is not guaranteed
                                ##    for that.
                                ##   
                                ##    @param prop Property ID
                                ##    @param flag Flag
                                ##    @return true if the flag is set for this property
                                ## ```
proc lv_event_push*(e: ptr lv_event_t) {.importc: "_lv_event_push", cdecl,
    implvglHdr.}
proc lv_event_pop*(e: ptr lv_event_t) {.importc: "_lv_event_pop", cdecl,
                                        implvglHdr.}
proc lv_event_send*(list: ptr lv_event_list_t; e: ptr lv_event_t;
                    preprocess: bool): lv_res_t {.importc, cdecl, implvglHdr.}
proc lv_event_add*(list: ptr lv_event_list_t; cb: lv_event_cb_t;
                   filter: lv_event_code_t; user_data: pointer) {.importc,
    cdecl, implvglHdr.}
proc lv_event_get_count*(list: ptr lv_event_list_t): uint32 {.importc, cdecl,
    implvglHdr.}
proc lv_event_get_dsc*(list: ptr lv_event_list_t; index: uint32): ptr lv_event_dsc_t {.
    importc, cdecl, implvglHdr.}
proc lv_event_dsc_get_cb*(dsc: ptr lv_event_dsc_t): lv_event_cb_t {.importc,
    cdecl, implvglHdr.}
proc lv_event_dsc_get_user_data*(dsc: ptr lv_event_dsc_t): pointer {.importc,
    cdecl, implvglHdr.}
proc lv_event_remove*(list: ptr lv_event_list_t; index: uint32): bool {.importc,
    cdecl, implvglHdr.}
proc lv_event_get_target*(e: ptr lv_event_t): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the object originally targeted by the event. It's the same even if the event is bubbled.
                ##    @param e     pointer to the event descriptor
                ##    @return      the target of the event_code
                ## ```
proc lv_event_get_current_target*(e: ptr lv_event_t): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the current target of the event. It's the object which event handler being called.
                ##    If the event is not bubbled it's the same as "normal" target.
                ##    @param e     pointer to the event descriptor
                ##    @return      pointer to the current target of the event_code
                ## ```
proc lv_event_get_code*(e: ptr lv_event_t): lv_event_code_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the event code of an event
                ##    @param e     pointer to the event descriptor
                ##    @return      the event code. (E.g. LV_EVENT_CLICKED, LV_EVENT_FOCUSED, etc)
                ## ```
proc lv_event_get_param*(e: ptr lv_event_t): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the parameter passed when the event was sent
                ##    @param e     pointer to the event descriptor
                ##    @return      pointer to the parameter
                ## ```
proc lv_event_get_user_data*(e: ptr lv_event_t): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the user_data passed when the event was registered on the object
                ##    @param e     pointer to the event descriptor
                ##    @return      pointer to the user_data
                ## ```
proc lv_event_stop_bubbling*(e: ptr lv_event_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   Stop the event from bubbling.
                                                                              ##    This is only valid when called in the middle of an event processing chain.
                                                                              ##    @param e     pointer to the event descriptor
                                                                              ## ```
proc lv_event_stop_processing*(e: ptr lv_event_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Stop processing this event.
                                                                                ##    This is only valid when called in the middle of an event processing chain.
                                                                                ##    @param e     pointer to the event descriptor
                                                                                ## ```
proc lv_event_register_id*(): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                   ##   Register a new, custom event ID.
                                                                   ##    It can be used the same way as e.g. LV_EVENT_CLICKED to send custom events
                                                                   ##    @return      the new event id
                                                                   ##    @example
                                                                   ##    uint32_t LV_EVENT_MINE = 0;
                                                                   ##    ...
                                                                   ##    e = lv_event_register_id();
                                                                   ##    ...
                                                                   ##    lv_obj_send_event(obj, LV_EVENT_MINE, &some_data);
                                                                   ## ```
proc lv_event_mark_deleted*(target: pointer) {.
    importc: "_lv_event_mark_deleted", cdecl, implvglHdr.}
  ## ```
                                                          ##   Nested events can be called and one of them might belong to an object that is being deleted.
                                                          ##    Mark this object's event_temp_data deleted to know that its lv_obj_send_event should return LV_RES_INV
                                                          ##    @param target     pointer to an event target which was deleted
                                                          ## ```
proc lv_disp_create*(hor_res: lv_coord_t; ver_res: lv_coord_t): ptr lv_disp_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Create a new display with the given resolution
                                ##    @param hor_res   horizontal resolution in pixels
                                ##    @param ver_res   vertical resolution in pixels
                                ##    @return          pointer to a display object or NULL on error
                                ## ```
proc lv_disp_remove*(disp: ptr lv_disp_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Remove a display
                                                                        ##    @param disp      pointer to display
                                                                        ## ```
proc lv_disp_set_default*(disp: ptr lv_disp_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   Set a default display. The new screens will be created on it by default.
                                                                             ##    @param disp      pointer to a display
                                                                             ## ```
proc lv_disp_get_default*(): ptr lv_disp_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Get the default display
                                                                         ##    @return          pointer to the default display
                                                                         ## ```
proc lv_disp_get_next*(disp: ptr lv_disp_t): ptr lv_disp_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the next display.
                ##    @param disp      pointer to the current display. NULL to initialize.
                ##    @return          the next display or NULL if no more. Gives the first display when the parameter is NULL.
                ## ```
proc lv_disp_set_res*(disp: ptr lv_disp_t; hor_res: lv_coord_t;
                      ver_res: lv_coord_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   ---------------------
                                                                         ##    RESOLUTION
                                                                         ##   --------------------
                                                                         ##     
                                                                         ##    Sets the resolution of a display. LV_EVENT_RESOLUTION_CHANGED event will be sent.
                                                                         ##    Here the native resolution of the device should be set. If the display will be rotated later with
                                                                         ##    lv_disp_set_rotation LVGL will swap the hor. and ver. resolution automatically.
                                                                         ##    @param disp      pointer to a display
                                                                         ##    @param hor_res   the new horizontal resolution
                                                                         ##    @param ver_res   the new vertical resolution
                                                                         ## ```
proc lv_disp_set_physical_res*(disp: ptr lv_disp_t; hor_res: lv_coord_t;
                               ver_res: lv_coord_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   It's not mandatory to use the whole display for LVGL, however in some cases physical resolution is important.
                                                                                  ##    For example the touchpad still sees whole resolution and the values needs to be converted
                                                                                  ##    to the active LVGL display area.
                                                                                  ##    @param disp      pointer to a display
                                                                                  ##    @param hor_res   the new physical horizontal resolution, or -1 to assume it's the same as the normal hor. res.
                                                                                  ##    @param ver_res   the new physical vertical resolution, or -1 to assume it's the same as the normal hor. res.
                                                                                  ## ```
proc lv_disp_set_offset*(disp: ptr lv_disp_t; x: lv_coord_t; y: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   If physical resolution is not the same as the normal resolution
                                ##    the offset of the active display area can be set here.
                                ##    @param disp      pointer to a display
                                ##    @param x         X offset
                                ##    @param y         Y offset
                                ## ```
proc lv_disp_set_rotation*(disp: ptr lv_disp_t; rotation: lv_disp_rotation_t;
                           sw_rotate: bool) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   Set the rotation of this display. LVGL will swap the horizontal and vertical resolutions internally.
                                                                          ##    @param disp      pointer to a display (NULL to use the default display)
                                                                          ##    @param rotation  LV_DISP_ROTATION_0/90/180/270
                                                                          ##    @param sw_rotate true: make LVGL rotate the rendered image;
                                                                          ##                     false: the display driver should rotate the rendered image
                                                                          ## ```
proc lv_disp_set_dpi*(disp: ptr lv_disp_t; dpi: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the DPI (dot per inch) of the display.
                ##    dpi = sqrt(hor_res^2 + ver_res^2) / diagonal"
                ##    @param disp      pointer to a display
                ##    @param dpi       the new DPI
                ## ```
proc lv_disp_get_hor_res*(disp: ptr lv_disp_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the horizontal resolution of a display.
                ##    @param disp      pointer to a display (NULL to use the default display)
                ##    @return          the horizontal resolution of the display.
                ## ```
proc lv_disp_get_ver_res*(disp: ptr lv_disp_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the vertical resolution of a display
                ##    @param disp      pointer to a display (NULL to use the default display)
                ##    @return          the vertical resolution of the display
                ## ```
proc lv_disp_get_physical_hor_res*(disp: ptr lv_disp_t): lv_coord_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the physical horizontal resolution of a display
                       ##    @param disp      pointer to a display (NULL to use the default display)
                       ##    @return the      physical horizontal resolution of the display
                       ## ```
proc lv_disp_get_physical_ver_res*(disp: ptr lv_disp_t): lv_coord_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the physical vertical resolution of a display
                       ##    @param disp      pointer to a display (NULL to use the default display)
                       ##    @return          the physical vertical resolution of the display
                       ## ```
proc lv_disp_get_offset_x*(disp: ptr lv_disp_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the horizontal offset from the full / physical display
                ##    @param disp      pointer to a display (NULL to use the default display)
                ##    @return          the horizontal offset from the physical display
                ## ```
proc lv_disp_get_offset_y*(disp: ptr lv_disp_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the vertical offset from the full / physical display
                ##    @param disp      pointer to a display (NULL to use the default display)
                ##    @return          the horizontal offset from the physical display
                ## ```
proc lv_disp_get_rotation*(disp: ptr lv_disp_t): lv_disp_rotation_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the current rotation of this display.
                       ##    @param disp      pointer to a display (NULL to use the default display)
                       ##    @return          the current rotation
                       ## ```
proc lv_disp_get_dpi*(disp: ptr lv_disp_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the DPI of the display
                ##    @param disp      pointer to a display (NULL to use the default display)
                ##    @return          dpi of the display
                ## ```
proc lv_disp_set_draw_buffers*(disp: ptr lv_disp_t; buf1: pointer;
                               buf2: pointer; buf_size_byte: uint32;
                               render_mode: lv_disp_render_mode_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   ---------------------
                       ##    BUFFERING
                       ##   --------------------
                       ##     
                       ##    Set the buffers for a display
                       ##    @param disp              pointer to a display
                       ##    @param buf1              first buffer
                       ##    @param buf2              second buffer (can be NULL)
                       ##    @param buf_size_byte     size of the buffer in bytes
                       ##    @param render_mode       LV_DISP_RENDER_MODE_PARTIAL/DIRECT/FULL
                       ## ```
proc lv_disp_set_flush_cb*(disp: ptr lv_disp_t; flush_cb: lv_disp_flush_cb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the flush callback whcih will be called to copy the rendered image to the display.
                                ##    @param disp      pointer to a display
                                ##    @param flush_cb  the flush callback (px_map contains the rendered image as raw pixel map and it should be copied to area on the display)
                                ## ```
proc lv_disp_set_color_format*(disp: ptr lv_disp_t;
                               color_format: lv_color_format_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the color format of the display.
                       ##    If set to other than LV_COLOR_FORMAT_NATIVE the draw_ctx's buffer_convert function will be used
                       ##    to convert the rendered content to the desired color format.
                       ##    @param disp              pointer to a display
                       ##    @param color_format      By default LV_COLOR_FORMAT_NATIVE to render with L8, RGB565, RGB888 or ARGB8888.
                       ##                             LV_COLOR_FORMAT_NATIVE_REVERSE to change endianess.
                       ## ```
proc lv_disp_get_color_format*(disp: ptr lv_disp_t): lv_color_format_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the color format of the display
                                ##    @param disp              pointer to a display
                                ##    @return                  the color format
                                ## ```
proc lv_disp_set_antialiasing*(disp: ptr lv_disp_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Enable anti-aliasing for the render engine
                ##    @param disp      pointer to a display
                ##    @param en        true/false
                ## ```
proc lv_disp_get_antialiasing*(disp: ptr lv_disp_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_disp_flush_ready*(disp: ptr lv_disp_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   ! @cond Doxygen_Suppress
                                                                             ##     
                                                                             ##    Call from the display driver when the flushing is finished
                                                                             ##    @param disp      pointer to display whose flush_cb was called
                                                                             ## ```
proc lv_disp_flush_is_last*(disp: ptr lv_disp_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_disp_is_double_buffered*(disp: ptr lv_disp_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_disp_set_draw_ctx*(disp: ptr lv_disp_t; draw_ctx_init: proc (
    disp: ptr lv_disp_t; draw_ctx: ptr lv_draw_ctx_t) {.cdecl.}; draw_ctx_deinit: proc (
    disp: ptr lv_disp_t; draw_ctx: ptr lv_draw_ctx_t) {.cdecl.};
                           draw_ctx_size: uint) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   ---------------------
                                                                              ##    DRAW CONTEXT
                                                                              ##   --------------------
                                                                              ##     
                                                                              ##    Initialize a new draw context for the display
                                                                              ##    @param disp              pointer to a display
                                                                              ##    @param draw_ctx_init     init callback
                                                                              ##    @param draw_ctx_deinit   deinit callback
                                                                              ##    @param draw_ctx_size     size of the draw context instance
                                                                              ## ```
proc lv_disp_get_scr_act*(disp: ptr lv_disp_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   ---------------------
                ##    SCREENS
                ##   --------------------
                ##     
                ##    Return a pointer to the active screen on a display
                ##    @param disp      pointer to display which active screen should be get.
                ##                     (NULL to use the default screen)
                ##    @return          pointer to the active screen object (loaded by 'lv_scr_load()')
                ## ```
proc lv_disp_get_scr_prev*(disp: ptr lv_disp_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Return with a pointer to the previous screen. Only used during screen transitions.
                ##    @param disp      pointer to display which previous screen should be get.
                ##                     (NULL to use the default screen)
                ##    @return          pointer to the previous screen object or NULL if not used now
                ## ```
proc lv_disp_load_scr*(scr: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Make a screen active
                                                                        ##    @param scr       pointer to a screen
                                                                        ## ```
proc lv_disp_get_layer_top*(disp: ptr lv_disp_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Return the top layer. The top layer is the same on all screens and it is above the normal screen layer.
                ##    @param disp      pointer to display which top layer should be get. (NULL to use the default screen)
                ##    @return          pointer to the top layer object
                ## ```
proc lv_disp_get_layer_sys*(disp: ptr lv_disp_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Return the sys. layer. The system layer is the same on all screen and it is above the normal screen and the top layer.
                ##    @param disp      pointer to display which sys. layer should be retrieved. (NULL to use the default screen)
                ##    @return          pointer to the sys layer object
                ## ```
proc lv_disp_get_layer_bottom*(disp: ptr lv_disp_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Return the bottom layer. The bottom layer is the same on all screen and it is under the normal screen layer.
                       ##    It's visble only if the the screen is transparent.
                       ##    @param disp      pointer to display (NULL to use the default screen)
                       ##    @return          pointer to the bottom layer object
                       ## ```
proc lv_scr_load_anim*(scr: ptr lv_obj_t; anim_type: lv_scr_load_anim_t;
                       time: uint32; delay: uint32; auto_del: bool) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Switch screen with animation
                       ##    @param scr       pointer to the new screen to load
                       ##    @param anim_type type of the animation from lv_scr_load_anim_t, e.g. LV_SCR_LOAD_ANIM_MOVE_LEFT
                       ##    @param time      time of the animation
                       ##    @param delay     delay before the transition
                       ##    @param auto_del  true: automatically delete the old screen
                       ## ```
proc lv_scr_act*(): ptr lv_obj_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                               ##   Get the active screen of the default display
                                                               ##    @return          pointer to the active screen
                                                               ## ```
proc lv_layer_top*(): ptr lv_obj_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                 ##   Get the top layer  of the default display
                                                                 ##    @return          pointer to the top layer
                                                                 ## ```
proc lv_layer_sys*(): ptr lv_obj_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                 ##   Get the system layer  of the default display
                                                                 ##    @return          pointer to the sys layer
                                                                 ## ```
proc lv_layer_bottom*(): ptr lv_obj_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                    ##   Get the bottom layer  of the default display
                                                                    ##    @return          pointer to the bottom layer
                                                                    ## ```
proc lv_scr_load*(scr: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                   ##   Load a screen on the default display
                                                                   ##    @param scr       pointer to a screen
                                                                   ## ```
proc lv_disp_add_event*(disp: ptr lv_disp_t; event_cb: lv_event_cb_t;
                        filter: lv_event_code_t; user_data: pointer) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   ---------------------
                       ##    OTHERS
                       ##   --------------------
                       ##     
                       ##    Add an event handler to the display
                       ##    @param disp          pointer to a display
                       ##    @param event_cb      an event callback
                       ##    @param filter        event code to react or LV_EVENT_ALL
                       ##    @param user_data     optional user_data
                       ## ```
proc lv_disp_get_event_count*(disp: ptr lv_disp_t): uint32 {.importc, cdecl,
    implvglHdr.}
proc lv_disp_get_event_dsc*(disp: ptr lv_disp_t; index: uint32): ptr lv_event_dsc_t {.
    importc, cdecl, implvglHdr.}
proc lv_disp_remove_event*(disp: ptr lv_disp_t; index: uint32): bool {.importc,
    cdecl, implvglHdr.}
proc lv_disp_send_event*(disp: ptr lv_disp_t; code: lv_event_code_t;
                         user_data: pointer): lv_res_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Send amn event to a display
                ##    @param disp          pointer to a display
                ##    @param code          an event code. LV_EVENT_...
                ##    @param user_data     optional user_data
                ##    @return              LV_RES_OK: disp wasn't deleted in the event.
                ## ```
proc lv_disp_set_theme*(disp: ptr lv_disp_t; th: ptr lv_theme_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the theme of a display. If there are no user created widgets yet the screens' theme will be updated
                       ##    @param disp      pointer to a display
                       ##    @param th        pointer to a theme
                       ## ```
proc lv_disp_get_theme*(disp: ptr lv_disp_t): ptr lv_theme_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the theme of a display
                ##    @param disp      pointer to a display
                ##    @return          the display's theme (can be NULL)
                ## ```
proc lv_disp_get_inactive_time*(disp: ptr lv_disp_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get elapsed time since last user activity on a display (e.g. click)
                ##    @param disp      pointer to a display (NULL to get the overall smallest inactivity)
                ##    @return          elapsed ticks (milliseconds) since the last activity
                ## ```
proc lv_disp_trig_activity*(disp: ptr lv_disp_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Manually trigger an activity on a display
                                                                               ##    @param disp      pointer to a display (NULL to use the default display)
                                                                               ## ```
proc lv_disp_enable_invalidation*(disp: ptr lv_disp_t; en: bool) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Temporarily enable and disable the invalidation of the display.
                       ##    @param disp      pointer to a display (NULL to use the default display)
                       ##    @param en        true: enable invalidation; false: invalidation
                       ## ```
proc lv_disp_is_invalidation_enabled*(disp: ptr lv_disp_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_disp_get_refr_timer*(disp: ptr lv_disp_t): ptr lv_timer_t {.
    importc: "_lv_disp_get_refr_timer", cdecl, implvglHdr.}
  ## ```
                                                           ##   Get a pointer to the screen refresher timer to
                                                           ##    modify its parameters with lv_timer_... functions.
                                                           ##    @param disp      pointer to a display
                                                           ##    @return          pointer to the display refresher timer. (NULL on error)
                                                           ## ```
proc lv_disp_get_chroma_key_color*(disp: ptr lv_disp_t): lv_color_t {.importc,
    cdecl, implvglHdr.}
proc lv_disp_set_user_data*(disp: ptr lv_disp_t; user_data: pointer) {.importc,
    cdecl, implvglHdr.}
proc lv_disp_set_driver_data*(disp: ptr lv_disp_t; driver_data: pointer) {.
    importc, cdecl, implvglHdr.}
proc lv_disp_get_user_data*(disp: ptr lv_disp_t): pointer {.importc, cdecl,
    implvglHdr.}
proc lv_disp_get_driver_data*(disp: ptr lv_disp_t): pointer {.importc, cdecl,
    implvglHdr.}
proc lv_dpx*(n: lv_coord_t): lv_coord_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                      ##   Scale the given number of pixels (a distance or size) relative to a 160 DPI display
                                                                      ##    considering the DPI of the default display.
                                                                      ##    It ensures that e.g. lv_dpx(100) will have the same physical size regardless to the
                                                                      ##    DPI of the display.
                                                                      ##    @param n     the number of pixels to scale
                                                                      ##    @return      n x current_dpi/160
                                                                      ## ```
proc lv_disp_dpx*(disp: ptr lv_disp_t; n: lv_coord_t): lv_coord_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Scale the given number of pixels (a distance or size) relative to a 160 DPI display
                       ##    considering the DPI of the given display.
                       ##    It ensures that e.g. lv_dpx(100) will have the same physical size regardless to the
                       ##    DPI of the display.
                       ##    @param disp   a display whose dpi should be considered
                       ##    @param n     the number of pixels to scale
                       ##    @return      n x current_dpi/160
                       ## ```
proc lv_obj_del*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                  ##   *******************
                                                                  ##    GLOBAL PROTOTYPES
                                                                  ##   *******************
                                                                  ##     
                                                                  ##    Delete an object and all of its children.
                                                                  ##    Also remove the objects from their group and remove all animations (if any).
                                                                  ##    Send LV_EVENT_DELETED to deleted objects.
                                                                  ##    @param obj       pointer to an object
                                                                  ## ```
proc lv_obj_clean*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                    ##   Delete all children of an object.
                                                                    ##    Also remove the objects from their group and remove all animations (if any).
                                                                    ##    Send LV_EVENT_DELETED to deleted objects.
                                                                    ##    @param obj       pointer to an object
                                                                    ## ```
proc lv_obj_del_delayed*(obj: ptr lv_obj_t; delay_ms: uint32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Delete an object after some delay
                ##    @param obj       pointer to an object
                ##    @param delay_ms  time to wait before delete in milliseconds
                ## ```
proc lv_obj_del_anim_ready_cb*(a: ptr lv_anim_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   A function to be easily used in animation ready callback to delete an object when the animation is ready
                                                                               ##    @param a         pointer to the animation
                                                                               ## ```
proc lv_obj_del_async*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Helper function for asynchronously deleting objects.
                                                                        ##    Useful for cases where you can't delete an object directly in an LV_EVENT_DELETE handler (i.e. parent).
                                                                        ##    @param obj       object to delete
                                                                        ##    @see lv_async_call
                                                                        ## ```
proc lv_obj_set_parent*(obj: ptr lv_obj_t; parent: ptr lv_obj_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Move the parent of an object. The relative coordinates will be kept.
                       ##   
                       ##    @param obj       pointer to an object whose parent needs to be changed
                       ##    @param parent pointer to the new parent
                       ## ```
proc lv_obj_swap*(obj1: ptr lv_obj_t; obj2: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Swap the positions of two objects.
                ##    When used in listboxes, it can be used to sort the listbox items.
                ##    @param obj1  pointer to the first object
                ##    @param obj2  pointer to the second object
                ## ```
proc lv_obj_move_to_index*(obj: ptr lv_obj_t; index: int32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   moves the object to the given index in its parent.
                ##    When used in listboxes, it can be used to sort the listbox items.
                ##    @param obj  pointer to the object to be moved.
                ##    @param index  new index in parent. -1 to count from the back
                ##    @note to move to the background: lv_obj_move_to_index(obj, 0)
                ##    @note to move forward (up): lv_obj_move_to_index(obj, lv_obj_get_index(obj) - 1)
                ## ```
proc lv_obj_get_screen*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the screen of an object
                ##    @param obj       pointer to an object
                ##    @return          pointer to the object's screen
                ## ```
proc lv_obj_get_disp*(obj: ptr lv_obj_t): ptr lv_disp_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the display of the object
                ##    @param obj       pointer to an object
                ##    @return          pointer to the object's display
                ## ```
proc lv_obj_get_parent*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the parent of an object
                ##    @param obj       pointer to an object
                ##    @return          the parent of the object. (NULL if obj was a screen)
                ## ```
proc lv_obj_get_child*(obj: ptr lv_obj_t; id: int32): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the child of an object by the child's index.
                       ##    @param obj       pointer to an object whose child should be get
                       ##    @param id        the index of the child.
                       ##                     0: the oldest (firstly created) child
                       ##                     1: the second oldest
                       ##                     child count-1: the youngest
                       ##                     -1: the youngest
                       ##                     -2: the second youngest
                       ##    @return          pointer to the child or NULL if the index was invalid
                       ## ```
proc lv_obj_get_child_cnt*(obj: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the number of children
                ##    @param obj       pointer to an object
                ##    @return          the number of children
                ## ```
proc lv_obj_get_index*(obj: ptr lv_obj_t): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Get the index of a child.
                                                                                ##    @param obj       pointer to an object
                                                                                ##    @return          the child index of the object.
                                                                                ##                     E.g. 0: the oldest (firstly created child).
                                                                                ##                     (0xFFFFFFFF if child could not be found or no parent exists)
                                                                                ## ```
proc lv_obj_tree_walk*(start_obj: ptr lv_obj_t; cb: lv_obj_tree_walk_cb_t;
                       user_data: pointer) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Iterate through all children of any object.
                                                                         ##    @param start_obj     start integrating from this object
                                                                         ##    @param cb            call this callback on the objects
                                                                         ##    @param user_data     pointer to any user related data (will be passed to cb)
                                                                         ## ```
proc lv_obj_set_pos*(obj: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ##     
                       ##    Set the position of an object relative to the set alignment.
                       ##    @param obj       pointer to an object
                       ##    @param x         new x coordinate
                       ##    @param y         new y coordinate
                       ##    @note            With default alignment it's the distance from the top left corner
                       ##    @note            E.g. LV_ALIGN_CENTER alignment it's the offset from the center of the parent
                       ##    @note            The position is interpreted on the content area of the parent
                       ##    @note            The values can be set in pixel or in percentage of parent size with lv_pct(v)
                       ## ```
proc lv_obj_set_x*(obj: ptr lv_obj_t; x: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the x coordinate of an object
                ##    @param obj       pointer to an object
                ##    @param x         new x coordinate
                ##    @note            With default alignment it's the distance from the top left corner
                ##    @note            E.g. LV_ALIGN_CENTER alignment it's the offset from the center of the parent
                ##    @note            The position is interpreted on the content area of the parent
                ##    @note            The values can be set in pixel or in percentage of parent size with lv_pct(v)
                ## ```
proc lv_obj_set_y*(obj: ptr lv_obj_t; y: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the y coordinate of an object
                ##    @param obj       pointer to an object
                ##    @param y         new y coordinate
                ##    @note            With default alignment it's the distance from the top left corner
                ##    @note            E.g. LV_ALIGN_CENTER alignment it's the offset from the center of the parent
                ##    @note            The position is interpreted on the content area of the parent
                ##    @note            The values can be set in pixel or in percentage of parent size with lv_pct(v)
                ## ```
proc lv_obj_set_size*(obj: ptr lv_obj_t; w: lv_coord_t; h: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the size of an object.
                                ##    @param obj       pointer to an object
                                ##    @param w         the new width
                                ##    @param h         the new height
                                ##    @note            possible values are:
                                ##                     pixel               simple set the size accordingly
                                ##                     LV_SIZE_CONTENT     set the size to involve all children in the given direction
                                ##                     LV_SIZE_PCT(x)     to set size in percentage of the parent's content area size (the size without paddings).
                                ##                                         x should be in [0..1000]% range
                                ## ```
proc lv_obj_refr_size*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_obj_set_width*(obj: ptr lv_obj_t; w: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the width of an object
                ##    @param obj       pointer to an object
                ##    @param w         the new width
                ##    @note            possible values are:
                ##                     pixel               simple set the size accordingly
                ##                     LV_SIZE_CONTENT     set the size to involve all children in the given direction
                ##                     lv_pct(x)           to set size in percentage of the parent's content area size (the size without paddings).
                ##                                         x should be in [0..1000]% range
                ## ```
proc lv_obj_set_height*(obj: ptr lv_obj_t; h: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the height of an object
                ##    @param obj       pointer to an object
                ##    @param h         the new height
                ##    @note            possible values are:
                ##                     pixel               simple set the size accordingly
                ##                     LV_SIZE_CONTENT     set the size to involve all children in the given direction
                ##                     lv_pct(x)           to set size in percentage of the parent's content area size (the size without paddings).
                ##                                         x should be in [0..1000]% range
                ## ```
proc lv_obj_set_content_width*(obj: ptr lv_obj_t; w: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the width reduced by the left and right padding and the border width.
                       ##    @param obj       pointer to an object
                       ##    @param w         the width without paddings in pixels
                       ## ```
proc lv_obj_set_content_height*(obj: ptr lv_obj_t; h: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the height reduced by the top and bottom padding and the border width.
                       ##    @param obj       pointer to an object
                       ##    @param h         the height without paddings in pixels
                       ## ```
proc lv_obj_set_layout*(obj: ptr lv_obj_t; layout: uint32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set a layout for an object
                ##    @param obj       pointer to an object
                ##    @param layout    pointer to a layout descriptor to set
                ## ```
proc lv_obj_is_layout_positioned*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_obj_mark_layout_as_dirty*(obj: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Mark the object for layout update.
                ##    @param obj      pointer to an object whose children needs to be updated
                ## ```
proc lv_obj_update_layout*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Update the layout of an object.
                                                                            ##    @param obj      pointer to an object whose children needs to be updated
                                                                            ## ```
proc lv_layout_register*(cb: lv_layout_update_cb_t; user_data: pointer): uint32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Register a new layout
                                ##    @param cb        the layout update callback
                                ##    @param user_data custom data that will be passed to cb
                                ##    @return          the ID of the new layout
                                ## ```
proc lv_obj_set_align*(obj: ptr lv_obj_t; align: lv_align_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Change the alignment of an object.
                ##    @param obj       pointer to an object to align
                ##    @param align     type of alignment (see 'lv_align_t' enum) LV_ALIGN_OUT_... can't be used.
                ## ```
proc lv_obj_align*(obj: ptr lv_obj_t; align: lv_align_t; x_ofs: lv_coord_t;
                   y_ofs: lv_coord_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                    ##   Change the alignment of an object and set new coordinates.
                                                                    ##    Equivalent to:
                                                                    ##    lv_obj_set_align(obj, align);
                                                                    ##    lv_obj_set_pos(obj, x_ofs, y_ofs);
                                                                    ##    @param obj       pointer to an object to align
                                                                    ##    @param align     type of alignment (see 'lv_align_t' enum) LV_ALIGN_OUT_... can't be used.
                                                                    ##    @param x_ofs     x coordinate offset after alignment
                                                                    ##    @param y_ofs     y coordinate offset after alignment
                                                                    ## ```
proc lv_obj_align_to*(obj: ptr lv_obj_t; base: ptr lv_obj_t; align: lv_align_t;
                      x_ofs: lv_coord_t; y_ofs: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Align an object to an other object.
                ##    @param obj       pointer to an object to align
                ##    @param base      pointer to an other object (if NULL objs parent is used). 'obj' will be aligned to it.
                ##    @param align     type of alignment (see 'lv_align_t' enum)
                ##    @param x_ofs     x coordinate offset after alignment
                ##    @param y_ofs     y coordinate offset after alignment
                ##    @note            if the position or size of base changes obj needs to be aligned manually again
                ## ```
proc lv_obj_center*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                     ##   Align an object to the center on its parent.
                                                                     ##    @param obj       pointer to an object to align
                                                                     ##    @note            if the parent size changes obj needs to be aligned manually again
                                                                     ## ```
proc lv_obj_get_coords*(obj: ptr lv_obj_t; coords: ptr lv_area_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Copy the coordinates of an object to an area
                       ##    @param obj       pointer to an object
                       ##    @param coords    pointer to an area to store the coordinates
                       ## ```
proc lv_obj_get_x*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Get the x coordinate of object.
                                                                                ##    @param obj       pointer to an object
                                                                                ##    @return          distance of obj from the left side of its parent plus the parent's left padding
                                                                                ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                                                                                ##                     call lv_obj_update_layout(obj).
                                                                                ##    @note            Zero return value means the object is on the left padding of the parent, and not on the left edge.
                                                                                ##    @note            Scrolling of the parent doesn't change the returned value.
                                                                                ##    @note            The returned value is always the distance from the parent even if obj is positioned by a layout.
                                                                                ## ```
proc lv_obj_get_x2*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Get the x2 coordinate of object.
                                                                                 ##    @param obj       pointer to an object
                                                                                 ##    @return          distance of obj from the right side of its parent plus the parent's right padding
                                                                                 ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                                                                                 ##                     call lv_obj_update_layout(obj).
                                                                                 ##    @note            Zero return value means the object is on the right padding of the parent, and not on the right edge.
                                                                                 ##    @note            Scrolling of the parent doesn't change the returned value.
                                                                                 ##    @note            The returned value is always the distance from the parent even if obj is positioned by a layout.
                                                                                 ## ```
proc lv_obj_get_y*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Get the y coordinate of object.
                                                                                ##    @param obj       pointer to an object
                                                                                ##    @return          distance of obj from the top side of its parent plus the parent's top padding
                                                                                ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                                                                                ##                     call lv_obj_update_layout(obj).
                                                                                ##    @note            Zero return value means the object is on the top padding of the parent, and not on the top edge.
                                                                                ##    @note            Scrolling of the parent doesn't change the returned value.
                                                                                ##    @note            The returned value is always the distance from the parent even if obj is positioned by a layout.
                                                                                ## ```
proc lv_obj_get_y2*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Get the y2 coordinate of object.
                                                                                 ##    @param obj       pointer to an object
                                                                                 ##    @return          distance of obj from the bottom side of its parent plus the parent's bottom padding
                                                                                 ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                                                                                 ##                     call lv_obj_update_layout(obj).
                                                                                 ##    @note            Zero return value means the object is on the bottom padding of the parent, and not on the bottom edge.
                                                                                 ##    @note            Scrolling of the parent doesn't change the returned value.
                                                                                 ##    @note            The returned value is always the distance from the parent even if obj is positioned by a layout.
                                                                                 ## ```
proc lv_obj_get_x_aligned*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the actually set x coordinate of object, i.e. the offset form the set alignment
                ##    @param obj       pointer to an object
                ##    @return          the set x coordinate
                ## ```
proc lv_obj_get_y_aligned*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the actually set y coordinate of object, i.e. the offset form the set alignment
                ##    @param obj       pointer to an object
                ##    @return          the set y coordinate
                ## ```
proc lv_obj_get_width*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the width of an object
                ##    @param obj       pointer to an object
                ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                ##                     call lv_obj_update_layout(obj).
                ##    @return          the width in pixels
                ## ```
proc lv_obj_get_height*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the height of an object
                ##    @param obj       pointer to an object
                ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                ##                     call lv_obj_update_layout(obj).
                ##    @return          the height in pixels
                ## ```
proc lv_obj_get_content_width*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the width reduced by the left and right padding and the border width.
                ##    @param obj       pointer to an object
                ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                ##                     call lv_obj_update_layout(obj).
                ##    @return          the width which still fits into its parent without causing overflow (making the parent scrollable)
                ## ```
proc lv_obj_get_content_height*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the height reduced by the top and bottom padding and the border width.
                ##    @param obj       pointer to an object
                ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                ##                     call lv_obj_update_layout(obj).
                ##    @return          the height which still fits into the parent without causing overflow (making the parent scrollable)
                ## ```
proc lv_obj_get_content_coords*(obj: ptr lv_obj_t; area: ptr lv_area_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the area reduced by the paddings and the border width.
                                ##    @param obj       pointer to an object
                                ##    @note            The position of the object is recalculated only on the next redraw. To force coordinate recalculation
                                ##                     call lv_obj_update_layout(obj).
                                ##    @param area      the area which still fits into the parent without causing overflow (making the parent scrollable)
                                ## ```
proc lv_obj_get_self_width*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the width occupied by the "parts" of the widget. E.g. the width of all columns of a table.
                ##    @param obj       pointer to an objects
                ##    @return          the width of the virtually drawn content
                ##    @note            This size independent from the real size of the widget.
                ##                     It just tells how large the internal ("virtual") content is.
                ## ```
proc lv_obj_get_self_height*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the height occupied by the "parts" of the widget. E.g. the height of all rows of a table.
                ##    @param obj       pointer to an objects
                ##    @return          the width of the virtually drawn content
                ##    @note            This size independent from the real size of the widget.
                ##                     It just tells how large the internal ("virtual") content is.
                ## ```
proc lv_obj_refresh_self_size*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_obj_refr_pos*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_move_to*(obj: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_move_children_by*(obj: ptr lv_obj_t; x_diff: lv_coord_t;
                              y_diff: lv_coord_t; ignore_floating: bool) {.
    importc, cdecl, implvglHdr.}
proc lv_obj_transform_point*(obj: ptr lv_obj_t; p: ptr lv_point_t;
                             recursive: bool; inv: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Transform a point using the angle and zoom style properties of an object
                ##    @param obj           pointer to an object whose style properties should be used
                ##    @param p             a point to transform, the result will be written back here too
                ##    @param recursive     consider the transformation properties of the parents too
                ##    @param inv           do the inverse of the transformation (-angle and 1/zoom)
                ## ```
proc lv_obj_get_transformed_area*(obj: ptr lv_obj_t; area: ptr lv_area_t;
                                  recursive: bool; inv: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Transform an area using the angle and zoom style properties of an object
                ##    @param obj           pointer to an object whose style properties should be used
                ##    @param area          an area to transform, the result will be written back here too
                ##    @param recursive     consider the transformation properties of the parents too
                ##    @param inv           do the inverse of the transformation (-angle and 1/zoom)
                ## ```
proc lv_obj_invalidate_area*(obj: ptr lv_obj_t; area: ptr lv_area_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Mark an area of an object as invalid.
                       ##    The area will be truncated to the object's area and marked for redraw.
                       ##    @param obj       pointer to an object
                       ##    @param           area the area to redraw
                       ## ```
proc lv_obj_invalidate*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Mark the object as invalid to redrawn its area
                                                                         ##    @param obj       pointer to an object
                                                                         ## ```
proc lv_obj_area_is_visible*(obj: ptr lv_obj_t; area: ptr lv_area_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_is_visible*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_obj_set_ext_click_area*(obj: ptr lv_obj_t; size: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the size of an extended clickable area
                       ##    @param obj       pointer to an object
                       ##    @param size      extended clickable area in all 4 directions [px]
                       ## ```
proc lv_obj_get_click_area*(obj: ptr lv_obj_t; area: ptr lv_area_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the an area where to object can be clicked.
                       ##    It's the object's normal area plus the extended click area.
                       ##    @param obj       pointer to an object
                       ##    @param area      store the result area here
                       ## ```
proc lv_obj_hit_test*(obj: ptr lv_obj_t; point: ptr lv_point_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_clamp_width*(width: lv_coord_t; min_width: lv_coord_t;
                     max_width: lv_coord_t; ref_width: lv_coord_t): lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Clamp a width between min and max width. If the min/max width is in percentage value use the ref_width
                                ##    @param width         width to clamp
                                ##    @param min_width     the minimal width
                                ##    @param max_width     the maximal width
                                ##    @param ref_width     the reference width used when min/max width is in percentage
                                ##    @return              the clamped width
                                ## ```
proc lv_clamp_height*(height: lv_coord_t; min_height: lv_coord_t;
                      max_height: lv_coord_t; ref_height: lv_coord_t): lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Clamp a height between min and max height. If the min/max height is in percentage value use the ref_height
                                ##    @param height         height to clamp
                                ##    @param min_height     the minimal height
                                ##    @param max_height     the maximal height
                                ##    @param ref_height     the reference height used when min/max height is in percentage
                                ##    @return              the clamped height
                                ## ```
proc lv_obj_set_scrollbar_mode*(obj: ptr lv_obj_t; mode: lv_scrollbar_mode_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     =====================
                                ##    Setter functions
                                ##   ====================
                                ##     
                                ##    Set how the scrollbars should behave.
                                ##    @param obj       pointer to an object
                                ##    @param mode      LV_SCROLL_MODE_ON/OFF/AUTO/ACTIVE
                                ## ```
proc lv_obj_set_scroll_dir*(obj: ptr lv_obj_t; dir: lv_dir_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the object in which directions can be scrolled
                ##    @param obj       pointer to an object
                ##    @param dir       the allow scroll directions. An element or OR-ed values of lv_dir_t
                ## ```
proc lv_obj_set_scroll_snap_x*(obj: ptr lv_obj_t; align: lv_scroll_snap_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set where to snap the children when scrolling ends horizontally
                                ##    @param obj       pointer to an object
                                ##    @param align     the snap align to set from lv_scroll_snap_t
                                ## ```
proc lv_obj_set_scroll_snap_y*(obj: ptr lv_obj_t; align: lv_scroll_snap_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set where to snap the children when scrolling ends vertically
                                ##    @param obj       pointer to an object
                                ##    @param align     the snap align to set from lv_scroll_snap_t
                                ## ```
proc lv_obj_get_scrollbar_mode*(obj: ptr lv_obj_t): lv_scrollbar_mode_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Getter functions
                                ##   ====================
                                ##     
                                ##    Get the current scroll mode (when to hide the scrollbars)
                                ##    @param obj       pointer to an object
                                ##    @return          the current scroll mode from lv_scrollbar_mode_t
                                ## ```
proc lv_obj_get_scroll_dir*(obj: ptr lv_obj_t): lv_dir_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the object in which directions can be scrolled
                ##    @param obj       pointer to an object
                ##    @param dir       the allow scroll directions. An element or OR-ed values of lv_dir_t
                ## ```
proc lv_obj_get_scroll_snap_x*(obj: ptr lv_obj_t): lv_scroll_snap_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get where to snap the children when scrolling ends horizontally
                       ##    @param obj       pointer to an object
                       ##    @return          the current snap align from lv_scroll_snap_t
                       ## ```
proc lv_obj_get_scroll_snap_y*(obj: ptr lv_obj_t): lv_scroll_snap_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get where to snap the children when scrolling ends vertically
                       ##    @param  obj      pointer to an object
                       ##    @return          the current snap align from lv_scroll_snap_t
                       ## ```
proc lv_obj_get_scroll_x*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get current X scroll position.
                ##    @param obj       pointer to an object
                ##    @return          the current scroll position from the left edge.
                ##                     If the object is not scrolled return 0
                ##                     If scrolled return > 0
                ##                     If scrolled in (elastic scroll) return < 0
                ## ```
proc lv_obj_get_scroll_y*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get current Y scroll position.
                ##    @param obj       pointer to an object
                ##    @return          the current scroll position from the top edge.
                ##                     If the object is not scrolled return 0
                ##                     If scrolled return > 0
                ##                     If scrolled inside return < 0
                ## ```
proc lv_obj_get_scroll_top*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Return the height of the area above the object.
                ##    That is the number of pixels the object can be scrolled down.
                ##    Normally positive but can be negative when scrolled inside.
                ##    @param obj       pointer to an object
                ##    @return          the scrollable area above the object in pixels
                ## ```
proc lv_obj_get_scroll_bottom*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Return the height of the area below the object.
                ##    That is the number of pixels the object can be scrolled down.
                ##    Normally positive but can be negative when scrolled inside.
                ##    @param obj       pointer to an object
                ##    @return          the scrollable area below the object in pixels
                ## ```
proc lv_obj_get_scroll_left*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Return the width of the area on the left the object.
                ##    That is the number of pixels the object can be scrolled down.
                ##    Normally positive but can be negative when scrolled inside.
                ##    @param obj       pointer to an object
                ##    @return          the scrollable area on the left the object in pixels
                ## ```
proc lv_obj_get_scroll_right*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Return the width of the area on the right the object.
                ##    That is the number of pixels the object can be scrolled down.
                ##    Normally positive but can be negative when scrolled inside.
                ##    @param obj       pointer to an object
                ##    @return          the scrollable area on the right the object in pixels
                ## ```
proc lv_obj_get_scroll_end*(obj: ptr lv_obj_t; `end`: ptr lv_point_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the X and Y coordinates where the scrolling will end for this object if a scrolling animation is in progress.
                       ##    If no scrolling animation, give the current x or y scroll position.
                       ##    @param obj       pointer to an object
                       ##    @param end       pointer to store the result
                       ## ```
proc lv_obj_scroll_by*(obj: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t;
                       anim_en: lv_anim_enable_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   =====================
                                                                                ##    Other functions
                                                                                ##   ====================
                                                                                ##     
                                                                                ##    Scroll by a given amount of pixels
                                                                                ##    @param obj       pointer to an object to scroll
                                                                                ##    @param x         pixels to scroll horizontally
                                                                                ##    @param y         pixels to scroll vertically
                                                                                ##    @param anim_en   LV_ANIM_ON: scroll with animation; LV_ANIM_OFF: scroll immediately
                                                                                ##    @note            > 0 value means scroll right/bottom (show the more content on the right/bottom)
                                                                                ##    @note            e.g. dy = -20 means scroll down 20 px
                                                                                ## ```
proc lv_obj_scroll_by_bounded*(obj: ptr lv_obj_t; dx: lv_coord_t;
                               dy: lv_coord_t; anim_en: lv_anim_enable_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Scroll by a given amount of pixels.
                                ##    dx and dy will be limited internally to allow scrolling only on the content area.
                                ##    @param obj       pointer to an object to scroll
                                ##    @param dx        pixels to scroll horizontally
                                ##    @param dy        pixels to scroll vertically
                                ##    @param anim_en   LV_ANIM_ON: scroll with animation; LV_ANIM_OFF: scroll immediately
                                ##    @note            e.g. dy = -20 means scroll down 20 px
                                ## ```
proc lv_obj_scroll_to*(obj: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t;
                       anim_en: lv_anim_enable_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Scroll to a given coordinate on an object.
                                                                                ##    x and y will be limited internally to allow scrolling only on the content area.
                                                                                ##    @param obj       pointer to an object to scroll
                                                                                ##    @param x         pixels to scroll horizontally
                                                                                ##    @param y         pixels to scroll vertically
                                                                                ##    @param anim_en   LV_ANIM_ON: scroll with animation; LV_ANIM_OFF: scroll immediately
                                                                                ## ```
proc lv_obj_scroll_to_x*(obj: ptr lv_obj_t; x: lv_coord_t;
                         anim_en: lv_anim_enable_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Scroll to a given X coordinate on an object.
                                                                                  ##    x will be limited internally to allow scrolling only on the content area.
                                                                                  ##    @param obj       pointer to an object to scroll
                                                                                  ##    @param x         pixels to scroll horizontally
                                                                                  ##    @param anim_en   LV_ANIM_ON: scroll with animation; LV_ANIM_OFF: scroll immediately
                                                                                  ## ```
proc lv_obj_scroll_to_y*(obj: ptr lv_obj_t; y: lv_coord_t;
                         anim_en: lv_anim_enable_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Scroll to a given Y coordinate on an object
                                                                                  ##    y will be limited internally to allow scrolling only on the content area.
                                                                                  ##    @param obj       pointer to an object to scroll
                                                                                  ##    @param y         pixels to scroll vertically
                                                                                  ##    @param anim_en   LV_ANIM_ON: scroll with animation; LV_ANIM_OFF: scroll immediately
                                                                                  ## ```
proc lv_obj_scroll_to_view*(obj: ptr lv_obj_t; anim_en: lv_anim_enable_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Scroll to an object until it becomes visible on its parent
                                ##    @param obj       pointer to an object to scroll into view
                                ##    @param anim_en   LV_ANIM_ON: scroll with animation; LV_ANIM_OFF: scroll immediately
                                ## ```
proc lv_obj_scroll_to_view_recursive*(obj: ptr lv_obj_t;
                                      anim_en: lv_anim_enable_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Scroll to an object until it becomes visible on its parent.
                       ##    Do the same on the parent's parent, and so on.
                       ##    Therefore the object will be scrolled into view even it has nested scrollable parents
                       ##    @param obj       pointer to an object to scroll into view
                       ##    @param anim_en   LV_ANIM_ON: scroll with animation; LV_ANIM_OFF: scroll immediately
                       ## ```
proc lv_obj_scroll_by_raw*(obj: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t): lv_res_t {.
    importc: "_lv_obj_scroll_by_raw", cdecl, implvglHdr.}
  ## ```
                                                         ##   Low level function to scroll by given x and y coordinates.
                                                         ##    LV_EVENT_SCROLL is sent.
                                                         ##    @param obj       pointer to an object to scroll
                                                         ##    @param x         pixels to scroll horizontally
                                                         ##    @param y         pixels to scroll vertically
                                                         ##    @return          LV_RES_INV: to object was deleted in LV_EVENT_SCROLL;
                                                         ##                     LV_RES_OK: if the object is still valid
                                                         ## ```
proc lv_obj_is_scrolling*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_obj_update_snap*(obj: ptr lv_obj_t; anim_en: lv_anim_enable_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Check the children of obj and scroll obj to fulfill the scroll_snap settings
                                ##    @param obj       an object whose children needs to checked and snapped
                                ##    @param anim_en   LV_ANIM_ON/OFF
                                ## ```
proc lv_obj_get_scrollbar_area*(obj: ptr lv_obj_t; hor: ptr lv_area_t;
                                ver: ptr lv_area_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Get the area of the scrollbars
                                                                                  ##    @param obj   pointer to an object
                                                                                  ##    @param hor   pointer to store the area of the horizontal scrollbar
                                                                                  ##    @param ver   pointer to store the area of the vertical  scrollbar
                                                                                  ## ```
proc lv_obj_scrollbar_invalidate*(obj: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Invalidate the area of the scrollbars
                ##    @param obj       pointer to an object
                ## ```
proc lv_obj_readjust_scroll*(obj: ptr lv_obj_t; anim_en: lv_anim_enable_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Checked if the content is scrolled "in" and adjusts it to a normal position.
                                ##    @param obj       pointer to an object
                                ##    @param anim_en   LV_ANIM_ON/OFF
                                ## ```
proc lv_obj_style_init*() {.importc: "_lv_obj_style_init", cdecl, implvglHdr.}
  ## ```
                                                                              ##   *******************
                                                                              ##    GLOBAL PROTOTYPES
                                                                              ##   *******************
                                                                              ##     
                                                                              ##    Initialize the object related style manager module.
                                                                              ##    Called by LVGL in lv_init()
                                                                              ## ```
proc lv_obj_add_style*(obj: ptr lv_obj_t; style: ptr lv_style_t;
                       selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Add a style to an object.
                ##    @param obj       pointer to an object
                ##    @param style     pointer to a style to add
                ##    @param selector  OR-ed value of parts and state to which the style should be added
                ##    @example         lv_obj_add_style(btn, &style_btn, 0); Default button style
                ##    @example         lv_obj_add_style(btn, &btn_red, LV_STATE_PRESSED); Overwrite only some colors to red when pressed
                ## ```
proc lv_obj_replace_style*(obj: ptr lv_obj_t; old_style: ptr lv_style_t;
                           new_style: ptr lv_style_t;
                           selector: lv_style_selector_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_obj_remove_style*(obj: ptr lv_obj_t; style: ptr lv_style_t;
                          selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Add a style to an object.
                ##    @param obj       pointer to an object
                ##    @param style     pointer to a style to remove. Can be NULL to check only the selector
                ##    @param selector  OR-ed values of states and a part to remove only styles with matching selectors. LV_STATE_ANY and LV_PART_ANY can be used
                ##    @example lv_obj_remove_style(obj, &style, LV_PART_ANY | LV_STATE_ANY); Remove a specific style
                ##    @example lv_obj_remove_style(obj, NULL, LV_PART_MAIN | LV_STATE_ANY); Remove all styles from the main part
                ##    @example lv_obj_remove_style(obj, NULL, LV_PART_ANY | LV_STATE_ANY); Remove all styles
                ## ```
proc lv_obj_remove_style_all*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Remove all styles from an object
                                                                               ##    @param obj       pointer to an object
                                                                               ## ```
proc lv_obj_report_style_change*(style: ptr lv_style_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Notify all object if a style is modified
                ##    @param style     pointer to a style. Only the objects with this style will be notified
                ##                     (NULL to notify all objects)
                ## ```
proc lv_obj_refresh_style*(obj: ptr lv_obj_t; part: lv_part_t;
                           prop: lv_style_prop_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Notify an object and its children about its style is modified.
                                                                                ##    @param obj       pointer to an object
                                                                                ##    @param part      the part whose style was changed. E.g. LV_PART_ANY, LV_PART_MAIN
                                                                                ##    @param prop      LV_STYLE_PROP_ANY or an LV_STYLE_... property.
                                                                                ##                     It is used to optimize what needs to be refreshed.
                                                                                ##                     LV_STYLE_PROP_INV to perform only a style cache update
                                                                                ## ```
proc lv_obj_enable_style_refresh*(en: bool) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   Enable or disable automatic style refreshing when a new style is added/removed to/from an object
                                                                          ##    or any other style change happens.
                                                                          ##    @param en        true: enable refreshing; false: disable refreshing
                                                                          ## ```
proc lv_obj_get_style_prop*(obj: ptr lv_obj_t; part: lv_part_t;
                            prop: lv_style_prop_t): lv_style_value_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the value of a style property. The current state of the object will be considered.
                       ##    Inherited properties will be inherited.
                       ##    If a property is not set a default value will be returned.
                       ##    @param obj       pointer to an object
                       ##    @param part      a part from which the property should be get
                       ##    @param prop      the property to get
                       ##    @return          the value of the property.
                       ##                     Should be read from the correct field of the lv_style_value_t according to the type of the property.
                       ## ```
proc lv_obj_set_local_style_prop*(obj: ptr lv_obj_t; prop: lv_style_prop_t;
                                  value: lv_style_value_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set local style property on an object's part and state.
                       ##    @param obj       pointer to an object
                       ##    @param prop      the property
                       ##    @param value     value of the property. The correct element should be set according to the type of the property
                       ##    @param selector  OR-ed value of parts and state for which the style should be set
                       ## ```
proc lv_obj_set_local_style_prop_meta*(obj: ptr lv_obj_t; prop: lv_style_prop_t;
                                       meta: uint16;
                                       selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_get_local_style_prop*(obj: ptr lv_obj_t; prop: lv_style_prop_t;
                                  value: ptr lv_style_value_t;
                                  selector: lv_style_selector_t): lv_style_res_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_remove_local_style_prop*(obj: ptr lv_obj_t; prop: lv_style_prop_t;
                                     selector: lv_style_selector_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_style_apply_color_filter*(obj: ptr lv_obj_t; part: uint32;
                                      v: lv_style_value_t): lv_style_value_t {.
    importc: "_lv_obj_style_apply_color_filter", cdecl, implvglHdr.}
  ## ```
                                                                    ##   Used internally for color filtering
                                                                    ## ```
proc lv_obj_style_create_transition*(obj: ptr lv_obj_t; part: lv_part_t;
                                     prev_state: lv_state_t;
                                     new_state: lv_state_t;
                                     tr: ptr lv_obj_style_transition_dsc_t) {.
    importc: "_lv_obj_style_create_transition", cdecl, implvglHdr.}
  ## ```
                                                                   ##   Used internally to create a style transition
                                                                   ##    @param obj
                                                                   ##    @param part
                                                                   ##    @param prev_state
                                                                   ##    @param new_state
                                                                   ##    @param tr
                                                                   ## ```
proc lv_obj_style_state_compare*(obj: ptr lv_obj_t; state1: lv_state_t;
                                 state2: lv_state_t): lv_style_state_cmp_t {.
    importc: "_lv_obj_style_state_compare", cdecl, implvglHdr.}
  ## ```
                                                               ##   Used internally to compare the appearance of an object in 2 states
                                                               ##    @param obj
                                                               ##    @param state1
                                                               ##    @param state2
                                                               ##    @return
                                                               ## ```
proc lv_obj_fade_in*(obj: ptr lv_obj_t; time: uint32; delay: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Fade in an an object and all its children.
                       ##    @param obj       the object to fade in
                       ##    @param time      time of fade
                       ##    @param delay     delay to start the animation
                       ## ```
proc lv_obj_fade_out*(obj: ptr lv_obj_t; time: uint32; delay: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Fade out an an object and all its children.
                       ##    @param obj       the object to fade out
                       ##    @param time      time of fade
                       ##    @param delay     delay to start the animation
                       ## ```
proc lv_obj_style_get_selector_state*(selector: lv_style_selector_t): lv_state_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_style_get_selector_part*(selector: lv_style_selector_t): lv_part_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   @file lv_area.h
                                ##   
                                ##    
                                ##     
                                ##    @file lv_style.h
                                ##   
                                ##    
                                ##     
                                ##    @file lv_obj_style.h
                                ## ```
proc lv_obj_get_style_min_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_max_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_height*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_min_height*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_max_height*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_x*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.importc,
    cdecl, implvglHdr.}
proc lv_obj_get_style_y*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.importc,
    cdecl, implvglHdr.}
proc lv_obj_get_style_align*(obj: ptr lv_obj_t; part: uint32): lv_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_transform_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_transform_height*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_translate_x*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_translate_y*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_transform_zoom*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_transform_angle*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_transform_pivot_x*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_transform_pivot_y*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_pad_top*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_pad_bottom*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_pad_left*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_pad_right*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_pad_row*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_pad_column*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_margin_top*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_margin_bottom*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_margin_left*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_margin_right*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_color*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_color_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_grad_color*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_grad_color_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_grad_dir*(obj: ptr lv_obj_t; part: uint32): lv_grad_dir_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_main_stop*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_grad_stop*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_grad*(obj: ptr lv_obj_t; part: uint32): ptr lv_grad_dsc_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_dither_mode*(obj: ptr lv_obj_t; part: uint32): lv_dither_mode_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_img_src*(obj: ptr lv_obj_t; part: uint32): pointer {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_img_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_img_recolor*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_img_recolor_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_img_recolor_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_bg_img_tiled*(obj: ptr lv_obj_t; part: uint32): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_border_color*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_border_color_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_border_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_border_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_border_side*(obj: ptr lv_obj_t; part: uint32): lv_border_side_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_border_post*(obj: ptr lv_obj_t; part: uint32): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_outline_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_outline_color*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_outline_color_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_outline_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_outline_pad*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_shadow_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_shadow_ofs_x*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_shadow_ofs_y*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_shadow_spread*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_shadow_color*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_shadow_color_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_shadow_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_img_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_img_recolor*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_img_recolor_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_img_recolor_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_line_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_line_dash_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_line_dash_gap*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_line_rounded*(obj: ptr lv_obj_t; part: uint32): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_line_color*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_line_color_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_line_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_arc_width*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_arc_rounded*(obj: ptr lv_obj_t; part: uint32): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_arc_color*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_arc_color_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_arc_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_arc_img_src*(obj: ptr lv_obj_t; part: uint32): pointer {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_text_color*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_text_color_filtered*(obj: ptr lv_obj_t; part: uint32): lv_color_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_text_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_text_font*(obj: ptr lv_obj_t; part: uint32): ptr lv_font_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_text_letter_space*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_text_line_space*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_text_decor*(obj: ptr lv_obj_t; part: uint32): lv_text_decor_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_text_align*(obj: ptr lv_obj_t; part: uint32): lv_text_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_radius*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_clip_corner*(obj: ptr lv_obj_t; part: uint32): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.importc,
    cdecl, implvglHdr.}
proc lv_obj_get_style_color_filter_dsc*(obj: ptr lv_obj_t; part: uint32): ptr lv_color_filter_dsc_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_color_filter_opa*(obj: ptr lv_obj_t; part: uint32): lv_opa_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_anim*(obj: ptr lv_obj_t; part: uint32): ptr lv_anim_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_anim_time*(obj: ptr lv_obj_t; part: uint32): uint32 {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_anim_speed*(obj: ptr lv_obj_t; part: uint32): uint32 {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_transition*(obj: ptr lv_obj_t; part: uint32): ptr lv_style_transition_dsc_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_blend_mode*(obj: ptr lv_obj_t; part: uint32): lv_blend_mode_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_layout*(obj: ptr lv_obj_t; part: uint32): uint16 {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_base_dir*(obj: ptr lv_obj_t; part: uint32): lv_base_dir_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_set_style_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                             selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_min_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_max_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_height*(obj: ptr lv_obj_t; value: lv_coord_t;
                              selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_min_height*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_max_height*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_x*(obj: ptr lv_obj_t; value: lv_coord_t;
                         selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_y*(obj: ptr lv_obj_t; value: lv_coord_t;
                         selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_align*(obj: ptr lv_obj_t; value: lv_align_t;
                             selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_transform_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                       selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_transform_height*(obj: ptr lv_obj_t; value: lv_coord_t;
                                        selector: lv_style_selector_t) {.
    importc, cdecl, implvglHdr.}
proc lv_obj_set_style_translate_x*(obj: ptr lv_obj_t; value: lv_coord_t;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_translate_y*(obj: ptr lv_obj_t; value: lv_coord_t;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_transform_zoom*(obj: ptr lv_obj_t; value: lv_coord_t;
                                      selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_transform_angle*(obj: ptr lv_obj_t; value: lv_coord_t;
                                       selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_transform_pivot_x*(obj: ptr lv_obj_t; value: lv_coord_t;
    selector: lv_style_selector_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_set_style_transform_pivot_y*(obj: ptr lv_obj_t; value: lv_coord_t;
    selector: lv_style_selector_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_set_style_pad_top*(obj: ptr lv_obj_t; value: lv_coord_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_pad_bottom*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_pad_left*(obj: ptr lv_obj_t; value: lv_coord_t;
                                selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_pad_right*(obj: ptr lv_obj_t; value: lv_coord_t;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_pad_row*(obj: ptr lv_obj_t; value: lv_coord_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_pad_column*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_margin_top*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_margin_bottom*(obj: ptr lv_obj_t; value: lv_coord_t;
                                     selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_margin_left*(obj: ptr lv_obj_t; value: lv_coord_t;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_margin_right*(obj: ptr lv_obj_t; value: lv_coord_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_bg_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                              selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_bg_grad_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                     selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_grad_dir*(obj: ptr lv_obj_t; value: lv_grad_dir_t;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_main_stop*(obj: ptr lv_obj_t; value: lv_coord_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_grad_stop*(obj: ptr lv_obj_t; value: lv_coord_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_grad*(obj: ptr lv_obj_t; value: ptr lv_grad_dsc_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_bg_dither_mode*(obj: ptr lv_obj_t;
                                      value: lv_dither_mode_t;
                                      selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_img_src*(obj: ptr lv_obj_t; value: pointer;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_img_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_img_recolor*(obj: ptr lv_obj_t; value: lv_color_t;
                                      selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_bg_img_recolor_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
    selector: lv_style_selector_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_set_style_bg_img_tiled*(obj: ptr lv_obj_t; value: bool;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_border_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_border_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_border_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_border_side*(obj: ptr lv_obj_t; value: lv_border_side_t;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_border_post*(obj: ptr lv_obj_t; value: bool;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_outline_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                     selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_outline_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                     selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_outline_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_outline_pad*(obj: ptr lv_obj_t; value: lv_coord_t;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_shadow_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_shadow_ofs_x*(obj: ptr lv_obj_t; value: lv_coord_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_shadow_ofs_y*(obj: ptr lv_obj_t; value: lv_coord_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_shadow_spread*(obj: ptr lv_obj_t; value: lv_coord_t;
                                     selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_shadow_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_shadow_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_img_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_img_recolor*(obj: ptr lv_obj_t; value: lv_color_t;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_img_recolor_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                       selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_line_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_line_dash_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                       selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_line_dash_gap*(obj: ptr lv_obj_t; value: lv_coord_t;
                                     selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_line_rounded*(obj: ptr lv_obj_t; value: bool;
                                    selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_line_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_line_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_arc_width*(obj: ptr lv_obj_t; value: lv_coord_t;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_arc_rounded*(obj: ptr lv_obj_t; value: bool;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_arc_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_arc_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_arc_img_src*(obj: ptr lv_obj_t; value: pointer;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_text_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_text_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_text_font*(obj: ptr lv_obj_t; value: ptr lv_font_t;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_text_letter_space*(obj: ptr lv_obj_t; value: lv_coord_t;
    selector: lv_style_selector_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_set_style_text_line_space*(obj: ptr lv_obj_t; value: lv_coord_t;
                                       selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_text_decor*(obj: ptr lv_obj_t; value: lv_text_decor_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_text_align*(obj: ptr lv_obj_t; value: lv_text_align_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_radius*(obj: ptr lv_obj_t; value: lv_coord_t;
                              selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_clip_corner*(obj: ptr lv_obj_t; value: bool;
                                   selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                           selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_color_filter_dsc*(obj: ptr lv_obj_t;
                                        value: ptr lv_color_filter_dsc_t;
                                        selector: lv_style_selector_t) {.
    importc, cdecl, implvglHdr.}
proc lv_obj_set_style_color_filter_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                        selector: lv_style_selector_t) {.
    importc, cdecl, implvglHdr.}
proc lv_obj_set_style_anim*(obj: ptr lv_obj_t; value: ptr lv_anim_t;
                            selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_anim_time*(obj: ptr lv_obj_t; value: uint32;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_anim_speed*(obj: ptr lv_obj_t; value: uint32;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_transition*(obj: ptr lv_obj_t;
                                  value: ptr lv_style_transition_dsc_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_blend_mode*(obj: ptr lv_obj_t; value: lv_blend_mode_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_layout*(obj: ptr lv_obj_t; value: uint16;
                              selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_base_dir*(obj: ptr lv_obj_t; value: lv_base_dir_t;
                                selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_pad_all*(obj: ptr lv_obj_t; value: lv_coord_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_pad_hor*(obj: ptr lv_obj_t; value: lv_coord_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_pad_ver*(obj: ptr lv_obj_t; value: lv_coord_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_margin_all*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_margin_hor*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_margin_ver*(obj: ptr lv_obj_t; value: lv_coord_t;
                                  selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_pad_gap*(obj: ptr lv_obj_t; value: lv_coord_t;
                               selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_size*(obj: ptr lv_obj_t; width: lv_coord_t;
                            height: lv_coord_t; selector: lv_style_selector_t) {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_space_left*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_space_right*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_space_top*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_space_bottom*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_calculate_style_text_align*(obj: ptr lv_obj_t; part: lv_part_t;
                                        txt: cstring): lv_text_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_transform_zoom_safe*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_img_buf_set_palette*(dsc: ptr lv_img_dsc_t; id: uint8; c: lv_color32_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Set the palette color of an indexed image. Valid only for LV_IMG_CF_INDEXED1/2/4/8
                                ##    @param dsc pointer to an image descriptor
                                ##    @param id the palette color to set:
                                ##      - for LV_IMG_CF_INDEXED1: 0..1
                                ##      - for LV_IMG_CF_INDEXED2: 0..3
                                ##      - for LV_IMG_CF_INDEXED4: 0..15
                                ##      - for LV_IMG_CF_INDEXED8: 0..255
                                ##    @param c the color to set in lv_color32_t format
                                ## ```
proc lv_img_buf_free*(dsc: ptr lv_img_dsc_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Free an allocated image buffer
                                                                           ##    @param dsc image buffer to free
                                                                           ## ```
proc lv_img_buf_get_transformed_area*(res: ptr lv_area_t; w: lv_coord_t;
                                      h: lv_coord_t; angle: lv_coord_t;
                                      zoom: uint16; pivot: ptr lv_point_t) {.
    importc: "_lv_img_buf_get_transformed_area", cdecl, implvglHdr.}
  ## ```
                                                                    ##   Get the area of a rectangle if its rotated and scaled
                                                                    ##    @param res store the coordinates here
                                                                    ##    @param w width of the rectangle to transform
                                                                    ##    @param h height of the rectangle to transform
                                                                    ##    @param angle angle of rotation
                                                                    ##    @param zoom zoom, (256 no zoom)
                                                                    ##    @param pivot x,y pivot coordinates of rotation
                                                                    ## ```
proc lv_fs_init*() {.importc: "_lv_fs_init", cdecl, implvglHdr.}
  ## ```
                                                                ##   *******************
                                                                ##    GLOBAL PROTOTYPES
                                                                ##   *******************
                                                                ##     
                                                                ##    Initialize the File system interface
                                                                ## ```
proc lv_fs_drv_init*(drv: ptr lv_fs_drv_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Initialize a file system driver with default values.
                                                                         ##    It is used to ensure all fields have known values and not memory junk.
                                                                         ##    After it you can set the fields.
                                                                         ##    @param drv     pointer to driver variable to initialize
                                                                         ## ```
proc lv_fs_drv_register*(drv: ptr lv_fs_drv_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   Add a new drive
                                                                             ##    @param drv       pointer to an lv_fs_drv_t structure which is inited with the
                                                                             ##                     corresponding function pointers. Only pointer is saved, so the
                                                                             ##                     driver should be static or dynamically allocated.
                                                                             ## ```
proc lv_fs_get_drv*(letter: cchar): ptr lv_fs_drv_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Give a pointer to a driver from its letter
                                                                                  ##    @param letter    the driver letter
                                                                                  ##    @return          pointer to a driver or NULL if not found
                                                                                  ## ```
proc lv_fs_is_ready*(letter: cchar): bool {.importc, cdecl, implvglHdr.}
proc lv_fs_open*(file_p: ptr lv_fs_file_t; path: cstring; mode: lv_fs_mode_t): lv_fs_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Open a file
                                ##    @param file_p    pointer to a lv_fs_file_t variable
                                ##    @param path      path to the file beginning with the driver letter (e.g. S:/folder/file.txt)
                                ##    @param mode      read: FS_MODE_RD, write: FS_MODE_WR, both: FS_MODE_RD | FS_MODE_WR
                                ##    @return          LV_FS_RES_OK or any error from lv_fs_res_t enum
                                ## ```
proc lv_fs_close*(file_p: ptr lv_fs_file_t): lv_fs_res_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Close an already opened file
                ##    @param file_p    pointer to a lv_fs_file_t variable
                ##    @return          LV_FS_RES_OK or any error from lv_fs_res_t enum
                ## ```
proc lv_fs_read*(file_p: ptr lv_fs_file_t; buf: pointer; btr: uint32;
                 br: ptr uint32): lv_fs_res_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Read from a file
                                                                            ##    @param file_p    pointer to a lv_fs_file_t variable
                                                                            ##    @param buf       pointer to a buffer where the read bytes are stored
                                                                            ##    @param btr       Bytes To Read
                                                                            ##    @param br        the number of real read bytes (Bytes Read). NULL if unused.
                                                                            ##    @return          LV_FS_RES_OK or any error from lv_fs_res_t enum
                                                                            ## ```
proc lv_fs_write*(file_p: ptr lv_fs_file_t; buf: pointer; btw: uint32;
                  bw: ptr uint32): lv_fs_res_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   Write into a file
                                                                             ##    @param file_p    pointer to a lv_fs_file_t variable
                                                                             ##    @param buf       pointer to a buffer with the bytes to write
                                                                             ##    @param btw       Bytes To Write
                                                                             ##    @param bw        the number of real written bytes (Bytes Written). NULL if unused.
                                                                             ##    @return          LV_FS_RES_OK or any error from lv_fs_res_t enum
                                                                             ## ```
proc lv_fs_seek*(file_p: ptr lv_fs_file_t; pos: uint32; whence: lv_fs_whence_t): lv_fs_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the position of the 'cursor' (read write pointer) in a file
                                ##    @param file_p    pointer to a lv_fs_file_t variable
                                ##    @param pos       the new position expressed in bytes index (0: start of file)
                                ##    @param whence    tells from where set the position. See @lv_fs_whence_t
                                ##    @return          LV_FS_RES_OK or any error from lv_fs_res_t enum
                                ## ```
proc lv_fs_tell*(file_p: ptr lv_fs_file_t; pos: ptr uint32): lv_fs_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Give the position of the read write pointer
                                ##    @param file_p    pointer to a lv_fs_file_t variable
                                ##    @param pos       pointer to store the position of the read write pointer
                                ##    @return          LV_FS_RES_OK or any error from 'fs_res_t'
                                ## ```
proc lv_fs_dir_open*(rddir_p: ptr lv_fs_dir_t; path: cstring): lv_fs_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Initialize a 'fs_dir_t' variable for directory reading
                                ##    @param rddir_p   pointer to a 'lv_fs_dir_t' variable
                                ##    @param path      path to a directory
                                ##    @return          LV_FS_RES_OK or any error from lv_fs_res_t enum
                                ## ```
proc lv_fs_dir_read*(rddir_p: ptr lv_fs_dir_t; fn: cstring): lv_fs_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Read the next filename form a directory.
                                ##    The name of the directories will begin with '/'
                                ##    @param rddir_p   pointer to an initialized 'fs_dir_t' variable
                                ##    @param fn        pointer to a buffer to store the filename
                                ##    @return          LV_FS_RES_OK or any error from lv_fs_res_t enum
                                ## ```
proc lv_fs_dir_close*(rddir_p: ptr lv_fs_dir_t): lv_fs_res_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Close the directory reading
                ##    @param rddir_p   pointer to an initialized 'fs_dir_t' variable
                ##    @return          LV_FS_RES_OK or any error from lv_fs_res_t enum
                ## ```
proc lv_fs_get_letters*(buf: cstring): cstring {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   Fill a buffer with the letters of existing drivers
                                                                             ##    @param buf       buffer to store the letters ('\0' added after the last letter)
                                                                             ##    @return          the buffer
                                                                             ## ```
proc lv_fs_get_ext*(fn: cstring): cstring {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Return with the extension of the filename
                                                                        ##    @param fn        string with a filename
                                                                        ##    @return          pointer to the beginning extension or empty string if no extension
                                                                        ## ```
proc lv_fs_up*(path: cstring): cstring {.importc, cdecl, implvglHdr.}
  ## ```
                                                                     ##   Step up one level
                                                                     ##    @param path      pointer to a file name
                                                                     ##    @return          the truncated file name
                                                                     ## ```
proc lv_fs_get_last*(path: cstring): cstring {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Get the last element of a path (e.g. U:/folder/file -> file)
                                                                           ##    @param path      pointer to a file name
                                                                           ##    @return          pointer to the beginning of the last element in the path
                                                                           ## ```
proc lv_img_decoder_init*() {.importc: "_lv_img_decoder_init", cdecl, implvglHdr.}
  ## ```
                                                                                  ##   *******************
                                                                                  ##    GLOBAL PROTOTYPES
                                                                                  ##   *******************
                                                                                  ##     
                                                                                  ##    Initialize the image decoder module
                                                                                  ## ```
proc lv_img_decoder_get_info*(src: pointer; header: ptr lv_img_header_t): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get information about an image.
                                ##    Try the created image decoder one by one. Once one is able to get info that info will be used.
                                ##    @param src the image source. Can be
                                ##     1) File name: E.g. "S:folder/img1.png" (The drivers needs to registered via lv_fs_drv_register())
                                ##     2) Variable: Pointer to an lv_img_dsc_t variable
                                ##     3) Symbol: E.g. LV_SYMBOL_OK
                                ##    @param header the image info will be stored here
                                ##    @return LV_RES_OK: success; LV_RES_INV: wasn't able to get info about the image
                                ## ```
proc lv_img_decoder_open*(dsc: ptr lv_img_decoder_dsc_t; src: pointer;
                          color: lv_color_t; frame_id: int32): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Open an image.
                                ##    Try the created image decoders one by one. Once one is able to open the image that decoder is saved in dsc
                                ##    @param dsc describes a decoding session. Simply a pointer to an lv_img_decoder_dsc_t variable.
                                ##    @param src the image source. Can be
                                ##     1) File name: E.g. "S:folder/img1.png" (The drivers needs to registered via lv_fs_drv_register()))
                                ##     2) Variable: Pointer to an lv_img_dsc_t variable
                                ##     3) Symbol: E.g. LV_SYMBOL_OK
                                ##    @param color The color of the image with LV_IMG_CF_ALPHA_...
                                ##    @param frame_id the index of the frame. Used only with animated images, set 0 for normal images
                                ##    @return LV_RES_OK: opened the image. dsc->img_data and dsc->header are set.
                                ##            LV_RES_INV: none of the registered image decoders were able to open the image.
                                ## ```
proc lv_img_decoder_read_line*(dsc: ptr lv_img_decoder_dsc_t; x: lv_coord_t;
                               y: lv_coord_t; len: lv_coord_t; buf: ptr uint8): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Read a line from an opened image
                                ##    @param dsc pointer to lv_img_decoder_dsc_t used in lv_img_decoder_open
                                ##    @param x start X coordinate (from left)
                                ##    @param y start Y coordinate (from top)
                                ##    @param len number of pixels to read
                                ##    @param buf store the data here
                                ##    @return LV_RES_OK: success; LV_RES_INV: an error occurred
                                ## ```
proc lv_img_decoder_close*(dsc: ptr lv_img_decoder_dsc_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Close a decoding session
                ##    @param dsc pointer to lv_img_decoder_dsc_t used in lv_img_decoder_open
                ## ```
proc lv_img_decoder_create*(): ptr lv_img_decoder_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Create a new image decoder
                                                                                  ##    @return pointer to the new image decoder
                                                                                  ## ```
proc lv_img_decoder_delete*(decoder: ptr lv_img_decoder_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Delete an image decoder
                ##    @param decoder pointer to an image decoder
                ## ```
proc lv_img_decoder_set_info_cb*(decoder: ptr lv_img_decoder_t;
                                 info_cb: lv_img_decoder_info_f_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a callback to get information about the image
                       ##    @param decoder pointer to an image decoder
                       ##    @param info_cb a function to collect info about an image (fill an lv_img_header_t struct)
                       ## ```
proc lv_img_decoder_set_open_cb*(decoder: ptr lv_img_decoder_t;
                                 open_cb: lv_img_decoder_open_f_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a callback to open an image
                       ##    @param decoder pointer to an image decoder
                       ##    @param open_cb a function to open an image
                       ## ```
proc lv_img_decoder_set_read_line_cb*(decoder: ptr lv_img_decoder_t;
    read_line_cb: lv_img_decoder_read_line_f_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   Set a callback to a decoded line of an image
                                                                              ##    @param decoder pointer to an image decoder
                                                                              ##    @param read_line_cb a function to read a line of an image
                                                                              ## ```
proc lv_img_decoder_set_close_cb*(decoder: ptr lv_img_decoder_t;
                                  close_cb: lv_img_decoder_close_f_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a callback to close a decoding session. E.g. close files and free other resources.
                       ##    @param decoder pointer to an image decoder
                       ##    @param close_cb a function to close a decoding session
                       ## ```
proc lv_img_decoder_built_in_info*(decoder: ptr lv_img_decoder_t; src: pointer;
                                   header: ptr lv_img_header_t): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get info about a built-in image
                                ##    @param decoder the decoder where this function belongs
                                ##    @param src the image source: pointer to an lv_img_dsc_t variable, a file path or a symbol
                                ##    @param header store the image data here
                                ##    @return LV_RES_OK: the info is successfully stored in header; LV_RES_INV: unknown format or other error.
                                ## ```
proc lv_img_decoder_built_in_open*(decoder: ptr lv_img_decoder_t;
                                   dsc: ptr lv_img_decoder_dsc_t): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Open a built in image
                                ##    @param decoder the decoder where this function belongs
                                ##    @param dsc pointer to decoder descriptor. src, style are already initialized in it.
                                ##    @return LV_RES_OK: the info is successfully stored in header; LV_RES_INV: unknown format or other error.
                                ## ```
proc lv_img_decoder_built_in_close*(decoder: ptr lv_img_decoder_t;
                                    dsc: ptr lv_img_decoder_dsc_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Close the pending decoding. Free resources etc.
                       ##    @param decoder pointer to the decoder the function associated with
                       ##    @param dsc pointer to decoder descriptor
                       ## ```
proc lv_img_cache_manager_init*(manager: ptr lv_img_cache_manager_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ##     
                       ##    Initialize the img cache manager
                       ##    @param manager Pointer to the img cache manager
                       ## ```
proc lv_img_cache_manager_apply*(manager: ptr lv_img_cache_manager_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Apply the img cache manager
                       ##    @param manager Pointer to the img cache manager
                       ## ```
proc lv_img_cache_open*(src: pointer; color: lv_color_t; frame_id: int32): ptr lv_img_cache_entry_t {.
    importc: "_lv_img_cache_open", cdecl, implvglHdr.}
  ## ```
                                                      ##   Open an image using the image decoder interface and cache it.
                                                      ##    The image will be left open meaning if the image decoder open callback allocated memory then it will remain.
                                                      ##    The image is closed if a new image is opened and the new image takes its place in the cache.
                                                      ##    @param src source of the image. Path to file or pointer to an lv_img_dsc_t variable
                                                      ##    @param color The color of the image with LV_IMG_CF_ALPHA_...
                                                      ##    @param frame_id the index of the frame. Used only with animated images, set 0 for normal images
                                                      ##    @return pointer to the cache entry or NULL if can open the image
                                                      ## ```
proc lv_img_cache_set_size*(new_entry_cnt: uint16) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Set the number of images to be cached.
                                                                                 ##    More cached images mean more opened image at same time which might mean more memory usage.
                                                                                 ##    E.g. if 20 PNG or JPG images are open in the RAM they consume memory while opened in the cache.
                                                                                 ##    @param new_entry_cnt number of image to cache
                                                                                 ## ```
proc lv_img_cache_invalidate_src*(src: pointer) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   Invalidate an image source in the cache.
                                                                              ##    Useful if the image source is updated therefore it needs to be cached again.
                                                                              ##    @param src an image source path to a file or pointer to an lv_img_dsc_t variable.
                                                                              ## ```
proc lv_gradient_calculate*(dsc: ptr lv_grad_dsc_t; range: lv_coord_t;
                            frac: lv_coord_t): lv_grad_color_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##         PROTOTYPES
                ##   *******************
                ##      Compute the color in the given gradient and fraction
                ##     Gradient are specified in a virtual [0-255] range, so this function scales the virtual range to the given range
                ##    @param dsc       The gradient descriptor to use
                ##    @param range     The range to use in computation.
                ##    @param frac      The current part used in the range. frac is in [0; range]
                ## ```
proc lv_gradient_set_cache_size*(max_bytes: uint) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Set the gradient cache size
                                                                                ##    @param max_bytes Max cahce size
                                                                                ## ```
proc lv_gradient_free_cache*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                             ##   Free the gradient cache
                                                             ## ```
proc lv_gradient_get*(gradient: ptr lv_grad_dsc_t; w: lv_coord_t; h: lv_coord_t): ptr lv_grad_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get a gradient cache from the given parameters
                                ## ```
proc lv_gradient_cleanup*(grad: ptr lv_grad_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   Clean up the gradient item after it was get with lv_grad_get_from_cache.
                                                                             ##    @param grad      pointer to a gradient
                                                                             ## ```
proc lv_draw_rect_dsc_init*(dsc: ptr lv_draw_rect_dsc_t) {.importc, cdecl,
    implvglHdr.}
proc lv_draw_rect*(draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_rect_dsc_t;
                   coords: ptr lv_area_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Draw a rectangle
                                                                        ##    @param draw_ctx      pointer to the current draw context
                                                                        ##    @param dsc           pointer to an initialized lv_draw_rect_dsc_t variable
                                                                        ##    @param coords        the coordinates of the rectangle
                                                                        ## ```
proc lv_draw_label_dsc_init*(dsc: ptr lv_draw_label_dsc_t) {.importc, cdecl,
    implvglHdr.}
proc lv_draw_label*(draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_label_dsc_t;
                    coords: ptr lv_area_t; txt: cstring;
                    hint: ptr lv_draw_label_hint_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Write a text
                                                                                  ##    @param draw_ctx      pointer to the current draw context
                                                                                  ##    @param dsc           pointer to draw descriptor
                                                                                  ##    @param coords        coordinates of the label
                                                                                  ##    @param txt           \0 terminated text to write
                                                                                  ##    @param hint          pointer to a lv_draw_label_hint_t variable.
                                                                                  ##    It is managed by the draw to speed up the drawing of very long texts (thousands of lines).
                                                                                  ## ```
proc lv_draw_letter*(draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_label_dsc_t;
                     pos_p: ptr lv_point_t; letter: uint32) {.importc, cdecl,
    implvglHdr.}
proc lv_draw_img_dsc_init*(dsc: ptr lv_draw_img_dsc_t) {.importc, cdecl,
    implvglHdr.}
proc lv_draw_img*(draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_img_dsc_t;
                  coords: ptr lv_area_t; src: pointer) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Draw an image
                ##    @param draw_ctx      pointer to the current draw context
                ##    @param dsc           pointer to an initialized lv_draw_img_dsc_t variable
                ##    @param coords        the coordinates of the image
                ##    @param src           pointer to a lv_color_t array which contains the pixels of the image
                ## ```
proc lv_draw_img_decoded*(draw_ctx: ptr lv_draw_ctx_t;
                          dsc: ptr lv_draw_img_dsc_t; coords: ptr lv_area_t;
                          map_p: ptr uint8; sup: ptr lv_draw_img_sup_t;
                          color_format: lv_color_format_t) {.importc, cdecl,
    implvglHdr.}
proc lv_img_src_get_type*(src: pointer): lv_img_src_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the type of an image source
                ##    @param src pointer to an image source:
                ##     - pointer to an 'lv_img_t' variable (image stored internally and compiled into the code)
                ##     - a path to a file (e.g. "S:/folder/image.bin")
                ##     - or a symbol (e.g. LV_SYMBOL_CLOSE)
                ##    @return type of the image source LV_IMG_SRC_VARIABLE/FILE/SYMBOL/UNKNOWN
                ## ```
proc lv_draw_line_dsc_init*(dsc: ptr lv_draw_line_dsc_t) {.importc, cdecl,
    implvglHdr.}
proc lv_draw_line*(draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_line_dsc_t;
                   point1: ptr lv_point_t; point2: ptr lv_point_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Draw a line
                       ##    @param draw_ctx      pointer to the current draw context
                       ##    @param dsc           pointer to an initialized lv_draw_line_dsc_t variable
                       ##    @param point1        first point of the line
                       ##    @param point2        second point of the line
                       ## ```
proc lv_draw_polygon*(draw_ctx: ptr lv_draw_ctx_t;
                      draw_dsc: ptr lv_draw_rect_dsc_t;
                      points: UncheckedArray[lv_point_t]; point_cnt: uint16) {.
    importc, cdecl, implvglHdr.}
proc lv_draw_triangle*(draw_ctx: ptr lv_draw_ctx_t;
                       draw_dsc: ptr lv_draw_rect_dsc_t;
                       points: UncheckedArray[lv_point_t]) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##         MACROS
                ##   *******************
                ##     
                ##    @file lv_draw_arc.h
                ## ```
proc lv_draw_arc_dsc_init*(dsc: ptr lv_draw_arc_dsc_t) {.importc, cdecl,
    implvglHdr.}
proc lv_draw_arc*(draw_ctx: ptr lv_draw_ctx_t; dsc: ptr lv_draw_arc_dsc_t;
                  center: ptr lv_point_t; radius: uint16; start_angle: uint16;
                  end_angle: uint16) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                   ##   Draw an arc. (Can draw pie too with great thickness.)
                                                                   ##    @param draw_ctx      pointer to the current draw context
                                                                   ##    @param dsc           pointer to an initialized lv_draw_line_dsc_t variable
                                                                   ##    @param center        the center of the arc
                                                                   ##    @param radius        the radius of the arc
                                                                   ##    @param start_angle   the start angle of the arc (0 deg on the bottom, 90 deg on the right)
                                                                   ##    @param end_angle     the end angle of the arc
                                                                   ## ```
proc lv_draw_arc_get_area*(x: lv_coord_t; y: lv_coord_t; radius: uint16;
                           start_angle: uint16; end_angle: uint16;
                           w: lv_coord_t; rounded: bool; area: ptr lv_area_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get an area the should be invalidated when the arcs angle changed between start_angle and end_ange
                                ##    @param x             the x coordinate of the center of the arc
                                ##    @param y             the y coordinate of the center of the arc
                                ##    @param radius        the radius of the arc
                                ##    @param start_angle   the start angle of the arc (0 deg on the bottom, 90 deg on the right)
                                ##    @param end_angle     the end angle of the arc
                                ##    @param w             width of the arc
                                ##    @param rounded       true: the arc is rounded
                                ##    @param area          store the area to invalidate here
                                ## ```
proc lv_draw_mask_add*(param: pointer; custom_id: pointer): int16 {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ##     
                       ##    Add a draw mask. Everything drawn after it (until removing the mask) will be affected by the mask.
                       ##    @param param an initialized mask parameter. Only the pointer is saved.
                       ##    @param custom_id a custom pointer to identify the mask. Used in lv_draw_mask_remove_custom.
                       ##    @return the an integer, the ID of the mask. Can be used in lv_draw_mask_remove_id.
                       ## ```
proc lv_draw_mask_apply*(mask_buf: ptr lv_opa_t; abs_x: lv_coord_t;
                         abs_y: lv_coord_t; len: lv_coord_t): lv_draw_mask_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   ! @cond Doxygen_Suppress
                                ##     
                                ##    Apply the added buffers on a line. Used internally by the library's drawing routines.
                                ##    @param mask_buf store the result mask here. Has to be len byte long. Should be initialized with 0xFF.
                                ##    @param abs_x absolute X coordinate where the line to calculate start
                                ##    @param abs_y absolute Y coordinate where the line to calculate start
                                ##    @param len length of the line to calculate (in pixel count)
                                ##    @return One of these values:
                                ##    - LV_DRAW_MASK_RES_FULL_TRANSP: the whole line is transparent. mask_buf is not set to zero
                                ##    - LV_DRAW_MASK_RES_FULL_COVER: the whole line is fully visible. mask_buf is unchanged
                                ##    - LV_DRAW_MASK_RES_CHANGED: mask_buf has changed, it shows the desired opacity of each pixel in the given line
                                ## ```
proc lv_draw_mask_apply_ids*(mask_buf: ptr lv_opa_t; abs_x: lv_coord_t;
                             abs_y: lv_coord_t; len: lv_coord_t; ids: ptr int16;
                             ids_count: int16): lv_draw_mask_res_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Apply the specified buffers on a line. Used internally by the library's drawing routines.
                       ##    @param mask_buf store the result mask here. Has to be len byte long. Should be initialized with 0xFF.
                       ##    @param abs_x absolute X coordinate where the line to calculate start
                       ##    @param abs_y absolute Y coordinate where the line to calculate start
                       ##    @param len length of the line to calculate (in pixel count)
                       ##    @param ids ID array of added buffers
                       ##    @param ids_count number of ID array
                       ##    @return One of these values:
                       ##    - LV_DRAW_MASK_RES_FULL_TRANSP: the whole line is transparent. mask_buf is not set to zero
                       ##    - LV_DRAW_MASK_RES_FULL_COVER: the whole line is fully visible. mask_buf is unchanged
                       ##    - LV_DRAW_MASK_RES_CHANGED: mask_buf has changed, it shows the desired opacity of each pixel in the given line
                       ## ```
proc lv_draw_mask_remove_id*(id: int16): pointer {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   ! @endcond
                                                                               ##     
                                                                               ##    Remove a mask with a given ID
                                                                               ##    @param id the ID of the mask.  Returned by lv_draw_mask_add
                                                                               ##    @return the parameter of the removed mask.
                                                                               ##    If more masks have custom_id ID then the last mask's parameter will be returned
                                                                               ## ```
proc lv_draw_mask_remove_custom*(custom_id: pointer): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Remove all mask with a given custom ID
                ##    @param custom_id a pointer used in lv_draw_mask_add
                ##    @return return the parameter of the removed mask.
                ##    If more masks have custom_id ID then the last mask's parameter will be returned
                ## ```
proc lv_draw_mask_free_param*(p: pointer) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Free the data from the parameter.
                                                                        ##    It's called inside lv_draw_mask_remove_id and lv_draw_mask_remove_custom
                                                                        ##    Needs to be called only in special cases when the mask is not added by lv_draw_mask_add
                                                                        ##    and not removed by lv_draw_mask_remove_id or lv_draw_mask_remove_custom
                                                                        ##    @param p pointer to a mask parameter
                                                                        ## ```
proc lv_draw_mask_cleanup*() {.importc: "_lv_draw_mask_cleanup", cdecl,
                               implvglHdr.}
  ## ```
                                           ##   Called by LVGL the rendering of a screen is ready to clean up
                                           ##    the temporal (cache) data of the masks
                                           ## ```
proc lv_draw_mask_get_cnt*(): uint8 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                  ##   ! @cond Doxygen_Suppress
                                                                  ##     
                                                                  ##    Count the currently added masks
                                                                  ##    @return number of active masks
                                                                  ## ```
proc lv_draw_mask_is_any*(a: ptr lv_area_t): bool {.importc, cdecl, implvglHdr.}
proc lv_draw_mask_line_points_init*(param: ptr lv_draw_mask_line_param_t;
                                    p1x: lv_coord_t; p1y: lv_coord_t;
                                    p2x: lv_coord_t; p2y: lv_coord_t;
                                    side: lv_draw_mask_line_side_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   ! @endcond
                       ##     
                       ##   Initialize a line mask from two points.
                       ##    @param param pointer to a lv_draw_mask_param_t to initialize
                       ##    @param p1x X coordinate of the first point of the line
                       ##    @param p1y Y coordinate of the first point of the line
                       ##    @param p2x X coordinate of the second point of the line
                       ##    @param p2y y coordinate of the second point of the line
                       ##    @param side and element of lv_draw_mask_line_side_t to describe which side to keep.
                       ##    With LV_DRAW_MASK_LINE_SIDE_LEFT/RIGHT and horizontal line all pixels are kept
                       ##    With LV_DRAW_MASK_LINE_SIDE_TOP/BOTTOM and vertical line all pixels are kept
                       ## ```
proc lv_draw_mask_line_angle_init*(param: ptr lv_draw_mask_line_param_t;
                                   p1x: lv_coord_t; py: lv_coord_t;
                                   angle: int16; side: lv_draw_mask_line_side_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Initialize a line mask from a point and an angle.
                                ##    @param param pointer to a lv_draw_mask_param_t to initialize
                                ##    @param p1x X coordinate of a point of the line
                                ##    @param py Y coordinate of a point of the line
                                ##    @param angle right 0 deg, bottom: 90
                                ##    @param side and element of lv_draw_mask_line_side_t to describe which side to keep.
                                ##    With LV_DRAW_MASK_LINE_SIDE_LEFT/RIGHT and horizontal line all pixels are kept
                                ##    With LV_DRAW_MASK_LINE_SIDE_TOP/BOTTOM and vertical line all pixels are kept
                                ## ```
proc lv_draw_mask_angle_init*(param: ptr lv_draw_mask_angle_param_t;
                              vertex_x: lv_coord_t; vertex_y: lv_coord_t;
                              start_angle: lv_coord_t; end_angle: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Initialize an angle mask.
                                ##    @param param pointer to a lv_draw_mask_param_t to initialize
                                ##    @param vertex_x X coordinate of the angle vertex (absolute coordinates)
                                ##    @param vertex_y Y coordinate of the angle vertex (absolute coordinates)
                                ##    @param start_angle start angle in degrees. 0 deg on the right, 90 deg, on the bottom
                                ##    @param end_angle end angle
                                ## ```
proc lv_draw_mask_radius_init*(param: ptr lv_draw_mask_radius_param_t;
                               rect: ptr lv_area_t; radius: lv_coord_t;
                               inv: bool) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Initialize a fade mask.
                                                                        ##    @param param pointer to an lv_draw_mask_radius_param_t to initialize
                                                                        ##    @param rect coordinates of the rectangle to affect (absolute coordinates)
                                                                        ##    @param radius radius of the rectangle
                                                                        ##    @param inv true: keep the pixels inside the rectangle; keep the pixels outside of the rectangle
                                                                        ## ```
proc lv_draw_mask_fade_init*(param: ptr lv_draw_mask_fade_param_t;
                             coords: ptr lv_area_t; opa_top: lv_opa_t;
                             y_top: lv_coord_t; opa_bottom: lv_opa_t;
                             y_bottom: lv_coord_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Initialize a fade mask.
                                                                                 ##    @param param pointer to a lv_draw_mask_param_t to initialize
                                                                                 ##    @param coords coordinates of the area to affect (absolute coordinates)
                                                                                 ##    @param opa_top opacity on the top
                                                                                 ##    @param y_top at which coordinate start to change to opacity to opa_bottom
                                                                                 ##    @param opa_bottom opacity at the bottom
                                                                                 ##    @param y_bottom at which coordinate reach opa_bottom.
                                                                                 ## ```
proc lv_draw_mask_map_init*(param: ptr lv_draw_mask_map_param_t;
                            coords: ptr lv_area_t; map: ptr lv_opa_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Initialize a map mask.
                       ##    @param param pointer to a lv_draw_mask_param_t to initialize
                       ##    @param coords coordinates of the map (absolute coordinates)
                       ##    @param map array of bytes with the mask values
                       ## ```
proc lv_draw_mask_polygon_init*(param: ptr lv_draw_mask_polygon_param_t;
                                points: ptr lv_point_t; point_cnt: uint16) {.
    importc, cdecl, implvglHdr.}
proc lv_draw_transform*(draw_ctx: ptr lv_draw_ctx_t; dest_area: ptr lv_area_t;
                        src_buf: pointer; src_w: lv_coord_t; src_h: lv_coord_t;
                        src_stride: lv_coord_t; draw_dsc: ptr lv_draw_img_dsc_t;
                        sup: ptr lv_draw_img_sup_t; cf: lv_color_format_t;
                        cbuf: ptr lv_color_t; abuf: ptr lv_opa_t) {.importc,
    cdecl, implvglHdr.}
proc lv_draw_layer_create*(draw_ctx: ptr lv_draw_ctx_t;
                           layer_area: ptr lv_area_t;
                           flags: lv_draw_layer_flags_t): ptr lv_draw_layer_ctx_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Create a new layer context. It is used to start and independent rendering session
                                ##    with the current draw_ctx
                                ##    @param draw_ctx      pointer to the current draw context
                                ##    @param layer_area    the coordinates of the layer
                                ##    @param flags         OR-ed flags from @lv_draw_layer_flags_t
                                ##    @return              pointer to the layer context, or NULL on error
                                ## ```
proc lv_draw_layer_adjust*(draw_ctx: ptr lv_draw_ctx_t;
                           layer_ctx: ptr lv_draw_layer_ctx_t;
                           flags: lv_draw_layer_flags_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Adjust the layer_ctx and/or draw_ctx based on the layer_ctx->area_act.
                ##    It's called only if flags has LV_DRAW_LAYER_FLAG_CAN_SUBDIVIDE
                ##    @param draw_ctx      pointer to the current draw context
                ##    @param layer_ctx     pointer to a layer context
                ##    @param flags         OR-ed flags from @lv_draw_layer_flags_t
                ## ```
proc lv_draw_layer_blend*(draw_ctx: ptr lv_draw_ctx_t;
                          layer_ctx: ptr lv_draw_layer_ctx_t;
                          draw_dsc: ptr lv_draw_img_dsc_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Blend a rendered layer to layer_ctx->area_act
                ##    @param draw_ctx      pointer to the current draw context
                ##    @param layer_ctx     pointer to a layer context
                ##    @param draw_dsc      pointer to an image draw descriptor
                ## ```
proc lv_draw_layer_destroy*(draw_ctx: ptr lv_draw_ctx_t;
                            layer_ctx: ptr lv_draw_layer_ctx_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Destroy a layer context.
                       ##    @param draw_ctx      pointer to the current draw context
                       ##    @param layer_ctx     pointer to a layer context
                       ## ```
proc lv_draw_init*() {.importc, cdecl, implvglHdr.}
proc lv_draw_wait_for_finish*(draw_ctx: ptr lv_draw_ctx_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_init_draw_rect_dsc*(obj: ptr lv_obj_t; part: uint32;
                                draw_dsc: ptr lv_draw_rect_dsc_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ##     
                       ##    Initialize a rectangle draw descriptor from an object's styles in its current state
                       ##    @param obj       pointer to an object
                       ##    @param part      part of the object, e.g. LV_PART_MAIN, LV_PART_SCROLLBAR, LV_PART_KNOB, etc
                       ##    @param draw_dsc  the descriptor to initialize.
                       ##                     If an ..._opa field is set to LV_OPA_TRANSP the related properties won't be initialized.
                       ##                     Should be initialized with lv_draw_rect_dsc_init(draw_dsc).
                       ##    @note Only the relevant fields will be set.
                       ##          E.g. if border width == 0 the other border properties won't be evaluated.
                       ## ```
proc lv_obj_init_draw_label_dsc*(obj: ptr lv_obj_t; part: uint32;
                                 draw_dsc: ptr lv_draw_label_dsc_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Initialize a label draw descriptor from an object's styles in its current state
                       ##    @param obj       pointer to an object
                       ##    @param part      part of the object, e.g. LV_PART_MAIN, LV_PART_SCROLLBAR, LV_PART_KNOB, etc
                       ##    @param draw_dsc  the descriptor to initialize.
                       ##                     If the opa field is set to or the property is equal to LV_OPA_TRANSP the rest won't be initialized.
                       ##                     Should be initialized with lv_draw_label_dsc_init(draw_dsc).
                       ## ```
proc lv_obj_init_draw_img_dsc*(obj: ptr lv_obj_t; part: uint32;
                               draw_dsc: ptr lv_draw_img_dsc_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Initialize an image draw descriptor from an object's styles in its current state
                       ##    @param obj       pointer to an object
                       ##    @param part      part of the object, e.g. LV_PART_MAIN, LV_PART_SCROLLBAR, LV_PART_KNOB, etc
                       ##    @param draw_dsc  the descriptor to initialize.
                       ##                     Should be initialized with lv_draw_image_dsc_init(draw_dsc).
                       ## ```
proc lv_obj_init_draw_line_dsc*(obj: ptr lv_obj_t; part: uint32;
                                draw_dsc: ptr lv_draw_line_dsc_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Initialize a line draw descriptor from an object's styles in its current state
                       ##    @param obj pointer to an object
                       ##    @param part      part of the object, e.g. LV_PART_MAIN, LV_PART_SCROLLBAR, LV_PART_KNOB, etc
                       ##    @param draw_dsc  the descriptor to initialize.
                       ##                     Should be initialized with lv_draw_line_dsc_init(draw_dsc).
                       ## ```
proc lv_obj_init_draw_arc_dsc*(obj: ptr lv_obj_t; part: uint32;
                               draw_dsc: ptr lv_draw_arc_dsc_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Initialize an arc draw descriptor from an object's styles in its current state
                       ##    @param obj       pointer to an object
                       ##    @param part      part of the object, e.g. LV_PART_MAIN, LV_PART_SCROLLBAR, LV_PART_KNOB, etc
                       ##    @param draw_dsc  the descriptor to initialize.
                       ##                     Should be initialized with lv_draw_arc_dsc_init(draw_dsc).
                       ## ```
proc lv_obj_calculate_ext_draw_size*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the required extra size (around the object's part) to draw shadow, outline, value etc.
                                ##    @param obj       pointer to an object
                                ##    @param part      part of the object
                                ##    @return          the extra size required around the object
                                ## ```
proc lv_obj_draw_dsc_init*(dsc: ptr lv_obj_draw_part_dsc_t;
                           draw_ctx: ptr lv_draw_ctx_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Initialize a draw descriptor used in events.
                ##    @param dsc       pointer to a descriptor. Later it should be passed as parameter to an LV_EVENT_DRAW_PART_BEGIN/END event.
                ##    @param draw_ctx  draw the current draw context. (usually returned by lv_event_get_draw_ctx(e))
                ## ```
proc lv_obj_draw_part_check_type*(dsc: ptr lv_obj_draw_part_dsc_t;
                                  class_p: ptr lv_obj_class_t; `type`: uint32): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_refresh_ext_draw_size*(obj: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Send a 'LV_EVENT_REFR_EXT_DRAW_SIZE' Call the ancestor's event handler to the object to refresh the value of the extended draw size.
                ##    The result will be saved in obj.
                ##    @param obj       pointer to an object
                ## ```
proc lv_obj_get_ext_draw_size*(obj: ptr lv_obj_t): lv_coord_t {.
    importc: "_lv_obj_get_ext_draw_size", cdecl, implvglHdr.}
  ## ```
                                                             ##   Get the extended draw area of an object.
                                                             ##    @param obj       pointer to an object
                                                             ##    @return          the size extended draw area around the real coordinates
                                                             ## ```
proc lv_obj_get_layer_type*(obj: ptr lv_obj_t): lv_layer_type_t {.
    importc: "_lv_obj_get_layer_type", cdecl, implvglHdr.}
proc lv_obj_class_create_obj*(class_p: ptr lv_obj_class_t; parent: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Create an object form a class descriptor
                                ##    @param class_p   pointer to a class
                                ##    @param parent    pointer to an object where the new object should be created
                                ##    @return          pointer to the created object
                                ## ```
proc lv_obj_class_init_obj*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_destruct*(obj: ptr lv_obj_t) {.importc: "_lv_obj_destruct", cdecl,
    implvglHdr.}
proc lv_obj_is_editable*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_obj_is_group_def*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_ll_init*(ll_p: ptr lv_ll_t; node_size: uint32) {.importc: "_lv_ll_init",
    cdecl, implvglHdr.}
  ## ```
                       ##   *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ##     
                       ##    Initialize linked list
                       ##    @param ll_p pointer to lv_ll_t variable
                       ##    @param node_size the size of 1 node in bytes
                       ## ```
proc lv_ll_ins_head*(ll_p: ptr lv_ll_t): pointer {.importc: "_lv_ll_ins_head",
    cdecl, implvglHdr.}
  ## ```
                       ##   Add a new head to a linked list
                       ##    @param ll_p pointer to linked list
                       ##    @return pointer to the new head
                       ## ```
proc lv_ll_ins_prev*(ll_p: ptr lv_ll_t; n_act: pointer): pointer {.
    importc: "_lv_ll_ins_prev", cdecl, implvglHdr.}
  ## ```
                                                   ##   Insert a new node in front of the n_act node
                                                   ##    @param ll_p pointer to linked list
                                                   ##    @param n_act pointer a node
                                                   ##    @return pointer to the new node
                                                   ## ```
proc lv_ll_ins_tail*(ll_p: ptr lv_ll_t): pointer {.importc: "_lv_ll_ins_tail",
    cdecl, implvglHdr.}
  ## ```
                       ##   Add a new tail to a linked list
                       ##    @param ll_p pointer to linked list
                       ##    @return pointer to the new tail
                       ## ```
proc lv_ll_remove*(ll_p: ptr lv_ll_t; node_p: pointer) {.
    importc: "_lv_ll_remove", cdecl, implvglHdr.}
  ## ```
                                                 ##   Remove the node 'node_p' from 'll_p' linked list.
                                                 ##    It does not free the memory of node.
                                                 ##    @param ll_p pointer to the linked list of 'node_p'
                                                 ##    @param node_p pointer to node in 'll_p' linked list
                                                 ## ```
proc lv_ll_clear*(ll_p: ptr lv_ll_t) {.importc: "_lv_ll_clear", cdecl,
                                       implvglHdr.}
  ## ```
                                                   ##   Remove and free all elements from a linked list. The list remain valid but become empty.
                                                   ##    @param ll_p pointer to linked list
                                                   ## ```
proc lv_ll_chg_list*(ll_ori_p: ptr lv_ll_t; ll_new_p: ptr lv_ll_t;
                     node: pointer; head: bool) {.importc: "_lv_ll_chg_list",
    cdecl, implvglHdr.}
  ## ```
                       ##   Move a node to a new linked list
                       ##    @param ll_ori_p pointer to the original (old) linked list
                       ##    @param ll_new_p pointer to the new linked list
                       ##    @param node pointer to a node
                       ##    @param head true: be the head in the new list
                       ##                false be the tail in the new list
                       ## ```
proc lv_ll_get_head*(ll_p: ptr lv_ll_t): pointer {.importc: "_lv_ll_get_head",
    cdecl, implvglHdr.}
  ## ```
                       ##   Return with head node of the linked list
                       ##    @param ll_p pointer to linked list
                       ##    @return pointer to the head of 'll_p'
                       ## ```
proc lv_ll_get_tail*(ll_p: ptr lv_ll_t): pointer {.importc: "_lv_ll_get_tail",
    cdecl, implvglHdr.}
  ## ```
                       ##   Return with tail node of the linked list
                       ##    @param ll_p pointer to linked list
                       ##    @return pointer to the tail of 'll_p'
                       ## ```
proc lv_ll_get_next*(ll_p: ptr lv_ll_t; n_act: pointer): pointer {.
    importc: "_lv_ll_get_next", cdecl, implvglHdr.}
  ## ```
                                                   ##   Return with the pointer of the next node after 'n_act'
                                                   ##    @param ll_p pointer to linked list
                                                   ##    @param n_act pointer a node
                                                   ##    @return pointer to the next node
                                                   ## ```
proc lv_ll_get_prev*(ll_p: ptr lv_ll_t; n_act: pointer): pointer {.
    importc: "_lv_ll_get_prev", cdecl, implvglHdr.}
  ## ```
                                                   ##   Return with the pointer of the previous node after 'n_act'
                                                   ##    @param ll_p pointer to linked list
                                                   ##    @param n_act pointer a node
                                                   ##    @return pointer to the previous node
                                                   ## ```
proc lv_ll_get_len*(ll_p: ptr lv_ll_t): uint32 {.importc: "_lv_ll_get_len",
    cdecl, implvglHdr.}
  ## ```
                       ##   Return the length of the linked list.
                       ##    @param ll_p pointer to linked list
                       ##    @return length of the linked list
                       ## ```
proc lv_ll_move_before*(ll_p: ptr lv_ll_t; n_act: pointer; n_after: pointer) {.
    importc: "_lv_ll_move_before", cdecl, implvglHdr.}
  ## ```
                                                      ##   TODO
                                                      ##    @param ll_p
                                                      ##    @param n1_p
                                                      ##    @param n2_p
                                                      ##   void lv_ll_swap(lv_ll_t ll_p, void n1_p, void n2_p);
                                                      ##    
                                                      ##     
                                                      ##    Move a node before an other node in the same linked list
                                                      ##    @param ll_p pointer to a linked list
                                                      ##    @param n_act pointer to node to move
                                                      ##    @param n_after pointer to a node which should be after n_act
                                                      ## ```
proc lv_ll_is_empty*(ll_p: ptr lv_ll_t): bool {.importc: "_lv_ll_is_empty",
    cdecl, implvglHdr.}
proc lv_group_init*() {.importc: "_lv_group_init", cdecl, implvglHdr.}
  ## ```
                                                                      ##   *******************
                                                                      ##    GLOBAL PROTOTYPES
                                                                      ##   *******************
                                                                      ##     
                                                                      ##    Init. the group module
                                                                      ##    @remarks Internal function, do not call directly.
                                                                      ## ```
proc lv_group_create*(): ptr lv_group_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                      ##   Create a new object group
                                                                      ##    @return          pointer to the new object group
                                                                      ## ```
proc lv_group_del*(group: ptr lv_group_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Delete a group object
                                                                        ##    @param group     pointer to a group
                                                                        ## ```
proc lv_group_set_default*(group: ptr lv_group_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Set a default group. New object are added to this group if it's enabled in their class with add_to_def_group = true
                                                                                ##    @param group     pointer to a group (can be NULL)
                                                                                ## ```
proc lv_group_get_default*(): ptr lv_group_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Get the default group
                                                                           ##    @return          pointer to the default group
                                                                           ## ```
proc lv_group_add_obj*(group: ptr lv_group_t; obj: ptr lv_obj_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Add an object to a group
                       ##    @param group     pointer to a group
                       ##    @param obj       pointer to an object to add
                       ## ```
proc lv_group_swap_obj*(obj1: ptr lv_obj_t; obj2: ptr lv_obj_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Swap 2 object in a group. The object must be in the same group
                       ##    @param obj1  pointer to an object
                       ##    @param obj2  pointer to an other object
                       ## ```
proc lv_group_remove_obj*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Remove an object from its group
                                                                           ##    @param obj       pointer to an object to remove
                                                                           ## ```
proc lv_group_remove_all_objs*(group: ptr lv_group_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Remove all objects from a group
                ##    @param group     pointer to a group
                ## ```
proc lv_group_focus_obj*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   Focus on an object (defocus the current)
                                                                          ##    @param obj       pointer to an object to focus on
                                                                          ## ```
proc lv_group_focus_next*(group: ptr lv_group_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Focus the next object in a group (defocus the current)
                                                                               ##    @param group     pointer to a group
                                                                               ## ```
proc lv_group_focus_prev*(group: ptr lv_group_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Focus the previous object in a group (defocus the current)
                                                                               ##    @param group     pointer to a group
                                                                               ## ```
proc lv_group_focus_freeze*(group: ptr lv_group_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Do not let to change the focus from the current object
                ##    @param group     pointer to a group
                ##    @param en        true: freeze, false: release freezing (normal mode)
                ## ```
proc lv_group_send_data*(group: ptr lv_group_t; c: uint32): lv_res_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Send a control character to the focuses object of a group
                       ##    @param group     pointer to a group
                       ##    @param c         a character (use LV_KEY_.. to navigate)
                       ##    @return          result of focused object in group.
                       ## ```
proc lv_group_set_focus_cb*(group: ptr lv_group_t; focus_cb: lv_group_focus_cb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a function for a group which will be called when a new object is focused
                                ##    @param group         pointer to a group
                                ##    @param focus_cb      the call back function or NULL if unused
                                ## ```
proc lv_group_set_edge_cb*(group: ptr lv_group_t; edge_cb: lv_group_edge_cb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a function for a group which will be called when a focus edge is reached
                                ##    @param group         pointer to a group
                                ##    @param edge_cb      the call back function or NULL if unused
                                ## ```
proc lv_group_set_refocus_policy*(group: ptr lv_group_t;
                                  policy: lv_group_refocus_policy_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set whether the next or previous item in a group is focused if the currently focused obj is
                       ##    deleted.
                       ##    @param group         pointer to a group
                       ##    @param policy        new refocus policy enum
                       ## ```
proc lv_group_set_editing*(group: ptr lv_group_t; edit: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Manually set the current mode (edit or navigate).
                ##    @param group         pointer to group
                ##    @param edit          true: edit mode; false: navigate mode
                ## ```
proc lv_group_set_wrap*(group: ptr lv_group_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set whether focus next/prev will allow wrapping from first->last or last->first object.
                ##    @param group         pointer to group
                ##    @param               en true: wrapping enabled; false: wrapping disabled
                ## ```
proc lv_group_get_focused*(group: ptr lv_group_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the focused object or NULL if there isn't one
                       ##    @param group         pointer to a group
                       ##    @return              pointer to the focused object
                       ## ```
proc lv_group_get_focus_cb*(group: ptr lv_group_t): lv_group_focus_cb_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the focus callback function of a group
                                ##    @param group pointer to a group
                                ##    @return the call back function or NULL if not set
                                ## ```
proc lv_group_get_edge_cb*(group: ptr lv_group_t): lv_group_edge_cb_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the edge callback function of a group
                       ##    @param group pointer to a group
                       ##    @return the call back function or NULL if not set
                       ## ```
proc lv_group_get_editing*(group: ptr lv_group_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_group_get_wrap*(group: ptr lv_group_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_group_get_obj_count*(group: ptr lv_group_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the number of object in the group
                ##    @param group         pointer to a group
                ##    @return              number of objects in the group
                ## ```
proc lv_indev_create*(): ptr lv_indev_t {.importc, cdecl, implvglHdr.}
proc lv_indev_delete*(indev: ptr lv_indev_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Remove the provided input device. Make sure not to use the provided input device afterwards anymore.
                                                                           ##    @param indev pointer to delete
                                                                           ## ```
proc lv_indev_get_next*(indev: ptr lv_indev_t): ptr lv_indev_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the next input device.
                ##    @param indev pointer to the current input device. NULL to initialize.
                ##    @return the next input device or NULL if there are no more. Provide the first input device when
                ##    the parameter is NULL
                ## ```
proc lv_indev_read*(indev: ptr lv_indev_t; data: ptr lv_indev_data_t) {.
    importc: "_lv_indev_read", cdecl, implvglHdr.}
  ## ```
                                                  ##   Read data from an input device.
                                                  ##    @param indev pointer to an input device
                                                  ##    @param data input device will write its data here
                                                  ## ```
proc lv_indev_read_timer_cb*(timer: ptr lv_timer_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Called periodically to read the input devices
                                                                                  ##    @param timer pointer to a timer to read
                                                                                  ## ```
proc lv_indev_enable*(indev: ptr lv_indev_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Enable or disable one or all input devices (default enabled)
                ##    @param indev pointer to an input device or NULL to enable/disable all of them
                ##    @param en true to enable, false to disable
                ## ```
proc lv_indev_get_act*(): ptr lv_indev_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                       ##   Get the currently processed input device. Can be used in action functions too.
                                                                       ##    @return pointer to the currently processed input device or NULL if no input device processing
                                                                       ##    right now
                                                                       ## ```
proc lv_indev_set_type*(indev: ptr lv_indev_t; indev_type: lv_indev_type_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the type of an input device
                                ##    @param indev pointer to an input device
                                ##    @param indev_type the type of the input device from lv_indev_type_t (LV_INDEV_TYPE_...)
                                ## ```
proc lv_indev_set_read_cb*(indev: ptr lv_indev_t; read_cb: lv_indev_read_cb_t) {.
    importc, cdecl, implvglHdr.}
proc lv_indev_set_user_data*(indev: ptr lv_indev_t; user_data: pointer) {.
    importc, cdecl, implvglHdr.}
proc lv_indev_set_driver_data*(indev: ptr lv_indev_t; driver_data: pointer) {.
    importc, cdecl, implvglHdr.}
proc lv_indev_get_type*(indev: ptr lv_indev_t): lv_indev_type_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the type of an input device
                       ##    @param indev pointer to an input device
                       ##    @return the type of the input device from lv_hal_indev_type_t (LV_INDEV_TYPE_...)
                       ## ```
proc lv_indev_get_state*(indev: ptr lv_indev_t): lv_indev_state_t {.importc,
    cdecl, implvglHdr.}
proc lv_indev_get_group*(indev: ptr lv_indev_t): ptr lv_group_t {.importc,
    cdecl, implvglHdr.}
proc lv_indev_get_disp*(indev: ptr lv_indev_t): ptr lv_disp_t {.importc, cdecl,
    implvglHdr.}
proc lv_indev_set_disp*(indev: ptr lv_indev_t; disp: ptr lv_disp_t) {.importc,
    cdecl, implvglHdr.}
proc lv_indev_get_user_data*(indev: ptr lv_indev_t): pointer {.importc, cdecl,
    implvglHdr.}
proc lv_indev_get_driver_data*(indev: ptr lv_indev_t): pointer {.importc, cdecl,
    implvglHdr.}
proc lv_indev_reset*(indev: ptr lv_indev_t; obj: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Reset one or all input devices
                ##    @param indev pointer to an input device to reset or NULL to reset all of them
                ##    @param obj pointer to an object which triggers the reset.
                ## ```
proc lv_indev_reset_long_press*(indev: ptr lv_indev_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Reset the long press state of an input device
                ##    @param indev pointer to an input device
                ## ```
proc lv_indev_set_cursor*(indev: ptr lv_indev_t; cur_obj: ptr lv_obj_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a cursor for a pointer input device (for LV_INPUT_TYPE_POINTER and LV_INPUT_TYPE_BUTTON)
                                ##    @param indev pointer to an input device
                                ##    @param cur_obj pointer to an object to be used as cursor
                                ## ```
proc lv_indev_set_group*(indev: ptr lv_indev_t; group: ptr lv_group_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a destination group for a keypad input device (for LV_INDEV_TYPE_KEYPAD)
                                ##    @param indev pointer to an input device
                                ##    @param group pointer to a group
                                ## ```
proc lv_indev_set_button_points*(indev: ptr lv_indev_t;
                                 points: UncheckedArray[lv_point_t]) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the an array of points for LV_INDEV_TYPE_BUTTON.
                       ##    These points will be assigned to the buttons to press a specific point on the screen
                       ##    @param indev pointer to an input device
                       ##    @param points array of points
                       ## ```
proc lv_indev_get_point*(indev: ptr lv_indev_t; point: ptr lv_point_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the last point of an input device (for LV_INDEV_TYPE_POINTER and LV_INDEV_TYPE_BUTTON)
                                ##    @param indev pointer to an input device
                                ##    @param point pointer to a point to store the result
                                ## ```
proc lv_indev_get_gesture_dir*(indev: ptr lv_indev_t): lv_dir_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the current gesture direct
                       ##   @param indev pointer to an input device
                       ##   @return current gesture direct
                       ## ```
proc lv_indev_get_key*(indev: ptr lv_indev_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the last pressed key of an input device (for LV_INDEV_TYPE_KEYPAD)
                ##    @param indev pointer to an input device
                ##    @return the last pressed key (0 on error)
                ## ```
proc lv_indev_get_scroll_dir*(indev: ptr lv_indev_t): lv_dir_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Check the current scroll direction of an input device (for LV_INDEV_TYPE_POINTER and
                ##    LV_INDEV_TYPE_BUTTON)
                ##    @param indev pointer to an input device
                ##    @return LV_DIR_NONE: no scrolling now
                ##            LV_DIR_HOR/VER
                ## ```
proc lv_indev_get_scroll_obj*(indev: ptr lv_indev_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the currently scrolled object (for LV_INDEV_TYPE_POINTER and
                       ##    LV_INDEV_TYPE_BUTTON)
                       ##    @param indev pointer to an input device
                       ##    @return pointer to the currently scrolled object or NULL if no scrolling by this indev
                       ## ```
proc lv_indev_get_vect*(indev: ptr lv_indev_t; point: ptr lv_point_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the movement vector of an input device (for LV_INDEV_TYPE_POINTER and
                       ##    LV_INDEV_TYPE_BUTTON)
                       ##    @param indev pointer to an input device
                       ##    @param point pointer to a point to store the types.pointer.vector
                       ## ```
proc lv_indev_wait_release*(indev: ptr lv_indev_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Do nothing until the next release
                                                                                 ##    @param indev pointer to an input device
                                                                                 ## ```
proc lv_indev_get_obj_act*(): ptr lv_obj_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Gets a pointer to the currently active object in the currently processed input device.
                                                                         ##    @return pointer to currently active object or NULL if no active object
                                                                         ## ```
proc lv_indev_get_read_timer*(indev: ptr lv_indev_t): ptr lv_timer_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get a pointer to the indev read timer to
                       ##    modify its parameters with lv_timer_... functions.
                       ##    @param indev pointer to an input device
                       ##    @return pointer to the indev read refresher timer. (NULL on error)
                       ## ```
proc lv_indev_search_obj*(obj: ptr lv_obj_t; point: ptr lv_point_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Search the most top, clickable object by a point
                                ##    @param obj pointer to a start object, typically the screen
                                ##    @param point pointer to a point for searching the most top child
                                ##    @return pointer to the found object or NULL if there was no suitable object
                                ## ```
proc lv_obj_send_event*(obj: ptr lv_obj_t; event_code: lv_event_code_t;
                        param: pointer): lv_res_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   *******************
                                                                                ##    GLOBAL PROTOTYPES
                                                                                ##   *******************
                                                                                ##     
                                                                                ##    Send an event to the object
                                                                                ##    @param obj           pointer to an object
                                                                                ##    @param event_code    the type of the event from lv_event_t
                                                                                ##    @param param         arbitrary data depending on the widget type and the event. (Usually NULL)
                                                                                ##    @return LV_RES_OK: obj was not deleted in the event; LV_RES_INV: obj was deleted in the event_code
                                                                                ## ```
proc lv_obj_event_base*(class_p: ptr lv_obj_class_t; e: ptr lv_event_t): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Used by the widgets internally to call the ancestor widget types's event handler
                                ##    @param class_p   pointer to the class of the widget (NOT the ancestor class)
                                ##    @param e         pointer to the event descriptor
                                ##    @return          LV_RES_OK: the target object was not deleted in the event; LV_RES_INV: it was deleted in the event_code
                                ## ```
proc lv_event_get_current_target_obj*(e: ptr lv_event_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the current target of the event. It's the object which event handler being called.
                                ##    If the event is not bubbled it's the same as "orignal" target.
                                ##    @param e     pointer to the event descriptor
                                ##    @return      the target of the event_code
                                ## ```
proc lv_event_get_target_obj*(e: ptr lv_event_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the object originally targeted by the event. It's the same even if the event is bubbled.
                ##    @param e     pointer to the event descriptor
                ##    @return      pointer to the original target of the event_code
                ## ```
proc lv_obj_add_event*(obj: ptr lv_obj_t; event_cb: lv_event_cb_t;
                       filter: lv_event_code_t; user_data: pointer) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Add an event handler function for an object.
                       ##    Used by the user to react on event which happens with the object.
                       ##    An object can have multiple event handler. They will be called in the same order as they were added.
                       ##    @param obj       pointer to an object
                       ##    @param filter    and event code (e.g. LV_EVENT_CLICKED) on which the event should be called. LV_EVENT_ALL can be sued the receive all the events.
                       ##    @param event_cb  the new event function
                       ##    @param           user_data custom data data will be available in event_cb
                       ## ```
proc lv_obj_get_event_count*(obj: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
proc lv_obj_get_event_dsc*(obj: ptr lv_obj_t; index: uint32): ptr lv_event_dsc_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_remove_event*(obj: ptr lv_obj_t; index: uint32): bool {.importc,
    cdecl, implvglHdr.}
proc lv_event_get_indev*(e: ptr lv_event_t): ptr lv_indev_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the input device passed as parameter to indev related events.
                ##    @param e     pointer to an event
                ##    @return      the indev that triggered the event or NULL if called on a not indev related event
                ## ```
proc lv_event_get_draw_part_dsc*(e: ptr lv_event_t): ptr lv_obj_draw_part_dsc_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the part draw descriptor passed as parameter to LV_EVENT_DRAW_PART_BEGIN/END.
                                ##    @param e     pointer to an event
                                ##    @return      the part draw descriptor to hook the drawing or NULL if called on an unrelated event
                                ## ```
proc lv_event_get_draw_ctx*(e: ptr lv_event_t): ptr lv_draw_ctx_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the draw context which should be the first parameter of the draw functions.
                       ##    Namely: LV_EVENT_DRAW_MAIN/POST, LV_EVENT_DRAW_MAIN/POST_BEGIN, LV_EVENT_DRAW_MAIN/POST_END
                       ##    @param e     pointer to an event
                       ##    @return      pointer to a draw context or NULL if called on an unrelated event
                       ## ```
proc lv_event_get_old_size*(e: ptr lv_event_t): ptr lv_area_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the old area of the object before its size was changed. Can be used in LV_EVENT_SIZE_CHANGED
                ##    @param e     pointer to an event
                ##    @return      the old absolute area of the object or NULL if called on an unrelated event
                ## ```
proc lv_event_get_key*(e: ptr lv_event_t): uint32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Get the key passed as parameter to an event. Can be used in LV_EVENT_KEY
                                                                                ##    @param e     pointer to an event
                                                                                ##    @return      the triggering key or NULL if called on an unrelated event
                                                                                ## ```
proc lv_event_get_scroll_anim*(e: ptr lv_event_t): ptr lv_anim_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the animation descriptor of a scrolling. Can be used in LV_EVENT_SCROLL_BEGIN
                       ##    @param e     pointer to an event
                       ##    @return      the animation that will scroll the object. (can be modified as required)
                       ## ```
proc lv_event_set_ext_draw_size*(e: ptr lv_event_t; size: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the new extra draw size. Can be used in LV_EVENT_REFR_EXT_DRAW_SIZE
                       ##    @param e     pointer to an event
                       ##    @param size  The new extra draw size
                       ## ```
proc lv_event_get_self_size_info*(e: ptr lv_event_t): ptr lv_point_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get a pointer to an lv_point_t variable in which the self size should be saved (width in point->x and height point->y).
                       ##    Can be used in LV_EVENT_GET_SELF_SIZE
                       ##    @param e     pointer to an event
                       ##    @return      pointer to lv_point_t or NULL if called on an unrelated event
                       ## ```
proc lv_event_get_hit_test_info*(e: ptr lv_event_t): ptr lv_hit_test_info_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get a pointer to an lv_hit_test_info_t variable in which the hit test result should be saved. Can be used in LV_EVENT_HIT_TEST
                                ##    @param e     pointer to an event
                                ##    @return      pointer to lv_hit_test_info_t or NULL if called on an unrelated event
                                ## ```
proc lv_event_get_cover_area*(e: ptr lv_event_t): ptr lv_area_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get a pointer to an area which should be examined whether the object fully covers it or not.
                       ##    Can be used in LV_EVENT_HIT_TEST
                       ##    @param e     pointer to an event
                       ##    @return      an area with absolute coordinates to check
                       ## ```
proc lv_event_set_cover_res*(e: ptr lv_event_t; res: lv_cover_res_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the result of cover checking. Can be used in LV_EVENT_COVER_CHECK
                       ##    @param e     pointer to an event
                       ##    @param res   an element of ::lv_cover_check_info_t
                       ## ```
proc lv_init*() {.importc, cdecl, implvglHdr.}
  ## ```
                                              ##   *******************
                                              ##    GLOBAL PROTOTYPES
                                              ##   *******************
                                              ##     
                                              ##    Initialize LVGL library.
                                              ##    Should be called before any other LVGL related function.
                                              ## ```
proc lv_deinit*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                ##   Deinit the 'lv' library
                                                ##    Currently only implemented when not using custom allocators, or GC is enabled.
                                                ## ```
proc lv_is_initialized*(): bool {.importc, cdecl, implvglHdr.}
proc lv_obj_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Create a base object (a rectangle)
                ##    @param parent    pointer to a parent object. If NULL then a screen will be created.
                ##    @return          pointer to the new object
                ## ```
proc lv_obj_add_flag*(obj: ptr lv_obj_t; f: lv_obj_flag_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set one or more flags
                ##    @param obj   pointer to an object
                ##    @param f     R-ed values from lv_obj_flag_t to set.
                ## ```
proc lv_obj_clear_flag*(obj: ptr lv_obj_t; f: lv_obj_flag_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Clear one or more flags
                ##    @param obj   pointer to an object
                ##    @param f     OR-ed values from lv_obj_flag_t to set.
                ## ```
proc lv_obj_add_state*(obj: ptr lv_obj_t; state: lv_state_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Add one or more states to the object. The other state bits will remain unchanged.
                ##    If specified in the styles, transition animation will be started from the previous state to the current.
                ##    @param obj       pointer to an object
                ##    @param state     the states to add. E.g LV_STATE_PRESSED | LV_STATE_FOCUSED
                ## ```
proc lv_obj_clear_state*(obj: ptr lv_obj_t; state: lv_state_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Remove one or more states to the object. The other state bits will remain unchanged.
                ##    If specified in the styles, transition animation will be started from the previous state to the current.
                ##    @param obj       pointer to an object
                ##    @param state     the states to add. E.g LV_STATE_PRESSED | LV_STATE_FOCUSED
                ## ```
proc lv_obj_set_user_data*(obj: ptr lv_obj_t; user_data: pointer) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the user_data field of the object
                       ##    @param obj   pointer to an object
                       ##    @param user_data   pointer to the new user_data.
                       ## ```
proc lv_obj_has_flag*(obj: ptr lv_obj_t; f: lv_obj_flag_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_obj_has_flag_any*(obj: ptr lv_obj_t; f: lv_obj_flag_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_obj_get_state*(obj: ptr lv_obj_t): lv_state_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the state of an object
                ##    @param obj   pointer to an object
                ##    @return      the state (OR-ed values from lv_state_t)
                ## ```
proc lv_obj_has_state*(obj: ptr lv_obj_t; state: lv_state_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_obj_get_group*(obj: ptr lv_obj_t): ptr lv_group_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the group of the object
                ##    @param       obj pointer to an object
                ##    @return      the pointer to group of the object
                ## ```
proc lv_obj_get_user_data*(obj: ptr lv_obj_t): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the user_data field of the object
                ##    @param obj   pointer to an object
                ##    @return      the pointer to the user_data of the object
                ## ```
proc lv_obj_allocate_spec_attr*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   =======================
                                                                                 ##    Other functions
                                                                                 ##   ======================
                                                                                 ##     
                                                                                 ##    Allocate special data for an object if not allocated yet.
                                                                                 ##    @param obj   pointer to an object
                                                                                 ## ```
proc lv_obj_check_type*(obj: ptr lv_obj_t; class_p: ptr lv_obj_class_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_has_class*(obj: ptr lv_obj_t; class_p: ptr lv_obj_class_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_class*(obj: ptr lv_obj_t): ptr lv_obj_class_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the class (type) of the object
                ##    @param obj   pointer to an object
                ##    @return      the class (type) of the object
                ## ```
proc lv_obj_is_valid*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_refr_init*() {.importc: "_lv_refr_init", cdecl, implvglHdr.}
  ## ```
                                                                    ##   *******************
                                                                    ##         TYPEDEFS
                                                                    ##   *******************
                                                                    ##    *******************
                                                                    ##     STATIC PROTOTYPES
                                                                    ##   *******************
                                                                    ##    *******************
                                                                    ##     STATIC VARIABLES
                                                                    ##   *******************
                                                                    ##    *******************
                                                                    ##         MACROS
                                                                    ##   *******************
                                                                    ##    *******************
                                                                    ##      GLOBAL FUNCTIONS
                                                                    ##   *******************
                                                                    ##     
                                                                    ##    Initialize the screen refresh subsystem
                                                                    ## ```
proc lv_refr_now*(disp: ptr lv_disp_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                     ##   Redraw the invalidated areas now.
                                                                     ##    Normally the redrawing is periodically executed in lv_timer_handler but a long blocking process
                                                                     ##    can prevent the call of lv_timer_handler. In this case if the GUI is updated in the process
                                                                     ##    (e.g. progress bar) this function can be called when the screen should be updated.
                                                                     ##    @param disp pointer to display to refresh. NULL to refresh all displays.
                                                                     ## ```
proc lv_obj_redraw*(draw_ctx: ptr lv_draw_ctx_t; obj: ptr lv_obj_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Redrawn on object an all its children using the passed draw context
                       ##    @param draw_ctx  pointer to an initialized draw context
                       ##    @param obj   the start object from the redraw should start
                       ## ```
proc lv_inv_area*(disp: ptr lv_disp_t; area_p: ptr lv_area_t) {.
    importc: "_lv_inv_area", cdecl, implvglHdr.}
  ## ```
                                                ##   Invalidate an area on display to redraw it
                                                ##    @param area_p pointer to area which should be invalidated (NULL: delete the invalidated areas)
                                                ##    @param disp pointer to display where the area should be invalidated (NULL can be used if there is
                                                ##    only one display)
                                                ## ```
proc lv_refr_get_disp_refreshing*(): ptr lv_disp_t {.
    importc: "_lv_refr_get_disp_refreshing", cdecl, implvglHdr.}
  ## ```
                                                                ##   Get the display which is being refreshed
                                                                ##    @return the display being refreshed
                                                                ## ```
proc lv_disp_refr_timer*(timer: ptr lv_timer_t) {.
    importc: "_lv_disp_refr_timer", cdecl, implvglHdr.}
  ## ```
                                                       ##   Called periodically to handle the refreshing
                                                       ##    @param timer pointer to the timer itself
                                                       ## ```
proc lv_theme_get_from_obj*(obj: ptr lv_obj_t): ptr lv_theme_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##     GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Get the theme assigned to the display of the object
                ##    @param obj       pointer to a theme object
                ##    @return          the theme of the object's display (can be NULL)
                ## ```
proc lv_theme_apply*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                      ##   Apply the active theme on an object
                                                                      ##    @param obj pointer to an object
                                                                      ## ```
proc lv_theme_set_parent*(new_theme: ptr lv_theme_t; parent: ptr lv_theme_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a base theme for a theme.
                                ##    The styles from the base them will be added before the styles of the current theme.
                                ##    Arbitrary long chain of themes can be created by setting base themes.
                                ##    @param new_theme pointer to theme which base should be set
                                ##    @param parent pointer to the base theme
                                ## ```
proc lv_theme_set_apply_cb*(theme: ptr lv_theme_t; apply_cb: lv_theme_apply_cb_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set an apply callback for a theme.
                                ##    The apply callback is used to add styles to different objects
                                ##    @param theme pointer to theme which callback should be set
                                ##    @param apply_cb pointer to the callback
                                ## ```
proc lv_theme_get_font_small*(obj: ptr lv_obj_t): ptr lv_font_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the small font of the theme
                       ##    @param obj pointer to an object
                       ##    @return pointer to the font
                       ## ```
proc lv_theme_get_font_normal*(obj: ptr lv_obj_t): ptr lv_font_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the normal font of the theme
                       ##    @param obj pointer to an object
                       ##    @return pointer to the font
                       ## ```
proc lv_theme_get_font_large*(obj: ptr lv_obj_t): ptr lv_font_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the subtitle font of the theme
                       ##    @param obj pointer to an object
                       ##    @return pointer to the font
                       ## ```
proc lv_theme_get_color_primary*(obj: ptr lv_obj_t): lv_color_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the primary color of the theme
                       ##    @param obj pointer to an object
                       ##    @return the color
                       ## ```
proc lv_theme_get_color_secondary*(obj: ptr lv_obj_t): lv_color_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the secondary color of the theme
                       ##    @param obj pointer to an object
                       ##    @return the color
                       ## ```
proc lv_font_load*(fontName: cstring): ptr lv_font_t {.importc, cdecl,
    implvglHdr.}
proc lv_font_free*(font: ptr lv_font_t) {.importc, cdecl, implvglHdr.}
proc lv_font_get_bitmap_fmt_txt*(font: ptr lv_font_t; letter: uint32): ptr uint8 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Used as get_glyph_bitmap callback in lvgl's native font format if the font is uncompressed.
                                ##    @param font pointer to font
                                ##    @param letter a letter which bitmap should be get
                                ##    @return pointer to the bitmap or NULL if not found
                                ## ```
proc lv_font_get_glyph_dsc_fmt_txt*(font: ptr lv_font_t;
                                    dsc_out: ptr lv_font_glyph_dsc_t;
                                    unicode_letter: uint32;
                                    unicode_letter_next: uint32): bool {.
    importc, cdecl, implvglHdr.}
proc lv_font_clean_up_fmt_txt*() {.importc: "_lv_font_clean_up_fmt_txt", cdecl,
                                   implvglHdr.}
  ## ```
                                               ##   Free the allocated memories.
                                               ## ```
proc lv_img_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create an image object
                ##    @param parent pointer to an object, it will be the parent of the new image
                ##    @return pointer to the created image
                ## ```
proc lv_img_set_src*(obj: ptr lv_obj_t; src: pointer) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set the image data to display on the object
                ##    @param obj       pointer to an image object
                ##    @param src       1) pointer to an ::lv_img_dsc_t descriptor (converted by LVGL's image converter) (e.g. &my_img) or
                ##                     2) path to an image file (e.g. "S:/dir/img.bin")or
                ##                     3) a SYMBOL (e.g. LV_SYMBOL_OK)
                ## ```
proc lv_img_set_offset_x*(obj: ptr lv_obj_t; x: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set an offset for the source of an image so the image will be displayed from the new origin.
                ##    @param obj       pointer to an image
                ##    @param x         the new offset along x axis.
                ## ```
proc lv_img_set_offset_y*(obj: ptr lv_obj_t; y: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set an offset for the source of an image.
                ##    so the image will be displayed from the new origin.
                ##    @param obj       pointer to an image
                ##    @param y         the new offset along y axis.
                ## ```
proc lv_img_set_angle*(obj: ptr lv_obj_t; angle: int16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the rotation angle of the image.
                ##    The image will be rotated around the set pivot set by lv_img_set_pivot()
                ##    Note that indexed and alpha only images can't be transformed.
                ##    @param obj       pointer to an image object
                ##    @param angle     rotation angle in degree with 0.1 degree resolution (0..3600: clock wise)
                ## ```
proc lv_img_set_pivot*(obj: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the rotation center of the image.
                                ##    The image will be rotated around this point.
                                ##    @param obj       pointer to an image object
                                ##    @param x         rotation center x of the image
                                ##    @param y         rotation center y of the image
                                ## ```
proc lv_img_set_zoom*(obj: ptr lv_obj_t; zoom: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the zoom factor of the image.
                ##    Note that indexed and alpha only images can't be transformed.
                ##    @param img       pointer to an image object
                ##    @param zoom      the zoom factor.
                ##    @example 256 or LV_ZOOM_IMG_NONE for no zoom
                ##    @example <256: scale down
                ##    @example >256 scale up
                ##    @example 128 half size
                ##    @example 512 double size
                ## ```
proc lv_img_set_antialias*(obj: ptr lv_obj_t; antialias: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Enable/disable anti-aliasing for the transformations (rotate, zoom) or not.
                ##    The quality is better with anti-aliasing looks better but slower.
                ##    @param obj       pointer to an image object
                ##    @param antialias true: anti-aliased; false: not anti-aliased
                ## ```
proc lv_img_set_size_mode*(obj: ptr lv_obj_t; mode: lv_img_size_mode_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the image object size mode.
                                ##   
                                ##    @param obj       pointer to an image object
                                ##    @param mode      the new size mode.
                                ## ```
proc lv_img_get_src*(obj: ptr lv_obj_t): pointer {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   =====================
                                                                               ##    Getter functions
                                                                               ##   ====================
                                                                               ##     
                                                                               ##    Get the source of the image
                                                                               ##    @param obj       pointer to an image object
                                                                               ##    @return          the image source (symbol, file name or ::lv-img_dsc_t for C arrays)
                                                                               ## ```
proc lv_img_get_offset_x*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the offset's x attribute of the image object.
                ##    @param obj       pointer to an image
                ##    @return          offset X value.
                ## ```
proc lv_img_get_offset_y*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the offset's y attribute of the image object.
                ##    @param obj       pointer to an image
                ##    @return          offset Y value.
                ## ```
proc lv_img_get_angle*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the rotation angle of the image.
                ##    @param obj       pointer to an image object
                ##    @return      rotation angle in 0.1 degrees (0..3600)
                ## ```
proc lv_img_get_pivot*(obj: ptr lv_obj_t; pivot: ptr lv_point_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the pivot (rotation center) of the image.
                       ##    @param obj       pointer to an image object
                       ##    @param pivot     store the rotation center here
                       ## ```
proc lv_img_get_zoom*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the zoom factor of the image.
                ##    @param obj       pointer to an image object
                ##    @return          zoom factor (256: no zoom)
                ## ```
proc lv_img_get_antialias*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_img_get_size_mode*(obj: ptr lv_obj_t): lv_img_size_mode_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the size mode of the image
                       ##    @param obj       pointer to an image object
                       ##    @return          element of @ref lv_img_size_mode_t
                       ## ```
proc lv_animimg_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create an animation image objects
                ##    @param parent pointer to an object, it will be the parent of the new button
                ##    @return pointer to the created animation image object
                ## ```
proc lv_animimg_set_src*(img: ptr lv_obj_t; dsc: UncheckedArray[pointer];
                         num: uint8) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                   ##   =====================
                                                                   ##    Setter functions
                                                                   ##   ====================
                                                                   ##     
                                                                   ##    Set the image animation images source.
                                                                   ##    @param img pointer to an animation image object
                                                                   ##    @param dsc pointer to a series images
                                                                   ##    @param num images' number
                                                                   ## ```
proc lv_animimg_start*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Startup the image animation.
                                                                        ##    @param obj pointer to an animation image object
                                                                        ## ```
proc lv_animimg_set_duration*(img: ptr lv_obj_t; duration: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the image animation duration time. unit:ms
                       ##    @param img pointer to an animation image object
                       ##    @param duration the duration
                       ## ```
proc lv_animimg_set_repeat_count*(img: ptr lv_obj_t; count: uint16) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the image animation repeatly play times.
                       ##    @param img pointer to an animation image object
                       ##    @param count the number of times to repeat the animation
                       ## ```
proc lv_animimg_get_src*(img: ptr lv_obj_t): ptr pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Get the image animation images source.
                ##    @param img pointer to an animation image object
                ##    @return a pointer that will point to a series images
                ## ```
proc lv_animimg_get_src_count*(img: ptr lv_obj_t): uint8 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the image animation images source.
                ##    @param img pointer to an animation image object
                ##    @return the number of source images
                ## ```
proc lv_animimg_get_duration*(img: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the image animation duration time. unit:ms
                ##    @param img pointer to an animation image object
                ##    @return the animation duration time
                ## ```
proc lv_animimg_get_repeat_count*(img: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the image animation repeat play times.
                ##    @param img pointer to an animation image object
                ##    @return the repeat count
                ## ```
proc lv_arc_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create an arc object
                ##    @param parent pointer to an object, it will be the parent of the new arc
                ##    @return pointer to the created arc
                ## ```
proc lv_arc_set_start_angle*(obj: ptr lv_obj_t; start: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   ======================
                ##    Add/remove functions
                ##   =====================
                ##     =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set the start angle of an arc. 0 deg: right, 90 bottom, etc.
                ##    @param obj   pointer to an arc object
                ##    @param start the start angle
                ## ```
proc lv_arc_set_end_angle*(obj: ptr lv_obj_t; `end`: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the end angle of an arc. 0 deg: right, 90 bottom, etc.
                ##    @param obj   pointer to an arc object
                ##    @param end   the end angle
                ## ```
proc lv_arc_set_angles*(obj: ptr lv_obj_t; start: uint16; `end`: uint16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the start and end angles
                                ##    @param obj   pointer to an arc object
                                ##    @param start the start angle
                                ##    @param end   the end angle
                                ## ```
proc lv_arc_set_bg_start_angle*(obj: ptr lv_obj_t; start: uint16) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the start angle of an arc background. 0 deg: right, 90 bottom, etc.
                       ##    @param obj   pointer to an arc object
                       ##    @param start the start angle
                       ## ```
proc lv_arc_set_bg_end_angle*(obj: ptr lv_obj_t; `end`: uint16) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the start angle of an arc background. 0 deg: right, 90 bottom etc.
                       ##    @param obj   pointer to an arc object
                       ##    @param end   the end angle
                       ## ```
proc lv_arc_set_bg_angles*(obj: ptr lv_obj_t; start: uint16; `end`: uint16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the start and end angles of the arc background
                                ##    @param obj   pointer to an arc object
                                ##    @param start the start angle
                                ##    @param end   the end angle
                                ## ```
proc lv_arc_set_rotation*(obj: ptr lv_obj_t; rotation: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the rotation for the whole arc
                ##    @param obj       pointer to an arc object
                ##    @param rotation  rotation angle
                ## ```
proc lv_arc_set_mode*(obj: ptr lv_obj_t; `type`: lv_arc_mode_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the type of arc.
                       ##    @param obj   pointer to arc object
                       ##    @param type  arc's mode
                       ## ```
proc lv_arc_set_value*(obj: ptr lv_obj_t; value: int16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set a new value on the arc
                ##    @param obj   pointer to an arc object
                ##    @param value new value
                ## ```
proc lv_arc_set_range*(obj: ptr lv_obj_t; min: int16; max: int16) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set minimum and the maximum values of an arc
                       ##    @param obj   pointer to the arc object
                       ##    @param min   minimum value
                       ##    @param max   maximum value
                       ## ```
proc lv_arc_set_change_rate*(obj: ptr lv_obj_t; rate: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set a change rate to limit the speed how fast the arc should reach the pressed point.
                ##    @param obj       pointer to an arc object
                ##    @param rate      the change rate
                ## ```
proc lv_arc_set_knob_offset*(arc: ptr lv_obj_t; offset: int16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set an offset for the knob from the main arc object
                ##    @param arc       pointer to an arc object
                ##    @param offset    knob offset from main arc
                ## ```
proc lv_arc_get_angle_start*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Get the start angle of an arc.
                ##    @param obj   pointer to an arc object
                ##    @return      the start angle [0..360]
                ## ```
proc lv_arc_get_angle_end*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the end angle of an arc.
                ##    @param obj   pointer to an arc object
                ##    @return      the end angle [0..360]
                ## ```
proc lv_arc_get_bg_angle_start*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the start angle of an arc background.
                ##    @param obj   pointer to an arc object
                ##    @return      the  start angle [0..360]
                ## ```
proc lv_arc_get_bg_angle_end*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the end angle of an arc background.
                ##    @param obj   pointer to an arc object
                ##    @return      the end angle [0..360]
                ## ```
proc lv_arc_get_value*(obj: ptr lv_obj_t): int16 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Get the value of an arc
                                                                               ##    @param obj       pointer to an arc object
                                                                               ##    @return          the value of the arc
                                                                               ## ```
proc lv_arc_get_min_value*(obj: ptr lv_obj_t): int16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the minimum value of an arc
                ##    @param obj   pointer to an arc object
                ##    @return      the minimum value of the arc
                ## ```
proc lv_arc_get_max_value*(obj: ptr lv_obj_t): int16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the maximum value of an arc
                ##    @param obj   pointer to an arc object
                ##    @return      the maximum value of the arc
                ## ```
proc lv_arc_get_mode*(obj: ptr lv_obj_t): lv_arc_mode_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get whether the arc is type or not.
                ##    @param obj       pointer to an arc object
                ##    @return          arc's mode
                ## ```
proc lv_arc_get_rotation*(obj: ptr lv_obj_t): int16 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Get the rotation for the whole arc
                                                                                  ##    @param obj       pointer to an arc object
                                                                                  ##    @return          arc's current rotation
                                                                                  ## ```
proc lv_arc_get_knob_offset*(obj: ptr lv_obj_t): int16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the current knob offset
                ##    @param obj       pointer to an arc object
                ##    @return          arc's current knob offset
                ## ```
proc lv_arc_align_obj_to_angle*(obj: ptr lv_obj_t; obj_to_align: ptr lv_obj_t;
                                r_offset: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Other functions
                ##   ====================
                ##     
                ##    Align an object to the current position of the arc (knob)
                ##    @param obj           pointer to an arc object
                ##    @param obj_to_align  pointer to an object to align
                ##    @param r_offset      consider the radius larger with this value (< 0: for smaller radius)
                ## ```
proc lv_arc_rotate_obj_to_angle*(obj: ptr lv_obj_t; obj_to_rotate: ptr lv_obj_t;
                                 r_offset: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Rotate an object to the current position of the arc (knob)
                ##    @param obj            pointer to an arc object
                ##    @param obj_to_rotate  pointer to an object to rotate
                ##    @param r_offset       consider the radius larger with this value (< 0: for smaller radius)
                ## ```
proc lv_label_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a label object
                ##    @param parent    pointer to an object, it will be the parent of the new label.
                ##    @return          pointer to the created button
                ## ```
proc lv_label_set_text*(obj: ptr lv_obj_t; text: cstring) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set a new text for a label. Memory will be allocated to store the text by the label.
                ##    @param obj           pointer to a label object
                ##    @param text          '\0' terminated character string. NULL to refresh with the current text.
                ## ```
proc lv_label_set_text_fmt*(obj: ptr lv_obj_t; fmt: cstring) {.importc, cdecl,
    implvglHdr, varargs.}
  ## ```
                         ##   Set a new formatted text for a label. Memory will be allocated to store the text by the label.
                         ##    @param obj           pointer to a label object
                         ##    @param fmt           printf-like format
                         ##    @example lv_label_set_text_fmt(label1, "%d user", user_num);
                         ## ```
proc lv_label_set_text_static*(obj: ptr lv_obj_t; text: cstring) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a static text. It will not be saved by the label so the 'text' variable
                       ##    has to be 'alive' while the label exists.
                       ##    @param obj           pointer to a label object
                       ##    @param text          pointer to a text. NULL to refresh with the current text.
                       ## ```
proc lv_label_set_long_mode*(obj: ptr lv_obj_t; long_mode: lv_label_long_mode_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the behavior of the label with text longer than the object size
                                ##    @param obj           pointer to a label object
                                ##    @param long_mode     the new mode from 'lv_label_long_mode' enum.
                                ##                         In LV_LONG_WRAP/DOT/SCROLL/SCROLL_CIRC the size of the label should be set AFTER this function
                                ## ```
proc lv_label_set_recolor*(obj: ptr lv_obj_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Enable the recoloring by in-line commands
                ##    @param obj           pointer to a label object
                ##    @param en            true: enable recoloring, false: disable
                ##    @example "This is a #ff0000 red# word"
                ## ```
proc lv_label_set_text_selection_start*(obj: ptr lv_obj_t; index: uint32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set where text selection should start
                                ##    @param obj       pointer to a label object
                                ##    @param index     character index from where selection should start. LV_LABEL_TEXT_SELECTION_OFF for no selection
                                ## ```
proc lv_label_set_text_selection_end*(obj: ptr lv_obj_t; index: uint32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set where text selection should end
                                ##    @param obj       pointer to a label object
                                ##    @param index     character index where selection should end. LV_LABEL_TEXT_SELECTION_OFF for no selection
                                ## ```
proc lv_label_get_text*(obj: ptr lv_obj_t): cstring {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   =====================
                                                                                  ##    Getter functions
                                                                                  ##   ====================
                                                                                  ##     
                                                                                  ##    Get the text of a label
                                                                                  ##    @param obj       pointer to a label object
                                                                                  ##    @return          the text of the label
                                                                                  ## ```
proc lv_label_get_long_mode*(obj: ptr lv_obj_t): lv_label_long_mode_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the long mode of a label
                       ##    @param obj       pointer to a label object
                       ##    @return          the current long mode
                       ## ```
proc lv_label_get_recolor*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_label_get_letter_pos*(obj: ptr lv_obj_t; char_id: uint32;
                              pos: ptr lv_point_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Get the relative x and y coordinates of a letter
                                                                                 ##    @param obj       pointer to a label object
                                                                                 ##    @param char_id     index of the character [0 ... text length - 1].
                                                                                 ##                     Expressed in character index, not byte index (different in UTF-8)
                                                                                 ##    @param pos       store the result here (E.g. index = 0 gives 0;0 coordinates if the text if aligned to the left)
                                                                                 ## ```
proc lv_label_get_letter_on*(obj: ptr lv_obj_t; pos_in: ptr lv_point_t): uint32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the index of letter on a relative point of a label.
                                ##    @param obj       pointer to label object
                                ##    @param pos_in       pointer to point with coordinates on a the label
                                ##    @return          The index of the letter on the 'pos_p' point (E.g. on 0;0 is the 0. letter if aligned to the left)
                                ##                     Expressed in character index and not byte index (different in UTF-8)
                                ## ```
proc lv_label_is_char_under_pos*(obj: ptr lv_obj_t; pos: ptr lv_point_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_label_get_text_selection_start*(obj: ptr lv_obj_t): uint32 {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   @brief Get the selection start index.
                       ##    @param obj       pointer to a label object.
                       ##    @return          selection start index. LV_LABEL_TEXT_SELECTION_OFF if nothing is selected.
                       ## ```
proc lv_label_get_text_selection_end*(obj: ptr lv_obj_t): uint32 {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   @brief Get the selection end index.
                       ##    @param obj       pointer to a label object.
                       ##    @return          selection end index. LV_LABEL_TXT_SEL_OFF if nothing is selected.
                       ## ```
proc lv_label_ins_text*(obj: ptr lv_obj_t; pos: uint32; txt: cstring) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   =====================
                       ##    Other functions
                       ##   ====================
                       ##     
                       ##    Insert a text to a label. The label text can not be static.
                       ##    @param obj       pointer to a label object
                       ##    @param pos       character index to insert. Expressed in character index and not byte index.
                       ##                     0: before first char. LV_LABEL_POS_LAST: after last char.
                       ##    @param txt       pointer to the text to insert
                       ## ```
proc lv_label_cut_text*(obj: ptr lv_obj_t; pos: uint32; cnt: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Delete characters from a label. The label text can not be static.
                       ##    @param obj       pointer to a label object
                       ##    @param pos       character index from where to cut. Expressed in character index and not byte index.
                       ##                     0: start in from of the first character
                       ##    @param cnt       number of characters to cut
                       ## ```
proc lv_bar_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a bar object
                ##    @param parent    pointer to an object, it will be the parent of the new bar
                ##    @return          pointer to the created bar
                ## ```
proc lv_bar_set_value*(obj: ptr lv_obj_t; value: int32; anim: lv_anim_enable_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Setter functions
                                ##   ====================
                                ##     
                                ##    Set a new value on the bar
                                ##    @param obj       pointer to a bar object
                                ##    @param value     new value
                                ##    @param anim      LV_ANIM_ON: set the value with an animation; LV_ANIM_OFF: change the value immediately
                                ## ```
proc lv_bar_set_start_value*(obj: ptr lv_obj_t; start_value: int32;
                             anim: lv_anim_enable_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set a new start value on the bar
                ##    @param obj             pointer to a bar object
                ##    @param start_value     new start value
                ##    @param anim            LV_ANIM_ON: set the value with an animation; LV_ANIM_OFF: change the value immediately
                ## ```
proc lv_bar_set_range*(obj: ptr lv_obj_t; min: int32; max: int32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set minimum and the maximum values of a bar
                       ##    @param obj       pointer to the bar object
                       ##    @param min       minimum value
                       ##    @param max       maximum value
                       ## ```
proc lv_bar_set_mode*(obj: ptr lv_obj_t; mode: lv_bar_mode_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the type of bar.
                ##    @param obj       pointer to bar object
                ##    @param mode      bar type from ::lv_bar_mode_t
                ## ```
proc lv_bar_get_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   =====================
                                                                               ##    Getter functions
                                                                               ##   ====================
                                                                               ##     
                                                                               ##    Get the value of a bar
                                                                               ##    @param obj       pointer to a bar object
                                                                               ##    @return          the value of the bar
                                                                               ## ```
proc lv_bar_get_start_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the start value of a bar
                ##    @param obj       pointer to a bar object
                ##    @return          the start value of the bar
                ## ```
proc lv_bar_get_min_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the minimum value of a bar
                ##    @param obj       pointer to a bar object
                ##    @return          the minimum value of the bar
                ## ```
proc lv_bar_get_max_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the maximum value of a bar
                ##    @param obj       pointer to a bar object
                ##    @return          the maximum value of the bar
                ## ```
proc lv_bar_get_mode*(obj: ptr lv_obj_t): lv_bar_mode_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the type of bar.
                ##    @param obj       pointer to bar object
                ##    @return          bar type from ::lv_bar_mode_t
                ## ```
proc lv_btn_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a button object
                ##    @param parent    pointer to an object, it will be the parent of the new button
                ##    @return          pointer to the created button
                ## ```
proc lv_btnmatrix_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a button matrix object
                ##    @param parent    pointer to an object, it will be the parent of the new button matrix
                ##    @return          pointer to the created button matrix
                ## ```
proc lv_btnmatrix_set_map*(obj: ptr lv_obj_t; map: UncheckedArray[cstring]) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Setter functions
                                ##   ====================
                                ##     
                                ##    Set a new map. Buttons will be created/deleted according to the map. The
                                ##    button matrix keeps a reference to the map and so the string array must not
                                ##    be deallocated during the life of the matrix.
                                ##    @param obj       pointer to a button matrix object
                                ##    @param map       pointer a string array. The last string has to be: "". Use "\n" to make a line break.
                                ## ```
proc lv_btnmatrix_set_ctrl_map*(obj: ptr lv_obj_t;
                                ctrl_map: UncheckedArray[lv_btnmatrix_ctrl_t]) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the button control map (hidden, disabled etc.) for a button matrix.
                                ##    The control map array will be copied and so may be deallocated after this
                                ##    function returns.
                                ##    @param obj       pointer to a button matrix object
                                ##    @param ctrl_map  pointer to an array of lv_btn_ctrl_t control bytes. The
                                ##                     length of the array and position of the elements must match
                                ##                     the number and order of the individual buttons (i.e. excludes
                                ##                     newline entries).
                                ##                     An element of the map should look like e.g.:
                                ##                    ctrl_map[0] = width | LV_BTNMATRIX_CTRL_NO_REPEAT |  LV_BTNMATRIX_CTRL_TGL_ENABLE
                                ## ```
proc lv_btnmatrix_set_selected_btn*(obj: ptr lv_obj_t; btn_id: uint16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the selected buttons
                                ##    @param obj        pointer to button matrix object
                                ##    @param btn_id         0 based index of the button to modify. (Not counting new lines)
                                ## ```
proc lv_btnmatrix_set_btn_ctrl*(obj: ptr lv_obj_t; btn_id: uint16;
                                ctrl: lv_btnmatrix_ctrl_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the attributes of a button of the button matrix
                ##    @param obj       pointer to button matrix object
                ##    @param btn_id    0 based index of the button to modify. (Not counting new lines)
                ##    @param ctrl      OR-ed attributs. E.g. LV_BTNMATRIX_CTRL_NO_REPEAT | LV_BTNMATRIX_CTRL_CHECKABLE
                ## ```
proc lv_btnmatrix_clear_btn_ctrl*(obj: ptr lv_obj_t; btn_id: uint16;
                                  ctrl: lv_btnmatrix_ctrl_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Clear the attributes of a button of the button matrix
                ##    @param obj       pointer to button matrix object
                ##    @param btn_id    0 based index of the button to modify. (Not counting new lines)
                ##    @param ctrl      OR-ed attributs. E.g. LV_BTNMATRIX_CTRL_NO_REPEAT | LV_BTNMATRIX_CTRL_CHECKABLE
                ## ```
proc lv_btnmatrix_set_btn_ctrl_all*(obj: ptr lv_obj_t; ctrl: lv_btnmatrix_ctrl_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set attributes of all buttons of a button matrix
                                ##    @param obj       pointer to a button matrix object
                                ##    @param ctrl      attribute(s) to set from lv_btnmatrix_ctrl_t. Values can be ORed.
                                ## ```
proc lv_btnmatrix_clear_btn_ctrl_all*(obj: ptr lv_obj_t;
                                      ctrl: lv_btnmatrix_ctrl_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Clear the attributes of all buttons of a button matrix
                       ##    @param obj       pointer to a button matrix object
                       ##    @param ctrl      attribute(s) to set from lv_btnmatrix_ctrl_t. Values can be ORed.
                       ##    @param en        true: set the attributes; false: clear the attributes
                       ## ```
proc lv_btnmatrix_set_btn_width*(obj: ptr lv_obj_t; btn_id: uint16; width: uint8) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a single button's relative width.
                                ##    This method will cause the matrix be regenerated and is a relatively
                                ##    expensive operation. It is recommended that initial width be specified using
                                ##    lv_btnmatrix_set_ctrl_map and this method only be used for dynamic changes.
                                ##    @param obj       pointer to button matrix object
                                ##    @param btn_id    0 based index of the button to modify.
                                ##    @param width     relative width compared to the buttons in the same row. [1..7]
                                ## ```
proc lv_btnmatrix_set_one_checked*(obj: ptr lv_obj_t; en: bool) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Make the button matrix like a selector widget (only one button may be checked at a time).
                       ##    LV_BTNMATRIX_CTRL_CHECKABLE must be enabled on the buttons to be selected using
                       ##    lv_btnmatrix_set_ctrl() or lv_btnmatrix_set_btn_ctrl_all().
                       ##    @param obj       pointer to a button matrix object
                       ##    @param en        whether "one check" mode is enabled
                       ## ```
proc lv_btnmatrix_get_map*(obj: ptr lv_obj_t): ptr cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Get the current map of a button matrix
                ##    @param obj       pointer to a button matrix object
                ##    @return          the current map
                ## ```
proc lv_btnmatrix_get_selected_btn*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the index of the lastly "activated" button by the user (pressed, released, focused etc)
                ##    Useful in the event_cb to get the text of the button, check if hidden etc.
                ##    @param obj       pointer to button matrix object
                ##    @return          index of the last released button (LV_BTNMATRIX_BTN_NONE: if unset)
                ## ```
proc lv_btnmatrix_get_btn_text*(obj: ptr lv_obj_t; btn_id: uint16): cstring {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the button's text
                                ##    @param obj       pointer to button matrix object
                                ##    @param btn_id    the index a button not counting new line characters.
                                ##    @return          text of btn_index button
                                ## ```
proc lv_btnmatrix_has_btn_ctrl*(obj: ptr lv_obj_t; btn_id: uint16;
                                ctrl: lv_btnmatrix_ctrl_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_btnmatrix_get_one_checked*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_calendar_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_calendar_set_today_date*(obj: ptr lv_obj_t; year: uint32; month: uint32;
                                 day: uint32) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   ======================
                                                                            ##    Add/remove functions
                                                                            ##   =====================
                                                                            ##     =====================
                                                                            ##    Setter functions
                                                                            ##   ====================
                                                                            ##     
                                                                            ##    Set the today's date
                                                                            ##    @param obj  pointer to a calendar object
                                                                            ##    @param year      today's year
                                                                            ##    @param month     today's month [1..12]
                                                                            ##    @param day       today's day [1..31]
                                                                            ## ```
proc lv_calendar_set_showed_date*(obj: ptr lv_obj_t; year: uint32; month: uint32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the currently showed
                                ##    @param obj           pointer to a calendar object
                                ##    @param year          today's year
                                ##    @param month         today's month [1..12]
                                ## ```
proc lv_calendar_set_highlighted_dates*(obj: ptr lv_obj_t; highlighted: UncheckedArray[
    lv_calendar_date_t]; date_num: uint16) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Set the highlighted dates
                                                                         ##    @param obj           pointer to a calendar object
                                                                         ##    @param highlighted   pointer to an lv_calendar_date_t array containing the dates.
                                                                         ##                         Only the pointer will be saved so this variable can't be local which will be destroyed later.
                                                                         ##    @param date_num number of dates in the array
                                                                         ## ```
proc lv_calendar_set_day_names*(obj: ptr lv_obj_t; day_names: ptr cstring) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the name of the days
                                ##    @param obj           pointer to a calendar object
                                ##    @param day_names     pointer to an array with the names.
                                ##                         E.g. const char days[7] = {"Sun", "Mon", ...}
                                ##                         Only the pointer will be saved so this variable can't be local which will be destroyed later.
                                ## ```
proc lv_calendar_get_btnmatrix*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   =====================
                       ##    Getter functions
                       ##   ====================
                       ##     
                       ##    Get the button matrix object of the calendar.
                       ##    It shows the dates and day names.
                       ##    @param obj   pointer to a calendar object
                       ##    @return      pointer to a the button matrix
                       ## ```
proc lv_calendar_get_today_date*(calendar: ptr lv_obj_t): ptr lv_calendar_date_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the today's date
                                ##    @param calendar pointer to a calendar object
                                ##    @return return pointer to an lv_calendar_date_t variable containing the date of today.
                                ## ```
proc lv_calendar_get_showed_date*(calendar: ptr lv_obj_t): ptr lv_calendar_date_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the currently showed
                                ##    @param calendar pointer to a calendar object
                                ##    @return pointer to an lv_calendar_date_t variable containing the date is being shown.
                                ## ```
proc lv_calendar_get_highlighted_dates*(calendar: ptr lv_obj_t): ptr lv_calendar_date_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the highlighted dates
                                ##    @param calendar pointer to a calendar object
                                ##    @return pointer to an lv_calendar_date_t array containing the dates.
                                ## ```
proc lv_calendar_get_highlighted_dates_num*(calendar: ptr lv_obj_t): uint16 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the number of the highlighted dates
                                ##    @param calendar pointer to a calendar object
                                ##    @return number of highlighted days
                                ## ```
proc lv_calendar_get_pressed_date*(calendar: ptr lv_obj_t;
                                   date: ptr lv_calendar_date_t): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the currently pressed day
                                ##    @param calendar pointer to a calendar object
                                ##    @param date store the pressed date here
                                ##    @return LV_RES_OK: there is a valid pressed date; LV_RES_INV: there is no pressed data
                                ## ```
proc lv_calendar_header_arrow_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Create a calendar header with drop-drowns to select the year and month
                                ##    @param parent    pointer to a calendar object.
                                ##    @return          the created header
                                ## ```
proc lv_calendar_header_dropdown_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Create a calendar header with drop-drowns to select the year and month
                                ##    @param parent    pointer to a calendar object.
                                ##    @return          the created header
                                ## ```
proc lv_canvas_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a canvas object
                ##    @param parent     pointer to an object, it will be the parent of the new canvas
                ##    @return           pointer to the created canvas
                ## ```
proc lv_canvas_set_buffer*(canvas: ptr lv_obj_t; buf: pointer; w: lv_coord_t;
                           h: lv_coord_t; cf: lv_color_format_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   =====================
                       ##    Setter functions
                       ##   ====================
                       ##     
                       ##    Set a buffer for the canvas.
                       ##    @param buf a buffer where the content of the canvas will be.
                       ##    The required size is (lv_img_color_format_get_px_size(cf) w) / 8 h)
                       ##    It can be allocated with lv_malloc() or
                       ##    it can be statically allocated array (e.g. static lv_color_t buf[100*50]) or
                       ##    it can be an address in RAM or external SRAM
                       ##    @param canvas pointer to a canvas object
                       ##    @param w width of the canvas
                       ##    @param h height of the canvas
                       ##    @param cf color format. LV_IMG_CF_...
                       ## ```
proc lv_canvas_set_px*(obj: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t;
                       color: lv_color_t; opa: lv_opa_t) {.importc, cdecl,
    implvglHdr.}
proc lv_canvas_set_palette*(canvas: ptr lv_obj_t; id: uint8; c: lv_color32_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the palette color of a canvas with index format. Valid only for LV_IMG_CF_INDEXED1/2/4/8
                                ##    @param canvas pointer to canvas object
                                ##    @param id the palette color to set:
                                ##      - for LV_IMG_CF_INDEXED1: 0..1
                                ##      - for LV_IMG_CF_INDEXED2: 0..3
                                ##      - for LV_IMG_CF_INDEXED4: 0..15
                                ##      - for LV_IMG_CF_INDEXED8: 0..255
                                ##    @param c the color to set
                                ## ```
proc lv_canvas_get_px*(obj: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t;
                       color: ptr lv_color_t; opa: ptr lv_opa_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the image of the canvas as a pointer to an lv_img_dsc_t variable.
                       ##    @param canvas pointer to a canvas object
                       ##    @return pointer to the image descriptor.
                       ## ```
proc lv_canvas_get_img*(canvas: ptr lv_obj_t): ptr lv_img_dsc_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the image of the canvas as a pointer to an lv_img_dsc_t variable.
                       ##    @param canvas pointer to a canvas object
                       ##    @return pointer to the image descriptor.
                       ## ```
proc lv_canvas_copy_buf*(canvas: ptr lv_obj_t; to_copy: pointer; x: lv_coord_t;
                         y: lv_coord_t; w: lv_coord_t; h: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   =====================
                       ##    Other functions
                       ##   ====================
                       ##     
                       ##    Copy a buffer to the canvas
                       ##    @param canvas pointer to a canvas object
                       ##    @param to_copy buffer to copy. The color format has to match with the canvas's buffer color
                       ##    format
                       ##    @param x left side of the destination position
                       ##    @param y top side of the destination position
                       ##    @param w width of the buffer to copy
                       ##    @param h height of the buffer to copy
                       ## ```
proc lv_canvas_transform*(canvas: ptr lv_obj_t; img: ptr lv_img_dsc_t;
                          angle: int16; zoom: uint16; offset_x: lv_coord_t;
                          offset_y: lv_coord_t; pivot_x: int32; pivot_y: int32;
                          antialias: bool) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Transform and image and store the result on a canvas.
                                                                         ##    @param canvas pointer to a canvas object to store the result of the transformation.
                                                                         ##    @param img pointer to an image descriptor to transform.
                                                                         ##                Can be the image descriptor of an other canvas too (lv_canvas_get_img()).
                                                                         ##    @param angle the angle of rotation (0..3600), 0.1 deg resolution
                                                                         ##    @param zoom zoom factor (256 no zoom);
                                                                         ##    @param offset_x offset X to tell where to put the result data on destination canvas
                                                                         ##    @param offset_y offset X to tell where to put the result data on destination canvas
                                                                         ##    @param pivot_x pivot X of rotation. Relative to the source canvas
                                                                         ##                   Set to source width / 2 to rotate around the center
                                                                         ##    @param pivot_y pivot Y of rotation. Relative to the source canvas
                                                                         ##                   Set to source height / 2 to rotate around the center
                                                                         ##    @param antialias apply anti-aliasing during the transformation. Looks better but slower.
                                                                         ## ```
proc lv_canvas_blur_hor*(canvas: ptr lv_obj_t; area: ptr lv_area_t; r: uint16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Apply horizontal blur on the canvas
                                ##    @param canvas pointer to a canvas object
                                ##    @param area the area to blur. If NULL the whole canvas will be blurred.
                                ##    @param r radius of the blur
                                ## ```
proc lv_canvas_blur_ver*(canvas: ptr lv_obj_t; area: ptr lv_area_t; r: uint16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Apply vertical blur on the canvas
                                ##    @param canvas pointer to a canvas object
                                ##    @param area the area to blur. If NULL the whole canvas will be blurred.
                                ##    @param r radius of the blur
                                ## ```
proc lv_canvas_fill_bg*(canvas: ptr lv_obj_t; color: lv_color_t; opa: lv_opa_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Fill the canvas with color
                                ##    @param canvas pointer to a canvas
                                ##    @param color the background color
                                ##    @param opa the desired opacity
                                ## ```
proc lv_canvas_draw_rect*(canvas: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t;
                          w: lv_coord_t; h: lv_coord_t;
                          draw_dsc: ptr lv_draw_rect_dsc_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Draw a rectangle on the canvas
                ##    @param canvas   pointer to a canvas object
                ##    @param x        left coordinate of the rectangle
                ##    @param y        top coordinate of the rectangle
                ##    @param w        width of the rectangle
                ##    @param h        height of the rectangle
                ##    @param draw_dsc descriptor of the rectangle
                ## ```
proc lv_canvas_draw_text*(canvas: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t;
                          max_w: lv_coord_t; draw_dsc: ptr lv_draw_label_dsc_t;
                          txt: cstring) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                      ##   Draw a text on the canvas.
                                                                      ##    @param canvas   pointer to a canvas object
                                                                      ##    @param x        left coordinate of the text
                                                                      ##    @param y        top coordinate of the text
                                                                      ##    @param max_w    max width of the text. The text will be wrapped to fit into this size
                                                                      ##    @param draw_dsc pointer to a valid label descriptor lv_draw_label_dsc_t
                                                                      ##    @param txt      text to display
                                                                      ## ```
proc lv_canvas_draw_img*(canvas: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t;
                         src: pointer; draw_dsc: ptr lv_draw_img_dsc_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Draw an image on the canvas
                                ##    @param canvas   pointer to a canvas object
                                ##    @param x        left coordinate of the image
                                ##    @param y        top coordinate of the image
                                ##    @param src      image source. Can be a pointer an lv_img_dsc_t variable or a path an image.
                                ##    @param draw_dsc pointer to a valid label descriptor lv_draw_img_dsc_t
                                ## ```
proc lv_canvas_draw_line*(canvas: ptr lv_obj_t;
                          points: UncheckedArray[lv_point_t]; point_cnt: uint32;
                          draw_dsc: ptr lv_draw_line_dsc_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Draw a line on the canvas
                ##    @param canvas     pointer to a canvas object
                ##    @param points     point of the line
                ##    @param point_cnt  number of points
                ##    @param draw_dsc   pointer to an initialized lv_draw_line_dsc_t variable
                ## ```
proc lv_canvas_draw_polygon*(canvas: ptr lv_obj_t;
                             points: UncheckedArray[lv_point_t];
                             point_cnt: uint32; draw_dsc: ptr lv_draw_rect_dsc_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Draw a polygon on the canvas
                                ##    @param canvas    pointer to a canvas object
                                ##    @param points    point of the polygon
                                ##    @param point_cnt number of points
                                ##    @param draw_dsc  pointer to an initialized lv_draw_rect_dsc_t variable
                                ## ```
proc lv_canvas_draw_arc*(canvas: ptr lv_obj_t; x: lv_coord_t; y: lv_coord_t;
                         r: lv_coord_t; start_angle: int32; end_angle: int32;
                         draw_dsc: ptr lv_draw_arc_dsc_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Draw an arc on the canvas
                ##    @param canvas pointer to a canvas object
                ##    @param x      origo x  of the arc
                ##    @param y      origo y of the arc
                ##    @param r      radius of the arc
                ##    @param start_angle start angle in degrees
                ##    @param end_angle   end angle in degrees
                ##    @param draw_dsc    pointer to an initialized lv_draw_line_dsc_t variable
                ## ```
proc lv_chart_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a chart object
                ##    @param parent    pointer to an object, it will be the parent of the new chart
                ##    @return          pointer to the created chart
                ## ```
proc lv_chart_set_type*(obj: ptr lv_obj_t; `type`: lv_chart_type_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a new type for a chart
                       ##    @param obj       pointer to a chart object
                       ##    @param type      new type of the chart (from 'lv_chart_type_t' enum)
                       ## ```
proc lv_chart_set_point_count*(obj: ptr lv_obj_t; cnt: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the number of points on a data line on a chart
                ##    @param obj       pointer to a chart object
                ##    @param cnt       new number of points on the data lines
                ## ```
proc lv_chart_set_range*(obj: ptr lv_obj_t; axis: lv_chart_axis_t;
                         min: lv_coord_t; max: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the minimal and maximal y values on an axis
                ##    @param obj       pointer to a chart object
                ##    @param axis      LV_CHART_AXIS_PRIMARY_Y or LV_CHART_AXIS_SECONDARY_Y
                ##    @param min       minimum value of the y axis
                ##    @param max       maximum value of the y axis
                ## ```
proc lv_chart_set_update_mode*(obj: ptr lv_obj_t;
                               update_mode: lv_chart_update_mode_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set update mode of the chart object. Affects
                       ##    @param obj              pointer to a chart object
                       ##    @param update_mode      the update mode
                       ## ```
proc lv_chart_set_div_line_count*(obj: ptr lv_obj_t; hdiv: uint8; vdiv: uint8) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the number of horizontal and vertical division lines
                                ##    @param obj       pointer to a chart object
                                ##    @param hdiv      number of horizontal division lines
                                ##    @param vdiv      number of vertical division lines
                                ## ```
proc lv_chart_set_zoom_x*(obj: ptr lv_obj_t; zoom_x: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Zoom into the chart in X direction
                ##    @param obj       pointer to a chart object
                ##    @param zoom_x    zoom in x direction. LV_ZOOM_NONE or 256 for no zoom, 512 double zoom
                ## ```
proc lv_chart_set_zoom_y*(obj: ptr lv_obj_t; zoom_y: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Zoom into the chart in Y direction
                ##    @param obj       pointer to a chart object
                ##    @param zoom_y    zoom in y direction. LV_ZOOM_NONE or 256 for no zoom, 512 double zoom
                ## ```
proc lv_chart_get_zoom_x*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get X zoom of a chart
                ##    @param obj       pointer to a chart object
                ##    @return          the X zoom value
                ## ```
proc lv_chart_get_zoom_y*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get Y zoom of a chart
                ##    @param obj       pointer to a chart object
                ##    @return          the Y zoom value
                ## ```
proc lv_chart_set_axis_tick*(obj: ptr lv_obj_t; axis: lv_chart_axis_t;
                             major_len: lv_coord_t; minor_len: lv_coord_t;
                             major_cnt: lv_coord_t; minor_cnt: lv_coord_t;
                             label_en: bool; draw_size: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the number of tick lines on an axis
                       ##    @param obj           pointer to a chart object
                       ##    @param axis          an axis which ticks count should be set
                       ##    @param major_len     length of major ticks
                       ##    @param minor_len     length of minor ticks
                       ##    @param major_cnt     number of major ticks on the axis
                       ##    @param minor_cnt     number of minor ticks between two major ticks
                       ##    @param label_en      true: enable label drawing on major ticks
                       ##    @param draw_size     extra size required to draw the tick and labels
                       ##                         (start with 20 px and increase if the ticks/labels are clipped)
                       ## ```
proc lv_chart_get_type*(obj: ptr lv_obj_t): lv_chart_type_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the type of a chart
                ##    @param obj       pointer to chart object
                ##    @return          type of the chart (from 'lv_chart_t' enum)
                ## ```
proc lv_chart_get_point_count*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the data point number per data line on chart
                ##    @param obj       pointer to chart object
                ##    @return          point number on each data line
                ## ```
proc lv_chart_get_x_start_point*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t): uint16 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the current index of the x-axis start point in the data array
                                ##    @param obj       pointer to a chart object
                                ##    @param ser       pointer to a data series on 'chart'
                                ##    @return          the index of the current x start point in the data array
                                ## ```
proc lv_chart_get_point_pos_by_id*(obj: ptr lv_obj_t;
                                   ser: ptr lv_chart_series_t; id: uint16;
                                   p_out: ptr lv_point_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the position of a point to the chart.
                ##    @param obj       pointer to a chart object
                ##    @param ser       pointer to series
                ##    @param id        the index.
                ##    @param p_out     store the result position here
                ## ```
proc lv_chart_refresh*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                        ##   Refresh a chart if its data line has changed
                                                                        ##    @param   obj   pointer to chart object
                                                                        ## ```
proc lv_chart_add_series*(obj: ptr lv_obj_t; color: lv_color_t;
                          axis: lv_chart_axis_t): ptr lv_chart_series_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   ======================
                                ##    Series
                                ##   =====================
                                ##     
                                ##    Allocate and add a data series to the chart
                                ##    @param obj       pointer to a chart object
                                ##    @param color     color of the data series
                                ##    @param axis      the y axis to which the series should be attached (::LV_CHART_AXIS_PRIMARY_Y or ::LV_CHART_AXIS_SECONDARY_Y)
                                ##    @return          pointer to the allocated data series or NULL on failure
                                ## ```
proc lv_chart_remove_series*(obj: ptr lv_obj_t; series: ptr lv_chart_series_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Deallocate and remove a data series from a chart
                                ##    @param obj       pointer to a chart object
                                ##    @param series    pointer to a data series on 'chart'
                                ## ```
proc lv_chart_hide_series*(chart: ptr lv_obj_t; series: ptr lv_chart_series_t;
                           hide: bool) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                     ##   Hide/Unhide a single series of a chart.
                                                                     ##    @param chart     pointer to a chart object.
                                                                     ##    @param series    pointer to a series object
                                                                     ##    @param hide      true: hide the series
                                                                     ## ```
proc lv_chart_set_series_color*(chart: ptr lv_obj_t;
                                series: ptr lv_chart_series_t; color: lv_color_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Change the color of a series
                                ##    @param chart     pointer to a chart object.
                                ##    @param series    pointer to a series object
                                ##    @param color     the new color of the series
                                ## ```
proc lv_chart_set_x_start_point*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                                 id: uint16) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Set the index of the x-axis start point in the data array.
                                                                           ##    This point will be considers the first (left) point and the other points will be drawn after it.
                                                                           ##    @param obj       pointer to a chart object
                                                                           ##    @param ser       pointer to a data series on 'chart'
                                                                           ##    @param id        the index of the x point in the data array
                                                                           ## ```
proc lv_chart_get_series_next*(chart: ptr lv_obj_t; ser: ptr lv_chart_series_t): ptr lv_chart_series_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the next series.
                                ##    @param chart     pointer to a chart
                                ##    @param ser      the previous series or NULL to get the first
                                ##    @return          the next series or NULL if there is no more.
                                ## ```
proc lv_chart_add_cursor*(obj: ptr lv_obj_t; color: lv_color_t; dir: lv_dir_t): ptr lv_chart_cursor_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Cursor
                                ##   ====================
                                ##     
                                ##    Add a cursor with a given color
                                ##    @param obj       pointer to chart object
                                ##    @param color     color of the cursor
                                ##    @param dir       direction of the cursor. LV_DIR_RIGHT/LEFT/TOP/DOWN/HOR/VER/ALL. OR-ed values are possible
                                ##    @return          pointer to the created cursor
                                ## ```
proc lv_chart_set_cursor_pos*(chart: ptr lv_obj_t;
                              cursor: ptr lv_chart_cursor_t; pos: ptr lv_point_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the coordinate of the cursor with respect to the paddings
                                ##    @param chart     pointer to a chart object
                                ##    @param cursor    pointer to the cursor
                                ##    @param pos       the new coordinate of cursor relative to the chart
                                ## ```
proc lv_chart_set_cursor_point*(chart: ptr lv_obj_t;
                                cursor: ptr lv_chart_cursor_t;
                                ser: ptr lv_chart_series_t; point_id: uint16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Stick the cursor to a point
                                ##    @param chart     pointer to a chart object
                                ##    @param cursor    pointer to the cursor
                                ##    @param ser       pointer to a series
                                ##    @param point_id  the point's index or LV_CHART_POINT_NONE to not assign to any points.
                                ## ```
proc lv_chart_get_cursor_point*(chart: ptr lv_obj_t;
                                cursor: ptr lv_chart_cursor_t): lv_point_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the coordinate of the cursor with respect to the paddings
                                ##    @param chart     pointer to a chart object
                                ##    @param cursor    pointer to cursor
                                ##    @return          coordinate of the cursor as lv_point_t
                                ## ```
proc lv_chart_set_all_value*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                             value: lv_coord_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   =====================
                                                                              ##    Set/Get value(s)
                                                                              ##   ====================
                                                                              ##     
                                                                              ##    Initialize all data points of a series with a value
                                                                              ##    @param obj       pointer to chart object
                                                                              ##    @param ser       pointer to a data series on 'chart'
                                                                              ##    @param value     the new value for all points. LV_CHART_POINT_NONE can be used to hide the points.
                                                                              ## ```
proc lv_chart_set_next_value*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                              value: lv_coord_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Set the next point's Y value according to the update mode policy.
                                                                               ##    @param obj       pointer to chart object
                                                                               ##    @param ser       pointer to a data series on 'chart'
                                                                               ##    @param value     the new value of the next data
                                                                               ## ```
proc lv_chart_set_next_value2*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                               x_value: lv_coord_t; y_value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the next point's X and Y value according to the update mode policy.
                                ##    @param obj       pointer to chart object
                                ##    @param ser       pointer to a data series on 'chart'
                                ##    @param x_value   the new X value of the next data
                                ##    @param y_value   the new Y value of the next data
                                ## ```
proc lv_chart_set_value_by_id*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                               id: uint16; value: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set an individual point's y value of a chart's series directly based on its index
                ##    @param obj     pointer to a chart object
                ##    @param ser     pointer to a data series on 'chart'
                ##    @param id      the index of the x point in the array
                ##    @param value   value to assign to array point
                ## ```
proc lv_chart_set_value_by_id2*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                                id: uint16; x_value: lv_coord_t;
                                y_value: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set an individual point's x and y value of a chart's series directly based on its index
                ##    Can be used only with LV_CHART_TYPE_SCATTER.
                ##    @param obj       pointer to chart object
                ##    @param ser       pointer to a data series on 'chart'
                ##    @param id        the index of the x point in the array
                ##    @param x_value   the new X value of the next data
                ##    @param y_value   the new Y value of the next data
                ## ```
proc lv_chart_set_ext_y_array*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                               array: UncheckedArray[lv_coord_t]) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set an external array for the y data points to use for the chart
                       ##    NOTE: It is the users responsibility to make sure the point_cnt matches the external array size.
                       ##    @param obj       pointer to a chart object
                       ##    @param ser       pointer to a data series on 'chart'
                       ##    @param array     external array of points for chart
                       ## ```
proc lv_chart_set_ext_x_array*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                               array: UncheckedArray[lv_coord_t]) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set an external array for the x data points to use for the chart
                       ##    NOTE: It is the users responsibility to make sure the point_cnt matches the external array size.
                       ##    @param obj       pointer to a chart object
                       ##    @param ser       pointer to a data series on 'chart'
                       ##    @param array     external array of points for chart
                       ## ```
proc lv_chart_get_y_array*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t): ptr lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the array of y values of a series
                                ##    @param obj   pointer to a chart object
                                ##    @param ser   pointer to a data series on 'chart'
                                ##    @return      the array of values with 'point_count' elements
                                ## ```
proc lv_chart_get_x_array*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t): ptr lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the array of x values of a series
                                ##    @param obj   pointer to a chart object
                                ##    @param ser   pointer to a data series on 'chart'
                                ##    @return      the array of values with 'point_count' elements
                                ## ```
proc lv_chart_get_pressed_point*(obj: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the index of the currently pressed point. It's the same for every series.
                ##    @param obj       pointer to a chart object
                ##    @return          the index of the point [0 .. point count] or LV_CHART_POINT_ID_NONE if no point is being pressed
                ## ```
proc lv_checkbox_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a check box object
                ##    @param parent    pointer to an object, it will be the parent of the new button
                ##    @return          pointer to the created check box
                ## ```
proc lv_checkbox_set_text*(obj: ptr lv_obj_t; txt: cstring) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set the text of a check box. txt will be copied and may be deallocated
                ##    after this function returns.
                ##    @param obj    pointer to a check box
                ##    @param txt   the text of the check box. NULL to refresh with the current text.
                ## ```
proc lv_checkbox_set_text_static*(obj: ptr lv_obj_t; txt: cstring) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the text of a check box. txt must not be deallocated during the life
                       ##    of this checkbox.
                       ##    @param obj    pointer to a check box
                       ##    @param txt   the text of the check box.
                       ## ```
proc lv_checkbox_get_text*(obj: ptr lv_obj_t): cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Get the text of a check box
                ##    @param obj    pointer to check box object
                ##    @return      pointer to the text of the check box
                ## ```
proc lv_colorwheel_create*(parent: ptr lv_obj_t; knob_recolor: bool): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Create a color picker object with disc shape
                                ##    @param parent pointer to an object, it will be the parent of the new color picker
                                ##    @param knob_recolor true: set the knob's color to the current color
                                ##    @return pointer to the created color picker
                                ## ```
proc lv_colorwheel_set_hsv*(obj: ptr lv_obj_t; hsv: lv_color_hsv_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_colorwheel_set_rgb*(obj: ptr lv_obj_t; color: lv_color_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_colorwheel_set_mode*(obj: ptr lv_obj_t; mode: lv_colorwheel_mode_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the current color mode.
                                ##    @param obj pointer to color wheel object
                                ##    @param mode color mode (hue/sat/val)
                                ## ```
proc lv_colorwheel_set_mode_fixed*(obj: ptr lv_obj_t; fixed: bool) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set if the color mode is changed on long press on center
                       ##    @param obj pointer to color wheel object
                       ##    @param fixed color mode cannot be changed on long press
                       ## ```
proc lv_colorwheel_get_hsv*(obj: ptr lv_obj_t): lv_color_hsv_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Get the current selected hsv of a color wheel.
                ##    @param obj pointer to color wheel object
                ##    @return current selected hsv
                ## ```
proc lv_colorwheel_get_rgb*(obj: ptr lv_obj_t): lv_color_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the current selected color of a color wheel.
                ##    @param obj pointer to color wheel object
                ##    @return color current selected color
                ## ```
proc lv_colorwheel_get_color_mode*(obj: ptr lv_obj_t): lv_colorwheel_mode_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the current color mode.
                                ##    @param obj pointer to color wheel object
                                ##    @return color mode (hue/sat/val)
                                ## ```
proc lv_colorwheel_get_color_mode_fixed*(obj: ptr lv_obj_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_dropdown_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a drop-down list object
                ##    @param parent pointer to an object, it will be the parent of the new drop-down list
                ##    @return pointer to the created drop-down list
                ## ```
proc lv_dropdown_set_text*(obj: ptr lv_obj_t; txt: cstring) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set text of the drop-down list's button.
                ##    If set to NULL the selected option's text will be displayed on the button.
                ##    If set to a specific text then that text will be shown regardless of the selected option.
                ##    @param obj       pointer to a drop-down list object
                ##    @param txt       the text as a string (Only its pointer is saved)
                ## ```
proc lv_dropdown_set_options*(obj: ptr lv_obj_t; options: cstring) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the options in a drop-down list from a string.
                       ##    The options will be copied and saved in the object so the options can be destroyed after calling this function
                       ##    @param obj       pointer to drop-down list object
                       ##    @param options   a string with '\n' separated options. E.g. "One\nTwo\nThree"
                       ## ```
proc lv_dropdown_set_options_static*(obj: ptr lv_obj_t; options: cstring) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the options in a drop-down list from a static string (global, static or dynamically allocated).
                                ##    Only the pointer of the option string will be saved.
                                ##    @param obj       pointer to drop-down list object
                                ##    @param options   a static string with '\n' separated options. E.g. "One\nTwo\nThree"
                                ## ```
proc lv_dropdown_add_option*(obj: ptr lv_obj_t; option: cstring; pos: uint32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Add an options to a drop-down list from a string.  Only works for non-static options.
                                ##    @param obj       pointer to drop-down list object
                                ##    @param option    a string without '\n'. E.g. "Four"
                                ##    @param pos       the insert position, indexed from 0, LV_DROPDOWN_POS_LAST = end of string
                                ## ```
proc lv_dropdown_clear_options*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Clear all options in a drop-down list.  Works with both static and dynamic options.
                                                                                 ##    @param obj       pointer to drop-down list object
                                                                                 ## ```
proc lv_dropdown_set_selected*(obj: ptr lv_obj_t; sel_opt: uint16) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the selected option
                       ##    @param obj       pointer to drop-down list object
                       ##    @param sel_opt   id of the selected option (0 ... number of option - 1);
                       ## ```
proc lv_dropdown_set_dir*(obj: ptr lv_obj_t; dir: lv_dir_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the direction of the a drop-down list
                ##    @param obj       pointer to a drop-down list object
                ##    @param dir       LV_DIR_LEFT/RIGHT/TOP/BOTTOM
                ## ```
proc lv_dropdown_set_symbol*(obj: ptr lv_obj_t; symbol: pointer) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set an arrow or other symbol to display when on drop-down list's button. Typically a down caret or arrow.
                       ##    @param obj       pointer to drop-down list object
                       ##    @param symbol    a text like LV_SYMBOL_DOWN, an image (pointer or path) or NULL to not draw symbol icon
                       ##    @note angle and zoom transformation can be applied if the symbol is an image.
                       ##    E.g. when drop down is checked (opened) rotate the symbol by 180 degree
                       ## ```
proc lv_dropdown_set_selected_highlight*(obj: ptr lv_obj_t; en: bool) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set whether the selected option in the list should be highlighted or not
                       ##    @param obj       pointer to drop-down list object
                       ##    @param en        true: highlight enabled; false: disabled
                       ## ```
proc lv_dropdown_get_list*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Get the list of a drop-down to allow styling or other modifications
                ##    @param obj       pointer to a drop-down list object
                ##    @return          pointer to the list of the drop-down
                ## ```
proc lv_dropdown_get_text*(obj: ptr lv_obj_t): cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get text of the drop-down list's button.
                ##    @param obj   pointer to a drop-down list object
                ##    @return      the text as string, NULL if no text
                ## ```
proc lv_dropdown_get_options*(obj: ptr lv_obj_t): cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the options of a drop-down list
                ##    @param obj       pointer to drop-down list object
                ##    @return          the options separated by '\n'-s (E.g. "Option1\nOption2\nOption3")
                ## ```
proc lv_dropdown_get_selected*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the index of the selected option
                ##    @param obj       pointer to drop-down list object
                ##    @return          index of the selected option (0 ... number of option - 1);
                ## ```
proc lv_dropdown_get_option_cnt*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the total number of options
                ##    @param obj       pointer to drop-down list object
                ##    @return          the total number of options in the list
                ## ```
proc lv_dropdown_get_selected_str*(obj: ptr lv_obj_t; buf: cstring;
                                   buf_size: uint32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the current selected option as a string
                ##    @param obj       pointer to drop-down object
                ##    @param buf       pointer to an array to store the string
                ##    @param buf_size  size of buf in bytes. 0: to ignore it.
                ## ```
proc lv_dropdown_get_option_index*(obj: ptr lv_obj_t; option: cstring): int32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the index of an option.
                                ##    @param obj       pointer to drop-down object
                                ##    @param option    an option as string
                                ##    @return          index of option in the list of all options. -1 if not found.
                                ## ```
proc lv_dropdown_get_symbol*(obj: ptr lv_obj_t): cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the symbol on the drop-down list. Typically a down caret or arrow.
                ##    @param obj       pointer to drop-down list object
                ##    @return          the symbol or NULL if not enabled
                ## ```
proc lv_dropdown_get_selected_highlight*(obj: ptr lv_obj_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_dropdown_get_dir*(obj: ptr lv_obj_t): lv_dir_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the direction of the drop-down list
                ##    @param obj       pointer to a drop-down list object
                ##    @return          LV_DIR_LEF/RIGHT/TOP/BOTTOM
                ## ```
proc lv_dropdown_open*(dropdown_obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   =====================
                                                                                 ##    Other functions
                                                                                 ##   ====================
                                                                                 ##     
                                                                                 ##    Open the drop.down list
                                                                                 ##    @param dropdown_obj       pointer to drop-down list object
                                                                                 ## ```
proc lv_dropdown_close*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Close (Collapse) the drop-down list
                                                                         ##    @param obj       pointer to drop-down list object
                                                                         ## ```
proc lv_dropdown_is_open*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_imgbtn_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create an image button object
                ##    @param parent pointer to an object, it will be the parent of the new image button
                ##    @return pointer to the created image button
                ## ```
proc lv_imgbtn_set_src*(imgbtn: ptr lv_obj_t; state: lv_imgbtn_state_t;
                        src_left: pointer; src_mid: pointer; src_right: pointer) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   ======================
                                ##    Add/remove functions
                                ##   =====================
                                ##     =====================
                                ##    Setter functions
                                ##   ====================
                                ##     
                                ##    Set images for a state of the image button
                                ##    @param imgbtn pointer to an image button object
                                ##    @param state for which state set the new image
                                ##    @param src_left pointer to an image source for the left side of the button (a C array or path to
                                ##    a file)
                                ##    @param src_mid pointer to an image source for the middle of the button (ideally 1px wide) (a C
                                ##    array or path to a file)
                                ##    @param src_right pointer to an image source for the right side of the button (a C array or path
                                ##    to a file)
                                ## ```
proc lv_imgbtn_set_state*(imgbtn: ptr lv_obj_t; state: lv_imgbtn_state_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Use this function instead of lv_obj_add/clear_state to set a state manually
                                ##    @param imgbtn pointer to an image button object
                                ##    @param state  the new state
                                ## ```
proc lv_imgbtn_get_src_left*(imgbtn: ptr lv_obj_t; state: lv_imgbtn_state_t): pointer {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Getter functions
                                ##   ====================
                                ##     
                                ##    Get the left image in a given state
                                ##    @param imgbtn pointer to an image button object
                                ##    @param state the state where to get the image (from lv_btn_state_t) 
                                ##    @return pointer to the left image source (a C array or path to a file)
                                ## ```
proc lv_imgbtn_get_src_middle*(imgbtn: ptr lv_obj_t; state: lv_imgbtn_state_t): pointer {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the middle image in a given state
                                ##    @param imgbtn pointer to an image button object
                                ##    @param state the state where to get the image (from lv_btn_state_t) 
                                ##    @return pointer to the middle image source (a C array or path to a file)
                                ## ```
proc lv_imgbtn_get_src_right*(imgbtn: ptr lv_obj_t; state: lv_imgbtn_state_t): pointer {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the right image in a given state
                                ##    @param imgbtn pointer to an image button object
                                ##    @param state the state where to get the image (from lv_btn_state_t) 
                                ##    @return pointer to the left image source (a C array or path to a file)
                                ## ```
proc lv_keyboard_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a Keyboard object
                ##    @param parent pointer to an object, it will be the parent of the new keyboard
                ##    @return pointer to the created keyboard
                ## ```
proc lv_keyboard_set_textarea*(kb: ptr lv_obj_t; ta: ptr lv_obj_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   =====================
                       ##    Setter functions
                       ##   ====================
                       ##     
                       ##    Assign a Text Area to the Keyboard. The pressed characters will be put there.
                       ##    @param kb pointer to a Keyboard object
                       ##    @param ta pointer to a Text Area object to write there
                       ## ```
proc lv_keyboard_set_mode*(kb: ptr lv_obj_t; mode: lv_keyboard_mode_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a new a mode (text or number map)
                                ##    @param kb pointer to a Keyboard object
                                ##    @param mode the mode from 'lv_keyboard_mode_t'
                                ## ```
proc lv_keyboard_set_popovers*(kb: ptr lv_obj_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Show the button title in a popover when pressed.
                ##    @param kb pointer to a Keyboard object
                ##    @param en whether "popovers" mode is enabled
                ## ```
proc lv_keyboard_set_map*(kb: ptr lv_obj_t; mode: lv_keyboard_mode_t;
                          map: UncheckedArray[cstring];
                          ctrl_map: UncheckedArray[lv_btnmatrix_ctrl_t]) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a new map for the keyboard
                                ##    @param kb pointer to a Keyboard object
                                ##    @param mode keyboard map to alter 'lv_keyboard_mode_t'
                                ##    @param map pointer to a string array to describe the map.
                                ##               See 'lv_btnmatrix_set_map()' for more info.
                                ##    @param ctrl_map
                                ## ```
proc lv_keyboard_get_textarea*(kb: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Assign a Text Area to the Keyboard. The pressed characters will be put there.
                ##    @param kb pointer to a Keyboard object
                ##    @return pointer to the assigned Text Area object
                ## ```
proc lv_keyboard_get_mode*(kb: ptr lv_obj_t): lv_keyboard_mode_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a new a mode (text or number map)
                       ##    @param kb pointer to a Keyboard object
                       ##    @return the current mode from 'lv_keyboard_mode_t'
                       ## ```
proc lv_btnmatrix_get_popovers*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_keyboard_get_map_array*(kb: ptr lv_obj_t): ptr cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the current map of a keyboard
                ##    @param kb pointer to a keyboard object
                ##    @return the current map
                ## ```
proc lv_keyboard_get_selected_btn*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the index of the lastly "activated" button by the user (pressed, released, focused etc)
                ##    Useful in the event_cb to get the text of the button, check if hidden etc.
                ##    @param obj       pointer to button matrix object
                ##    @return          index of the last released button (LV_BTNMATRIX_BTN_NONE: if unset)
                ## ```
proc lv_keyboard_get_btn_text*(obj: ptr lv_obj_t; btn_id: uint16): cstring {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the button's text
                                ##    @param obj       pointer to button matrix object
                                ##    @param btn_id    the index a button not counting new line characters.
                                ##    @return          text of btn_index button
                                ## ```
proc lv_keyboard_def_event_cb*(e: ptr lv_event_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   =====================
                                                                                ##    Other functions
                                                                                ##   ====================
                                                                                ##     
                                                                                ##    Default keyboard event to add characters to the Text area and change the map.
                                                                                ##    If a custom event_cb is added to the keyboard this function can be called from it to handle the
                                                                                ##    button clicks
                                                                                ##    @param e the triggering event
                                                                                ## ```
proc lv_led_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a led object
                ##    @param parent pointer to an object, it will be the parent of the new led
                ##    @return pointer to the created led
                ## ```
proc lv_led_set_color*(led: ptr lv_obj_t; color: lv_color_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the color of the LED
                ##    @param led       pointer to a LED object
                ##    @param color     the color of the LED
                ## ```
proc lv_led_set_brightness*(led: ptr lv_obj_t; bright: uint8) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the brightness of a LED object
                ##    @param led pointer to a LED object
                ##    @param bright LV_LED_BRIGHT_MIN (max. dark) ... LV_LED_BRIGHT_MAX (max. light)
                ## ```
proc lv_led_on*(led: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                 ##   Light on a LED
                                                                 ##    @param led pointer to a LED object
                                                                 ## ```
proc lv_led_off*(led: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                  ##   Light off a LED
                                                                  ##    @param led pointer to a LED object
                                                                  ## ```
proc lv_led_toggle*(led: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                     ##   Toggle the state of a LED
                                                                     ##    @param led pointer to a LED object
                                                                     ## ```
proc lv_led_get_brightness*(obj: ptr lv_obj_t): uint8 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the brightness of a LED object
                ##    @param obj pointer to LED object
                ##    @return bright 0 (max. dark) ... 255 (max. light)
                ## ```
proc lv_line_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a line object
                ##    @param parent pointer to an object, it will be the parent of the new line
                ##    @return pointer to the created line
                ## ```
#proc lv_line_set_points*(obj: ptr lv_obj_t; points: ptr lv_point_t; point_num: uint16) {.importc, cdecl, implvglHdr.}

proc lv_line_set_points*(obj: ptr lv_obj_t; points: UncheckedArray[lv_point_t];
                         point_num: uint16) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   =====================
                                                                          ##    Setter functions
                                                                          ##   ====================
                                                                          ##     
                                                                          ##    Set an array of points. The line object will connect these points.
                                                                          ##    @param obj           pointer to a line object
                                                                          ##    @param points        an array of points. Only the address is saved, so the array needs to be alive while the line exists
                                                                          ##    @param point_num     number of points in 'point_a'
                                                                          ## ```
proc lv_line_set_y_invert*(obj: ptr lv_obj_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Enable (or disable) the y coordinate inversion.
                ##    If enabled then y will be subtracted from the height of the object,
                ##    therefore the y = 0 coordinate will be on the bottom.
                ##    @param obj       pointer to a line object
                ##    @param en        true: enable the y inversion, false:disable the y inversion
                ## ```
proc lv_line_get_y_invert*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_list_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a list object
                ##    @param parent    pointer to an object, it will be the parent of the new list
                ##    @return          pointer to the created list
                ## ```
proc lv_list_add_text*(list: ptr lv_obj_t; txt: cstring): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Add text to a list
                                ##    @param list      pointer to a list, it will be the parent of the new label
                                ##    @param txt       Text of the new label
                                ##    @return          pointer to the created label
                                ## ```
proc lv_list_add_btn*(list: ptr lv_obj_t; icon: pointer; txt: cstring): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Add button to a list
                                ##    @param list      pointer to a list, it will be the parent of the new button
                                ##    @param icon      icon for the button, when NULL it will have no icon
                                ##    @param txt       Text of the new button, when NULL no text will be added
                                ##    @return          pointer to the created button
                                ## ```
proc lv_list_get_btn_text*(list: ptr lv_obj_t; btn: ptr lv_obj_t): cstring {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get text of a given list button
                                ##    @param list      pointer to a list
                                ##    @param btn       pointer to the button
                                ##    @return          Text of btn, if btn doesn't have text "" will be returned
                                ## ```
proc lv_list_set_btn_text*(list: ptr lv_obj_t; btn: ptr lv_obj_t; txt: cstring) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set text of a given list button
                                ##    @param list      pointer to a list
                                ##    @param btn       pointer to the button
                                ##    @param txt       pointer to the text
                                ##    @return          Text of btn, if btn doesn't have text "" will be returned
                                ## ```
proc lv_menu_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a menu object
                ##    @param parent pointer to an object, it will be the parent of the new menu
                ##    @return pointer to the created menu
                ## ```
proc lv_menu_page_create*(parent: ptr lv_obj_t; title: cstring): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Create a menu page object
                                ##    @param parent pointer to menu object
                                ##    @param title pointer to text for title in header (NULL to not display title)
                                ##    @return pointer to the created menu page
                                ## ```
proc lv_menu_cont_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Create a menu cont object
                ##    @param parent pointer to an object, it will be the parent of the new menu cont object
                ##    @return pointer to the created menu cont
                ## ```
proc lv_menu_section_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Create a menu section object
                       ##    @param parent pointer to an object, it will be the parent of the new menu section object
                       ##    @return pointer to the created menu section
                       ## ```
proc lv_menu_separator_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Create a menu separator object
                       ##    @param parent pointer to an object, it will be the parent of the new menu separator object
                       ##    @return pointer to the created menu separator
                       ## ```
proc lv_menu_set_page*(obj: ptr lv_obj_t; page: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set menu page to display in main
                ##    @param obj pointer to the menu
                ##    @param page pointer to the menu page to set (NULL to clear main and clear menu history)
                ## ```
proc lv_menu_set_page_title*(page: ptr lv_obj_t; title: cstring) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set menu page title
                       ##    @param page pointer to the menu page
                       ##    @param title pointer to text for title in header (NULL to not display title)
                       ## ```
proc lv_menu_set_page_title_static*(page: ptr lv_obj_t; title: cstring) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set menu page title with a static text. It will not be saved by the label so the 'text' variable
                                ##    has to be 'alive' while the page exists.
                                ##    @param page pointer to the menu page
                                ##    @param title pointer to text for title in header (NULL to not display title)
                                ## ```
proc lv_menu_set_sidebar_page*(obj: ptr lv_obj_t; page: ptr lv_obj_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set menu page to display in sidebar
                       ##    @param obj pointer to the menu
                       ##    @param page pointer to the menu page to set (NULL to clear sidebar)
                       ## ```
proc lv_menu_set_mode_header*(obj: ptr lv_obj_t;
                              mode_header: lv_menu_mode_header_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the how the header should behave and its position
                       ##    @param obj pointer to a menu
                       ##    @param mode_header
                       ## ```
proc lv_menu_set_mode_root_back_btn*(obj: ptr lv_obj_t; mode_root_back_btn: lv_menu_mode_root_back_btn_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set whether back button should appear at root
                                ##    @param obj pointer to a menu
                                ##    @param mode_root_back_btn
                                ## ```
proc lv_menu_set_load_page_event*(menu: ptr lv_obj_t; obj: ptr lv_obj_t;
                                  page: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Add menu to the menu item
                ##    @param menu pointer to the menu
                ##    @param obj pointer to the obj
                ##    @param page pointer to the page to load when obj is clicked
                ## ```
proc lv_menu_get_cur_main_page*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   =====================
                       ##    Getter functions
                       ##   ====================
                       ##     
                       ##   Get a pointer to menu page that is currently displayed in main
                       ##   @param obj pointer to the menu
                       ##   @return pointer to current page
                       ## ```
proc lv_menu_get_cur_sidebar_page*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get a pointer to menu page that is currently displayed in sidebar
                       ##   @param obj pointer to the menu
                       ##   @return pointer to current page
                       ## ```
proc lv_menu_get_main_header*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get a pointer to main header obj
                ##   @param obj pointer to the menu
                ##   @return pointer to main header obj
                ## ```
proc lv_menu_get_main_header_back_btn*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get a pointer to main header back btn obj
                                ##   @param obj pointer to the menu
                                ##   @return pointer to main header back btn obj
                                ## ```
proc lv_menu_get_sidebar_header*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get a pointer to sidebar header obj
                       ##   @param obj pointer to the menu
                       ##   @return pointer to sidebar header obj
                       ## ```
proc lv_menu_get_sidebar_header_back_btn*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get a pointer to sidebar header obj
                                ##   @param obj pointer to the menu
                                ##   @return pointer to sidebar header back btn obj
                                ## ```
proc lv_menu_back_btn_is_root*(menu: ptr lv_obj_t; obj: ptr lv_obj_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_menu_clear_history*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   Clear menu history
                                                                             ##    @param obj pointer to the menu
                                                                             ## ```
proc lv_meter_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a Meter object
                ##    @param parent pointer to an object, it will be the parent of the new bar.
                ##    @return pointer to the created meter
                ## ```
proc lv_meter_set_scale_ticks*(obj: ptr lv_obj_t; cnt: uint16; width: uint16;
                               len: uint16; color: lv_color_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the properties of the ticks of a scale
                ##    @param obj       pointer to a meter object
                ##    @param cnt       number of tick lines
                ##    @param width     width of tick lines
                ##    @param len       length of tick lines
                ##    @param color     color of tick lines
                ## ```
proc lv_meter_set_scale_major_ticks*(obj: ptr lv_obj_t; nth: uint16;
                                     width: uint16; len: uint16;
                                     color: lv_color_t; label_gap: int16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Make some "normal" ticks major ticks and set their attributes.
                                ##    Texts with the current value are also added to the major ticks.
                                ##    @param obj           pointer to a meter object
                                ##    @param nth           make every Nth normal tick major tick. (start from the first on the left)
                                ##    @param width         width of the major ticks
                                ##    @param len           length of the major ticks
                                ##    @param color         color of the major ticks
                                ##    @param label_gap     gap between the major ticks and the labels
                                ## ```
proc lv_meter_set_scale_range*(obj: ptr lv_obj_t; min: int32; max: int32;
                               angle_range: uint32; rotation: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the value and angular range of a scale.
                       ##    @param obj           pointer to a meter object
                       ##    @param min           the minimum value
                       ##    @param max           the maximal value
                       ##    @param angle_range   the angular range of the scale
                       ##    @param rotation      the angular offset from the 3 o'clock position (clock-wise)
                       ## ```
proc lv_meter_add_needle_line*(obj: ptr lv_obj_t; width: uint16;
                               color: lv_color_t; r_mod: int16): ptr lv_meter_indicator_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Add indicator
                                ##   ====================
                                ##     
                                ##    Add a needle line indicator the scale
                                ##    @param obj           pointer to a meter object
                                ##    @param width         width of the line
                                ##    @param color         color of the line
                                ##    @param r_mod         the radius modifier (added to the scale's radius) to get the lines length
                                ##    @return              the new indicator or NULL on allocation failure.
                                ## ```
proc lv_meter_add_needle_img*(obj: ptr lv_obj_t; src: pointer;
                              pivot_x: lv_coord_t; pivot_y: lv_coord_t): ptr lv_meter_indicator_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Add a needle image indicator the scale
                                ##    @param obj           pointer to a meter object
                                ##    @param src           the image source of the indicator. path or pointer to ::lv_img_dsc_t
                                ##    @param pivot_x       the X pivot point of the needle
                                ##    @param pivot_y       the Y pivot point of the needle
                                ##    @return              the new indicator or NULL on allocation failure.
                                ##    @note                the needle image should point to the right, like -O----->
                                ## ```
proc lv_meter_add_arc*(obj: ptr lv_obj_t; width: uint16; color: lv_color_t;
                       r_mod: int16): ptr lv_meter_indicator_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Add an arc indicator the scale
                ##    @param obj           pointer to a meter object
                ##    @param width         width of the arc
                ##    @param color         color of the arc
                ##    @param r_mod         the radius modifier (added to the scale's radius) to get the outer radius of the arc
                ##    @return              the new indicator or NULL on allocation failure.
                ## ```
proc lv_meter_add_scale_lines*(obj: ptr lv_obj_t; color_start: lv_color_t;
                               color_end: lv_color_t; local: bool;
                               width_mod: int16): ptr lv_meter_indicator_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Add a scale line indicator the scale. It will modify the ticks.
                                ##    @param obj           pointer to a meter object
                                ##    @param color_start   the start color
                                ##    @param color_end     the end color
                                ##    @param local         tell how to map start and end color. true: the indicator's start and end_value; false: the scale's min max value
                                ##    @param width_mod     add this the affected tick's width
                                ##    @return              the new indicator or NULL on allocation failure.
                                ## ```
proc lv_meter_set_indicator_value*(obj: ptr lv_obj_t;
                                   indic: ptr lv_meter_indicator_t; value: int32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Set indicator value
                                ##   ====================
                                ##     
                                ##    Set the value of the indicator. It will set start and and value to the same value
                                ##    @param obj           pointer to a meter object
                                ##    @param indic         pointer to an indicator
                                ##    @param value         the new value
                                ## ```
proc lv_meter_set_indicator_start_value*(obj: ptr lv_obj_t;
    indic: ptr lv_meter_indicator_t; value: int32) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Set the start value of the indicator.
                                                                                 ##    @param obj           pointer to a meter object
                                                                                 ##    @param indic         pointer to an indicator
                                                                                 ##    @param value         the new value
                                                                                 ## ```
proc lv_meter_set_indicator_end_value*(obj: ptr lv_obj_t;
                                       indic: ptr lv_meter_indicator_t;
                                       value: int32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the start value of the indicator.
                ##    @param obj           pointer to a meter object
                ##    @param indic         pointer to an indicator
                ##    @param value         the new value
                ## ```
proc lv_msgbox_create*(parent: ptr lv_obj_t; title: cstring; txt: cstring;
                       btn_txts: UncheckedArray[cstring]; add_close_btn: bool): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Create a message box object
                                ##    @param parent        pointer to parent or NULL to create a full screen modal message box
                                ##    @param title         the title of the message box
                                ##    @param txt           the text of the message box
                                ##    @param btn_txts      the buttons as an array of texts terminated by an "" element. E.g. {"btn1", "btn2", ""}
                                ##    @param add_close_btn true: add a close button
                                ##    @return              pointer to the message box object
                                ## ```
proc lv_msgbox_get_title*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_msgbox_get_close_btn*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_msgbox_get_text*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_msgbox_get_content*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_msgbox_get_btns*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_msgbox_get_active_btn*(mbox: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the index of the selected button
                ##    @param mbox message box object
                ##    @return     index of the button (LV_BTNMATRIX_BTN_NONE: if unset)
                ## ```
proc lv_msgbox_get_active_btn_text*(mbox: ptr lv_obj_t): cstring {.importc,
    cdecl, implvglHdr.}
proc lv_msgbox_close*(mbox: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
proc lv_msgbox_close_async*(mbox: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
proc lv_roller_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a roller object
                ##    @param parent    pointer to an object, it will be the parent of the new roller.
                ##    @return          pointer to the created roller
                ## ```
proc lv_roller_set_options*(obj: ptr lv_obj_t; options: cstring;
                            mode: lv_roller_mode_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   =====================
                                                                                  ##    Setter functions
                                                                                  ##   ====================
                                                                                  ##     
                                                                                  ##    Set the options on a roller
                                                                                  ##    @param obj       pointer to roller object
                                                                                  ##    @param options   a string with '\n' separated options. E.g. "One\nTwo\nThree"
                                                                                  ##    @param mode      LV_ROLLER_MODE_NORMAL or LV_ROLLER_MODE_INFINITE
                                                                                  ## ```
proc lv_roller_set_selected*(obj: ptr lv_obj_t; sel_opt: uint16;
                             anim: lv_anim_enable_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the selected option
                ##    @param obj       pointer to a roller object
                ##    @param sel_opt   index of the selected option (0 ... number of option - 1);
                ##    @param anim   LV_ANIM_ON: set with animation; LV_ANOM_OFF set immediately
                ## ```
proc lv_roller_set_visible_row_count*(obj: ptr lv_obj_t; row_cnt: uint8) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the height to show the given number of rows (options)
                                ##    @param obj       pointer to a roller object
                                ##    @param row_cnt   number of desired visible rows
                                ## ```
proc lv_roller_get_selected*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Get the index of the selected option
                ##    @param obj       pointer to a roller object
                ##    @return          index of the selected option (0 ... number of option - 1);
                ## ```
proc lv_roller_get_selected_str*(obj: ptr lv_obj_t; buf: cstring;
                                 buf_size: uint32) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Get the current selected option as a string.
                                                                                 ##    @param obj       pointer to ddlist object
                                                                                 ##    @param buf       pointer to an array to store the string
                                                                                 ##    @param buf_size  size of buf in bytes. 0: to ignore it.
                                                                                 ## ```
proc lv_roller_get_options*(obj: ptr lv_obj_t): cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the options of a roller
                ##    @param obj       pointer to roller object
                ##    @return          the options separated by '\n'-s (E.g. "Option1\nOption2\nOption3")
                ## ```
proc lv_roller_get_option_cnt*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the total number of options
                ##    @param obj   pointer to a roller object
                ##    @return      the total number of options
                ## ```
proc lv_slider_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a slider object
                ##    @param parent    pointer to an object, it will be the parent of the new slider.
                ##    @return          pointer to the created slider
                ## ```
proc lv_slider_set_value*(obj: ptr lv_obj_t; value: int32;
                          anim: lv_anim_enable_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   =====================
                                                                                ##    Setter functions
                                                                                ##   ====================
                                                                                ##     
                                                                                ##    Set a new value on the slider
                                                                                ##    @param obj       pointer to a slider object
                                                                                ##    @param value     the new value
                                                                                ##    @param anim      LV_ANIM_ON: set the value with an animation; LV_ANIM_OFF: change the value immediately
                                                                                ## ```
proc lv_slider_set_left_value*(obj: ptr lv_obj_t; value: int32;
                               anim: lv_anim_enable_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set a new value for the left knob of a slider
                ##    @param obj       pointer to a slider object
                ##    @param value     new value
                ##    @param anim      LV_ANIM_ON: set the value with an animation; LV_ANIM_OFF: change the value immediately
                ## ```
proc lv_slider_set_range*(obj: ptr lv_obj_t; min: int32; max: int32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set minimum and the maximum values of a bar
                       ##    @param obj       pointer to the slider object
                       ##    @param min       minimum value
                       ##    @param max       maximum value
                       ## ```
proc lv_slider_set_mode*(obj: ptr lv_obj_t; mode: lv_slider_mode_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the mode of slider.
                       ##    @param obj       pointer to a slider object
                       ##    @param mode      the mode of the slider. See ::lv_slider_mode_t
                       ## ```
proc lv_slider_get_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   =====================
                                                                                  ##    Getter functions
                                                                                  ##   ====================
                                                                                  ##     
                                                                                  ##    Get the value of the main knob of a slider
                                                                                  ##    @param obj       pointer to a slider object
                                                                                  ##    @return          the value of the main knob of the slider
                                                                                  ## ```
proc lv_slider_get_left_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the value of the left knob of a slider
                ##    @param obj       pointer to a slider object
                ##    @return          the value of the left knob of the slider
                ## ```
proc lv_slider_get_min_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the minimum value of a slider
                ##    @param obj       pointer to a slider object
                ##    @return          the minimum value of the slider
                ## ```
proc lv_slider_get_max_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the maximum value of a slider
                ##    @param obj       pointer to a slider object
                ##    @return          the maximum value of the slider
                ## ```
proc lv_slider_is_dragged*(obj: ptr lv_obj_t): bool {.importc, cdecl, implvglHdr.}
proc lv_slider_get_mode*(slider: ptr lv_obj_t): lv_slider_mode_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the mode of the slider.
                       ##    @param slider       pointer to a bar object
                       ##    @return          see ::lv_slider_mode_t
                       ## ```
proc lv_spangroup_create*(par: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a spangroup object
                ##    @param par pointer to an object, it will be the parent of the new spangroup
                ##    @return pointer to the created spangroup
                ## ```
proc lv_spangroup_new_span*(obj: ptr lv_obj_t): ptr lv_span_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Create a span string descriptor and add to spangroup.
                ##    @param obj pointer to a spangroup object.
                ##    @return pointer to the created span.
                ## ```
proc lv_spangroup_del_span*(obj: ptr lv_obj_t; span: ptr lv_span_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Remove the span from the spangroup and free memory.
                       ##    @param obj pointer to a spangroup object.
                       ##    @param span pointer to a span.
                       ## ```
proc lv_span_set_text*(span: ptr lv_span_t; text: cstring) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set a new text for a span. Memory will be allocated to store the text by the span.
                ##    @param span pointer to a span.
                ##    @param text pointer to a text.
                ## ```
proc lv_span_set_text_static*(span: ptr lv_span_t; text: cstring) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set a static text. It will not be saved by the span so the 'text' variable
                       ##    has to be 'alive' while the span exist.
                       ##    @param span pointer to a span.
                       ##    @param text pointer to a text.
                       ## ```
proc lv_spangroup_set_align*(obj: ptr lv_obj_t; align: lv_text_align_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the align of the spangroup.
                                ##    @param obj pointer to a spangroup object.
                                ##    @param align see lv_text_align_t for details.
                                ## ```
proc lv_spangroup_set_overflow*(obj: ptr lv_obj_t; overflow: lv_span_overflow_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the overflow of the spangroup.
                                ##    @param obj pointer to a spangroup object.
                                ##    @param overflow see lv_span_overflow_t for details.
                                ## ```
proc lv_spangroup_set_indent*(obj: ptr lv_obj_t; indent: lv_coord_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the indent of the spangroup.
                       ##    @param obj pointer to a spangroup object.
                       ##    @param indent The first line indentation
                       ## ```
proc lv_spangroup_set_mode*(obj: ptr lv_obj_t; mode: lv_span_mode_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the mode of the spangroup.
                       ##    @param obj pointer to a spangroup object.
                       ##    @param mode see lv_span_mode_t for details.
                       ## ```
proc lv_spangroup_set_lines*(obj: ptr lv_obj_t; lines: int32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set lines of the spangroup.
                ##    @param obj pointer to a spangroup object.
                ##    @param lines max lines that can be displayed in LV_SPAN_MODE_BREAK mode. < 0 means no limit.
                ## ```
proc lv_spangroup_get_child*(obj: ptr lv_obj_t; id: int32): ptr lv_span_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Getter functions
                                ##   ====================
                                ##     
                                ##    Get a spangroup child by its index.
                                ##   
                                ##    @param obj   The spangroup object
                                ##    @param id    the index of the child.
                                ##                 0: the oldest (firstly created) child
                                ##                 1: the second oldest
                                ##                 child count-1: the youngest
                                ##                 -1: the youngest
                                ##                 -2: the second youngest
                                ##    @return      The child span at index id, or NULL if the ID does not exist
                                ## ```
proc lv_spangroup_get_child_cnt*(obj: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   @param obj   The spangroup object to get the child count of.
                ##    @return      The span count of the spangroup.
                ## ```
proc lv_spangroup_get_align*(obj: ptr lv_obj_t): lv_text_align_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   get the align of the spangroup.
                       ##    @param obj pointer to a spangroup object.
                       ##    @return the align value.
                       ## ```
proc lv_spangroup_get_overflow*(obj: ptr lv_obj_t): lv_span_overflow_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   get the overflow of the spangroup.
                                ##    @param obj pointer to a spangroup object.
                                ##    @return the overflow value.
                                ## ```
proc lv_spangroup_get_indent*(obj: ptr lv_obj_t): lv_coord_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   get the indent of the spangroup.
                ##    @param obj pointer to a spangroup object.
                ##    @return the indent value.
                ## ```
proc lv_spangroup_get_mode*(obj: ptr lv_obj_t): lv_span_mode_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   get the mode of the spangroup.
                ##    @param obj pointer to a spangroup object.
                ## ```
proc lv_spangroup_get_lines*(obj: ptr lv_obj_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   get lines of the spangroup.
                ##    @param obj pointer to a spangroup object.
                ##    @return the lines value.
                ## ```
proc lv_spangroup_get_max_line_h*(obj: ptr lv_obj_t): lv_coord_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   get max line height of all span in the spangroup.
                       ##    @param obj pointer to a spangroup object.
                       ## ```
proc lv_spangroup_get_expand_width*(obj: ptr lv_obj_t; max_width: uint32): uint32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   get the text content width when all span of spangroup on a line.
                                ##    @param obj pointer to a spangroup object.
                                ##    @param max_width if text content width >= max_width, return max_width
                                ##    to reduce computation, if max_width == 0, returns the text content width.
                                ##    @return text content width or max_width.
                                ## ```
proc lv_spangroup_get_expand_height*(obj: ptr lv_obj_t; width: lv_coord_t): lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   get the text content height with width fixed.
                                ##    @param obj pointer to a spangroup object.
                                ##    @param width the width of the span group.
                                ## ```
proc lv_spangroup_refr_mode*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   =====================
                                                                              ##    Other functions
                                                                              ##   ====================
                                                                              ##     
                                                                              ##    update the mode of the spangroup.
                                                                              ##    @param obj pointer to a spangroup object.
                                                                              ## ```
proc lv_textarea_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a text area object
                ##    @param parent    pointer to an object, it will be the parent of the new text area
                ##    @return          pointer to the created text area
                ## ```
proc lv_textarea_add_char*(obj: ptr lv_obj_t; c: uint32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   ======================
                ##    Add/remove functions
                ##   =====================
                ##     
                ##    Insert a character to the current cursor position.
                ##    To add a wide char, e.g. 'Á' use _lv_txt_encoded_conv_wc('Á')
                ##    @param obj       pointer to a text area object
                ##    @param c         a character (e.g. 'a')
                ## ```
proc lv_textarea_add_text*(obj: ptr lv_obj_t; txt: cstring) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Insert a text to the current cursor position
                ##    @param obj       pointer to a text area object
                ##    @param txt       a '\0' terminated string to insert
                ## ```
proc lv_textarea_del_char*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Delete a the left character from the current cursor position
                                                                            ##    @param obj       pointer to a text area object
                                                                            ## ```
proc lv_textarea_del_char_forward*(obj: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Delete the right character from the current cursor position
                ##    @param obj       pointer to a text area object
                ## ```
proc lv_textarea_set_text*(obj: ptr lv_obj_t; txt: cstring) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set the text of a text area
                ##    @param obj       pointer to a text area object
                ##    @param txt       pointer to the text
                ## ```
proc lv_textarea_set_placeholder_text*(obj: ptr lv_obj_t; txt: cstring) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the placeholder text of a text area
                                ##    @param obj       pointer to a text area object
                                ##    @param txt       pointer to the text
                                ## ```
proc lv_textarea_set_cursor_pos*(obj: ptr lv_obj_t; pos: int32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the cursor position
                       ##    @param obj       pointer to a text area object
                       ##    @param pos       the new cursor position in character index
                       ##                     < 0 : index from the end of the text
                       ##                     LV_TEXTAREA_CURSOR_LAST: go after the last character
                       ## ```
proc lv_textarea_set_cursor_click_pos*(obj: ptr lv_obj_t; en: bool) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Enable/Disable the positioning of the cursor by clicking the text on the text area.
                       ##    @param obj       pointer to a text area object
                       ##    @param en        true: enable click positions; false: disable
                       ## ```
proc lv_textarea_set_password_mode*(obj: ptr lv_obj_t; en: bool) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Enable/Disable password mode
                       ##    @param obj       pointer to a text area object
                       ##    @param en        true: enable, false: disable
                       ## ```
proc lv_textarea_set_password_bullet*(obj: ptr lv_obj_t; bullet: cstring) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the replacement characters to show in password mode
                                ##    @param obj       pointer to a text area object
                                ##    @param bullet    pointer to the replacement text
                                ## ```
proc lv_textarea_set_one_line*(obj: ptr lv_obj_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Configure the text area to one line or back to normal
                ##    @param obj       pointer to a text area object
                ##    @param en        true: one line, false: normal
                ## ```
proc lv_textarea_set_accepted_chars*(obj: ptr lv_obj_t; list: cstring) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set a list of characters. Only these characters will be accepted by the text area
                                ##    @param obj       pointer to a text area object
                                ##    @param list      list of characters. Only the pointer is saved. E.g. "+-.,0123456789"
                                ## ```
proc lv_textarea_set_max_length*(obj: ptr lv_obj_t; num: uint32) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set max length of a Text Area.
                       ##    @param obj       pointer to a text area object
                       ##    @param num       the maximal number of characters can be added (lv_textarea_set_text ignores it)
                       ## ```
proc lv_textarea_set_insert_replace*(obj: ptr lv_obj_t; txt: cstring) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   In LV_EVENT_INSERT the text which planned to be inserted can be replaced by an other text.
                       ##    It can be used to add automatic formatting to the text area.
                       ##    @param obj       pointer to a text area object
                       ##    @param txt       pointer to a new string to insert. If "" no text will be added.
                       ##                     The variable must be live after the event_cb exists. (Should be global or static)
                       ## ```
proc lv_textarea_set_text_selection*(obj: ptr lv_obj_t; en: bool) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Enable/disable selection mode.
                       ##    @param obj       pointer to a text area object
                       ##    @param en        true or false to enable/disable selection mode
                       ## ```
proc lv_textarea_set_password_show_time*(obj: ptr lv_obj_t; time: uint16) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set how long show the password before changing it to '*'
                                ##    @param obj       pointer to a text area object
                                ##    @param time      show time in milliseconds. 0: hide immediately.
                                ## ```
proc lv_textarea_set_align*(obj: ptr lv_obj_t; align: lv_text_align_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Deprecated: use the normal text_align style property instead
                                ##    Set the label's alignment.
                                ##    It sets where the label is aligned (in one line mode it can be smaller than the text area)
                                ##    and how the lines of the area align in case of multiline text area
                                ##    @param obj       pointer to a text area object
                                ##    @param align     the align mode from ::lv_text_align_t
                                ## ```
proc lv_textarea_get_text*(obj: ptr lv_obj_t): cstring {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Get the text of a text area. In password mode it gives the real text (not '*'s).
                ##    @param obj       pointer to a text area object
                ##    @return          pointer to the text
                ## ```
proc lv_textarea_get_placeholder_text*(obj: ptr lv_obj_t): cstring {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the placeholder text of a text area
                       ##    @param obj       pointer to a text area object
                       ##    @return          pointer to the text
                       ## ```
proc lv_textarea_get_label*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the label of a text area
                ##    @param obj       pointer to a text area object
                ##    @return          pointer to the label object
                ## ```
proc lv_textarea_get_cursor_pos*(obj: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the current cursor position in character index
                ##    @param obj       pointer to a text area object
                ##    @return          the cursor position
                ## ```
proc lv_textarea_get_cursor_click_pos*(obj: ptr lv_obj_t): bool {.importc,
    cdecl, implvglHdr.}
proc lv_textarea_get_password_mode*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_textarea_get_password_bullet*(obj: ptr lv_obj_t): cstring {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the replacement characters to show in password mode
                       ##    @param obj       pointer to a text area object
                       ##    @return          pointer to the replacement text
                       ## ```
proc lv_textarea_get_one_line*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_textarea_get_accepted_chars*(obj: ptr lv_obj_t): cstring {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get a list of accepted characters.
                       ##    @param obj       pointer to a text area object
                       ##    @return          list of accented characters.
                       ## ```
proc lv_textarea_get_max_length*(obj: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get max length of a Text Area.
                ##    @param obj       pointer to a text area object
                ##    @return          the maximal number of characters to be add
                ## ```
proc lv_textarea_text_is_selected*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_textarea_get_text_selection*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_textarea_get_password_show_time*(obj: ptr lv_obj_t): uint16 {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set how long show the password before changing it to '*'
                       ##    @param obj       pointer to a text area object
                       ##    @return          show time in milliseconds. 0: hide immediately.
                       ## ```
proc lv_textarea_get_current_char*(obj: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get a the character from the current cursor position
                ##    @param obj       pointer to a text area object
                ##    @return          a the character or 0
                ## ```
proc lv_textarea_clear_selection*(obj: ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Other functions
                ##   ====================
                ##     
                ##    Clear the selection on the text area.
                ##    @param obj       pointer to a text area object
                ## ```
proc lv_textarea_cursor_right*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Move the cursor one character right
                                                                                ##    @param obj       pointer to a text area object
                                                                                ## ```
proc lv_textarea_cursor_left*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Move the cursor one character left
                                                                               ##    @param obj       pointer to a text area object
                                                                               ## ```
proc lv_textarea_cursor_down*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Move the cursor one line down
                                                                               ##    @param obj       pointer to a text area object
                                                                               ## ```
proc lv_textarea_cursor_up*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   Move the cursor one line up
                                                                             ##    @param obj       pointer to a text area object
                                                                             ## ```
proc lv_spinbox_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a Spinbox object
                ##    @param parent pointer to an object, it will be the parent of the new spinbox
                ##    @return pointer to the created spinbox
                ## ```
proc lv_spinbox_set_value*(obj: ptr lv_obj_t; i: int32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Setter functions
                ##   ====================
                ##     
                ##    Set spinbox value
                ##    @param obj pointer to spinbox
                ##    @param i value to be set
                ## ```
proc lv_spinbox_set_rollover*(obj: ptr lv_obj_t; b: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set spinbox rollover function
                ##    @param obj pointer to spinbox
                ##    @param b true or false to enable or disable (default)
                ## ```
proc lv_spinbox_set_digit_format*(obj: ptr lv_obj_t; digit_count: uint8;
                                  separator_position: uint8) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set spinbox digit format (digit count and decimal format)
                ##    @param obj pointer to spinbox
                ##    @param digit_count number of digit excluding the decimal separator and the sign
                ##    @param separator_position number of digit before the decimal point. If 0, decimal point is not
                ##    shown
                ## ```
proc lv_spinbox_set_step*(obj: ptr lv_obj_t; step: uint32) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set spinbox step
                ##    @param obj pointer to spinbox
                ##    @param step steps on increment/decrement. Can be 1, 10, 100, 1000, etc the digit that will change.
                ## ```
proc lv_spinbox_set_range*(obj: ptr lv_obj_t; range_min: int32; range_max: int32) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set spinbox value range
                                ##    @param obj pointer to spinbox
                                ##    @param range_min maximum value, inclusive
                                ##    @param range_max minimum value, inclusive
                                ## ```
proc lv_spinbox_set_cursor_pos*(obj: ptr lv_obj_t; pos: uint8) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set cursor position to a specific digit for edition
                ##    @param obj pointer to spinbox
                ##    @param pos selected position in spinbox
                ## ```
proc lv_spinbox_set_digit_step_direction*(obj: ptr lv_obj_t; direction: lv_dir_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set direction of digit step when clicking an encoder button while in editing mode
                                ##    @param obj pointer to spinbox
                                ##    @param direction the direction (LV_DIR_RIGHT or LV_DIR_LEFT)
                                ## ```
proc lv_spinbox_get_rollover*(obj: ptr lv_obj_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_spinbox_get_value*(obj: ptr lv_obj_t): int32 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the spinbox numeral value (user has to convert to float according to its digit format)
                ##    @param obj pointer to spinbox
                ##    @return value integer value of the spinbox
                ## ```
proc lv_spinbox_get_step*(obj: ptr lv_obj_t): int32 {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Get the spinbox step value (user has to convert to float according to its digit format)
                                                                                  ##    @param obj pointer to spinbox
                                                                                  ##    @return value integer step value of the spinbox
                                                                                  ## ```
proc lv_spinbox_step_next*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   =====================
                                                                            ##    Other functions
                                                                            ##   ====================
                                                                            ##     
                                                                            ##    Select next lower digit for edition by dividing the step by 10
                                                                            ##    @param obj pointer to spinbox
                                                                            ## ```
proc lv_spinbox_step_prev*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Select next higher digit for edition by multiplying the step by 10
                                                                            ##    @param obj pointer to spinbox
                                                                            ## ```
proc lv_spinbox_increment*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Increment spinbox value by one step
                                                                            ##    @param obj pointer to spinbox
                                                                            ## ```
proc lv_spinbox_decrement*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Decrement spinbox value by one step
                                                                            ##    @param obj pointer to spinbox
                                                                            ## ```
proc lv_spinner_create*(parent: ptr lv_obj_t; time: uint32; arc_length: uint32): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
proc lv_switch_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a switch object
                ##    @param parent pointer to an object, it will be the parent of the new switch
                ##    @return pointer to the created switch
                ## ```
proc lv_table_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a table object
                ##    @param parent        pointer to an object, it will be the parent of the new table
                ##    @return              pointer to the created table
                ## ```
proc lv_table_set_cell_value*(obj: ptr lv_obj_t; row: uint16; col: uint16;
                              txt: cstring) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                          ##   =====================
                                                                          ##    Setter functions
                                                                          ##   ====================
                                                                          ##     
                                                                          ##    Set the value of a cell.
                                                                          ##    @param obj           pointer to a Table object
                                                                          ##    @param row           id of the row [0 .. row_cnt -1]
                                                                          ##    @param col           id of the column [0 .. col_cnt -1]
                                                                          ##    @param txt           text to display in the cell. It will be copied and saved so this variable is not required after this function call.
                                                                          ##    @note                New roes/columns are added automatically if required
                                                                          ## ```
proc lv_table_set_cell_value_fmt*(obj: ptr lv_obj_t; row: uint16; col: uint16;
                                  fmt: cstring) {.importc, cdecl, implvglHdr,
    varargs.}
  ## ```
             ##   Set the value of a cell.  Memory will be allocated to store the text by the table.
             ##    @param obj           pointer to a Table object
             ##    @param row           id of the row [0 .. row_cnt -1]
             ##    @param col           id of the column [0 .. col_cnt -1]
             ##    @param fmt           printf-like format
             ##    @note                New roes/columns are added automatically if required
             ## ```
proc lv_table_set_row_cnt*(obj: ptr lv_obj_t; row_cnt: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the number of rows
                ##    @param obj           table pointer to a Table object
                ##    @param row_cnt       number of rows
                ## ```
proc lv_table_set_col_cnt*(obj: ptr lv_obj_t; col_cnt: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the number of columns
                ##    @param obj       table pointer to a Table object
                ##    @param col_cnt   number of columns.
                ## ```
proc lv_table_set_col_width*(obj: ptr lv_obj_t; col_id: uint16; w: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the width of a column
                                ##    @param obj       table pointer to a Table object
                                ##    @param col_id    id of the column [0 .. LV_TABLE_COL_MAX -1]
                                ##    @param w         width of the column
                                ## ```
proc lv_table_add_cell_ctrl*(obj: ptr lv_obj_t; row: uint16; col: uint16;
                             ctrl: lv_table_cell_ctrl_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Add control bits to the cell.
                ##    @param obj       pointer to a Table object
                ##    @param row       id of the row [0 .. row_cnt -1]
                ##    @param col       id of the column [0 .. col_cnt -1]
                ##    @param ctrl      OR-ed values from ::lv_table_cell_ctrl_t
                ## ```
proc lv_table_clear_cell_ctrl*(obj: ptr lv_obj_t; row: uint16; col: uint16;
                               ctrl: lv_table_cell_ctrl_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Clear control bits of the cell.
                ##    @param obj       pointer to a Table object
                ##    @param row       id of the row [0 .. row_cnt -1]
                ##    @param col       id of the column [0 .. col_cnt -1]
                ##    @param ctrl      OR-ed values from ::lv_table_cell_ctrl_t
                ## ```
proc lv_table_get_cell_value*(obj: ptr lv_obj_t; row: uint16; col: uint16): cstring {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Getter functions
                                ##   ====================
                                ##     
                                ##    Get the value of a cell.
                                ##    @param obj       pointer to a Table object
                                ##    @param row       id of the row [0 .. row_cnt -1]
                                ##    @param col       id of the column [0 .. col_cnt -1]
                                ##    @return          text in the cell
                                ## ```
proc lv_table_get_row_cnt*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the number of rows.
                ##    @param obj       table pointer to a Table object
                ##    @return          number of rows.
                ## ```
proc lv_table_get_col_cnt*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the number of columns.
                ##    @param obj       table pointer to a Table object
                ##    @return          number of columns.
                ## ```
proc lv_table_get_col_width*(obj: ptr lv_obj_t; col: uint16): lv_coord_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the width of a column
                                ##    @param obj       table pointer to a Table object
                                ##    @param col       id of the column [0 .. LV_TABLE_COL_MAX -1]
                                ##    @return          width of the column
                                ## ```
proc lv_table_has_cell_ctrl*(obj: ptr lv_obj_t; row: uint16; col: uint16;
                             ctrl: lv_table_cell_ctrl_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_table_get_selected_cell*(obj: ptr lv_obj_t; row: ptr uint16;
                                 col: ptr uint16) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Get the selected cell (pressed and or focused)
                                                                                ##    @param obj       pointer to a table object
                                                                                ##    @param row       pointer to variable to store the selected row (LV_TABLE_CELL_NONE: if no cell selected)
                                                                                ##    @param col       pointer to variable to store the selected column  (LV_TABLE_CELL_NONE: if no cell selected)
                                                                                ## ```
proc lv_tabview_create*(parent: ptr lv_obj_t; tab_pos: lv_dir_t;
                        tab_size: lv_coord_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ## ```
proc lv_tabview_add_tab*(tv: ptr lv_obj_t; name: cstring): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
proc lv_tabview_rename_tab*(obj: ptr lv_obj_t; tab_id: uint32; new_name: cstring) {.
    importc, cdecl, implvglHdr.}
proc lv_tabview_get_content*(tv: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_tabview_get_tab_btns*(tv: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_tabview_set_act*(obj: ptr lv_obj_t; id: uint32;
                         anim_en: lv_anim_enable_t) {.importc, cdecl, implvglHdr.}
proc lv_tabview_get_tab_act*(tv: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
proc lv_tileview_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create a Tileview object
                ##    @param parent pointer to an object, it will be the parent of the new tileview
                ##    @return pointer to the created tileview
                ## ```
proc lv_tileview_add_tile*(tv: ptr lv_obj_t; col_id: uint8; row_id: uint8;
                           dir: lv_dir_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_tile*(tv: ptr lv_obj_t; tile_obj: ptr lv_obj_t;
                      anim_en: lv_anim_enable_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_set_tile_id*(tv: ptr lv_obj_t; col_id: uint32; row_id: uint32;
                         anim_en: lv_anim_enable_t) {.importc, cdecl, implvglHdr.}
proc lv_tileview_get_tile_act*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
proc lv_win_create*(parent: ptr lv_obj_t; header_height: lv_coord_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
proc lv_win_add_title*(win: ptr lv_obj_t; txt: cstring): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
proc lv_win_add_btn*(win: ptr lv_obj_t; icon: pointer; btn_w: lv_coord_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
proc lv_win_get_header*(win: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_win_get_content*(win: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##         MACROS
                ##   *******************
                ##     
                ##    @file lv_snapshot.h
                ## ```
proc lv_snapshot_take*(obj: ptr lv_obj_t; cf: lv_color_format_t): ptr lv_img_dsc_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   ******************
                                ##         INCLUDES
                                ##   ******************
                                ##     
                                ##    @file lv_obj.h
                                ##   
                                ##    
                                ##    ******************
                                ##         DEFINES
                                ##   ******************
                                ##    *******************
                                ##         TYPEDEFS
                                ##   *******************
                                ##    *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##      Take snapshot for object with its children.
                                ##   
                                ##    @param obj    The object to generate snapshot.
                                ##    @param cf     color format for generated image.
                                ##   
                                ##    @return a pointer to an image descriptor, or NULL if failed.
                                ## ```
proc lv_snapshot_free*(dsc: ptr lv_img_dsc_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Free the snapshot image returned by @ref lv_snapshot_take
                                                                            ##   
                                                                            ##    It will firstly free the data image takes, then the image descriptor.
                                                                            ##   
                                                                            ##    @param dsc    The image descriptor generated by lv_snapshot_take.
                                                                            ## ```
proc lv_snapshot_buf_size_needed*(obj: ptr lv_obj_t; cf: lv_color_format_t): uint32 {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get the buffer needed for object snapshot image.
                                ##   
                                ##    @param obj    The object to generate snapshot.
                                ##    @param cf     color format for generated image.
                                ##   
                                ##    @return the buffer size needed in bytes
                                ## ```
proc lv_snapshot_take_to_buf*(obj: ptr lv_obj_t; cf: lv_color_format_t;
                              dsc: ptr lv_img_dsc_t; buf: pointer;
                              buff_size: uint32): lv_res_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Take snapshot for object with its children, save image info to provided buffer.
                ##   
                ##    @param obj    The object to generate snapshot.
                ##    @param cf     color format for generated image.
                ##    @param dsc    image descriptor to store the image result.
                ##    @param buf   the buffer to store image data.
                ##    @param buff_size provided buffer size in bytes.
                ##   
                ##    @return LV_RES_OK on success, LV_RES_INV on error.
                ## ```
proc lv_monkey_config_init*(config: ptr lv_monkey_config_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Initialize a monkey config with default values
                ##    @param config pointer to 'lv_monkey_config_t' variable to initialize
                ## ```
proc lv_monkey_create*(config: ptr lv_monkey_config_t): ptr lv_monkey_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Create monkey for test
                                ##    @param config pointer to 'lv_monkey_config_t' variable
                                ##    @return pointer to the created monkey
                                ## ```
proc lv_monkey_get_indev*(monkey: ptr lv_monkey_t): ptr lv_indev_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get monkey input device
                       ##    @param monkey pointer to a monkey
                       ##    @return pointer to the input device
                       ## ```
proc lv_monkey_set_enable*(monkey: ptr lv_monkey_t; en: bool) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Enable monkey
                ##    @param monkey pointer to a monkey
                ##    @param en set to true to enable
                ## ```
proc lv_monkey_get_enable*(monkey: ptr lv_monkey_t): bool {.importc, cdecl,
    implvglHdr.}
proc lv_monkey_set_user_data*(monkey: ptr lv_monkey_t; user_data: pointer) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the user_data field of the monkey
                                ##    @param monkey   pointer to a monkey
                                ##    @param user_data   pointer to the new user_data.
                                ## ```
proc lv_monkey_get_user_data*(monkey: ptr lv_monkey_t): pointer {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the user_data field of the monkey
                       ##    @param monkey pointer to a monkey
                       ##    @return the pointer to the user_data of the monkey
                       ## ```
proc lv_monkey_del*(monkey: ptr lv_monkey_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Delete monkey
                                                                           ##    @param monkey pointer to monkey
                                                                           ## ```
proc lv_gridnav_add*(obj: ptr lv_obj_t; ctrl: lv_gridnav_ctrl_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ##     
                       ##    Add grid navigation feature to an object. It expects the children to be arranged
                       ##    into a grid-like layout. Although it's not required to have pixel perfect alignment.
                       ##    This feature makes possible to use keys to navigate among the children and focus them.
                       ##    The keys other than arrows and press/release related events
                       ##    are forwarded to the focused child.
                       ##    @param obj       pointer to an object on which navigation should be applied.
                       ##    @param ctrl      control flags from lv_gridnav_ctrl_t.
                       ## ```
proc lv_gridnav_remove*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                         ##   Remove the grid navigation support from an object
                                                                         ##    @param obj       pointer to an object
                                                                         ## ```
proc lv_gridnav_set_focused*(cont: ptr lv_obj_t; to_focus: ptr lv_obj_t;
                             anim_en: lv_anim_enable_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Manually focus an object on gridnav container
                ##    @param cont      pointer to a gridnav container
                ##    @param to_focus  pointer to an object to focus
                ##    @param anim_en   LV_ANIM_ON/OFF
                ## ```
proc lv_fragment_manager_create*(parent: ptr lv_fragment_t): ptr lv_fragment_manager_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Create fragment manager instance
                                ##    @param parent Parent fragment if this manager is placed inside another fragment, can be null.
                                ##    @return Fragment manager instance
                                ## ```
proc lv_fragment_manager_del*(manager: ptr lv_fragment_manager_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Destroy fragment manager instance
                       ##    @param manager Fragment manager instance
                       ## ```
proc lv_fragment_manager_create_obj*(manager: ptr lv_fragment_manager_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Create object of all fragments managed by this manager.
                                ##    @param manager Fragment manager instance
                                ## ```
proc lv_fragment_manager_del_obj*(manager: ptr lv_fragment_manager_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Delete object created by all fragments managed by this manager. Instance of fragments will not be deleted.
                       ##    @param manager Fragment manager instance
                       ## ```
proc lv_fragment_manager_add*(manager: ptr lv_fragment_manager_t;
                              fragment: ptr lv_fragment_t;
                              container: ptr ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Attach fragment to manager, and add to container.
                ##    @param manager Fragment manager instance
                ##    @param fragment Fragment instance
                ##    @param container Pointer to container object for manager to add objects to
                ## ```
proc lv_fragment_manager_remove*(manager: ptr lv_fragment_manager_t;
                                 fragment: ptr lv_fragment_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Detach and destroy fragment. If fragment is in navigation stack, remove from it.
                ##    @param manager Fragment manager instance
                ##    @param fragment Fragment instance
                ## ```
proc lv_fragment_manager_push*(manager: ptr lv_fragment_manager_t;
                               fragment: ptr lv_fragment_t;
                               container: ptr ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Attach fragment to manager and add to navigation stack.
                ##    @param manager Fragment manager instance
                ##    @param fragment Fragment instance
                ##    @param container Pointer to container object for manager to add objects to
                ## ```
proc lv_fragment_manager_pop*(manager: ptr lv_fragment_manager_t): bool {.
    importc, cdecl, implvglHdr.}
proc lv_fragment_manager_replace*(manager: ptr lv_fragment_manager_t;
                                  fragment: ptr lv_fragment_t;
                                  container: ptr ptr lv_obj_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Replace fragment. Old item in the stack will be removed.
                ##    @param manager Fragment manager instance
                ##    @param fragment Fragment instance
                ##    @param container Pointer to container object for manager to add objects to
                ## ```
proc lv_fragment_manager_send_event*(manager: ptr lv_fragment_manager_t;
                                     code: cint; userdata: pointer): bool {.
    importc, cdecl, implvglHdr.}
proc lv_fragment_manager_get_stack_size*(manager: ptr lv_fragment_manager_t): uint {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get stack size of this fragment manager
                                ##    @param manager Fragment manager instance
                                ##    @return Stack size of this fragment manager
                                ## ```
proc lv_fragment_manager_get_top*(manager: ptr lv_fragment_manager_t): ptr lv_fragment_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get top most fragment instance
                                ##    @param manager Fragment manager instance
                                ##    @return Top most fragment instance
                                ## ```
proc lv_fragment_manager_find_by_container*(manager: ptr lv_fragment_manager_t;
    container: ptr lv_obj_t): ptr lv_fragment_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   Find first fragment instance in the container
                                                                              ##    @param manager Fragment manager instance
                                                                              ##    @param container Container which target fragment added to
                                                                              ##    @return First fragment instance in the container
                                                                              ## ```
proc lv_fragment_manager_get_parent_fragment*(manager: ptr lv_fragment_manager_t): ptr lv_fragment_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get parent fragment
                                ##    @param manager Fragment manager instance
                                ##    @return Parent fragment instance
                                ## ```
proc lv_fragment_create*(cls: ptr lv_fragment_class_t; args: pointer): ptr lv_fragment_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Create a fragment instance.
                                ##   
                                ##    @param cls Fragment class. This fragment must return non null object.
                                ##    @param args Arguments assigned by fragment manager
                                ##    @return Fragment instance
                                ## ```
proc lv_fragment_del*(fragment: ptr lv_fragment_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Destroy a fragment.
                                                                                 ##    @param fragment Fragment instance.
                                                                                 ## ```
proc lv_fragment_get_manager*(fragment: ptr lv_fragment_t): ptr lv_fragment_manager_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get associated manager of this fragment
                                ##    @param fragment Fragment instance
                                ##    @return Fragment manager instance
                                ## ```
proc lv_fragment_get_parent*(fragment: ptr lv_fragment_t): ptr lv_fragment_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get parent fragment of this fragment
                                ##    @param fragment Fragment instance
                                ##    @return Parent fragment
                                ## ```
proc lv_fragment_create_obj*(fragment: ptr lv_fragment_t;
                             container: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Create object by fragment.
                       ##   
                       ##    @param fragment Fragment instance.
                       ##    @param container Container of the objects should be created upon.
                       ##    @return Created object
                       ## ```
proc lv_fragment_del_obj*(fragment: ptr lv_fragment_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Delete created object of a fragment
                ##   
                ##    @param fragment Fragment instance.
                ## ```
proc lv_fragment_recreate_obj*(fragment: ptr lv_fragment_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Destroy obj in fragment, and recreate them.
                ##    @param fragment Fragment instance
                ## ```
proc lv_imgfont_create*(height: uint16; path_cb: lv_imgfont_get_path_cb_t;
                        user_data: pointer): ptr lv_font_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Creates a image font with info parameter specified.
                ##    @param height font size
                ##    @param path_cb a function to get the image path name of character.
                ##    @param user_data pointer to user data
                ##    @return pointer to the new imgfont or NULL if create error.
                ## ```
proc lv_imgfont_destroy*(font: ptr lv_font_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                            ##   Destroy a image font that has been created.
                                                                            ##    @param font pointer to image font handle.
                                                                            ## ```
proc lv_msg_init*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                  ##   *******************
                                                  ##    GLOBAL PROTOTYPES
                                                  ##   *******************
                                                  ##     
                                                  ##    Called internally to initialize the message module
                                                  ## ```
proc lv_msg_subscribe*(msg_id: lv_msg_id_t; cb: lv_msg_subscribe_cb_t;
                       user_data: pointer): pointer {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                  ##   Subscribe to an msg_id
                                                                                  ##    @param msg_id        the message ID to listen to
                                                                                  ##    @param cb            callback to call if a message with msg_id was sent
                                                                                  ##    @param user_data     arbitrary data which will be available in cb too
                                                                                  ##    @return              pointer to a "subscribe object". It can be used the unsubscribe.
                                                                                  ## ```
proc lv_msg_subscribe_obj*(msg_id: lv_msg_id_t; obj: ptr lv_obj_t;
                           user_data: pointer): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Subscribe an lv_obj to a message.
                ##    LV_EVENT_MSG_RECEIVED will be triggered if a message with matching ID was sent
                ##    @param msg_id        the message ID to listen to
                ##    @param obj           pointer to an lv_obj
                ##    @param user_data     arbitrary data which will be available in cb too
                ##    @return              pointer to a "subscribe object". It can be used the unsubscribe.
                ## ```
proc lv_msg_unsubscribe*(s: pointer) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                   ##   Cancel a previous subscription
                                                                   ##    @param s             pointer to a "subscibe object".
                                                                   ##                         Return value of lv_msg_subscribe or lv_msg_subscribe_obj
                                                                   ## ```
proc lv_msg_send*(msg_id: lv_msg_id_t; payload: pointer) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Send a message with a given ID and payload
                ##    @param msg_id        ID of the message to send
                ##    @param payload          pointer to the data to send
                ## ```
proc lv_msg_update_value*(v: pointer) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                    ##   Send a message where the message ID is v (the value of the pointer)
                                                                    ##    and the payload is v.
                                                                    ##    It can be used to send unique messages when a variable changed.
                                                                    ##    @param v     pointer to a variable.
                                                                    ##    @note        to subscribe to a variable use lv_msg_subscribe((lv_msg_id_t)v, msg_cb, user_data)
                                                                    ##                 or lv_msg_subscribe_obj((lv_msg_id_t)v, obj, user_data)
                                                                    ## ```
proc lv_msg_get_id*(m: ptr lv_msg_t): lv_msg_id_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                ##   Get the ID of a message object. Typically used in the subscriber callback.
                                                                                ##    @param m             pointer to a message object
                                                                                ##    @return              the ID of the message
                                                                                ## ```
proc lv_msg_get_payload*(m: ptr lv_msg_t): pointer {.importc, cdecl, implvglHdr.}
  ## ```
                                                                                 ##   Get the payload of a message object. Typically used in the subscriber callback.
                                                                                 ##    @param m             pointer to a message object
                                                                                 ##    @return              the payload of the message
                                                                                 ## ```
proc lv_msg_get_user_data*(m: ptr lv_msg_t): pointer {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the user data of a message object. Typically used in the subscriber callback.
                ##    @param m             pointer to a message object
                ##    @return              the user data of the message
                ## ```
proc lv_event_get_msg*(e: ptr lv_event_t): ptr lv_msg_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the message object from an event object. Can be used in LV_EVENT_MSG_RECEIVED events.
                ##    @param e     pointer to an event object
                ##    @return      the message object or NULL if called with unrelated event code.
                ## ```
proc lv_ime_pinyin_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ## ```
proc lv_ime_pinyin_set_keyboard*(obj: ptr lv_obj_t; kb: ptr lv_obj_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   =====================
                       ##    Setter functions
                       ##   ====================
                       ##     
                       ##    Set the keyboard of Pinyin input method.
                       ##    @param obj  pointer to a Pinyin input method object
                       ##    @param kb pointer to a Pinyin input method keyboard
                       ## ```
proc lv_ime_pinyin_set_dict*(obj: ptr lv_obj_t; dict: ptr lv_pinyin_dict_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the dictionary of Pinyin input method.
                                ##    @param obj  pointer to a Pinyin input method object
                                ##    @param dict pointer to a Pinyin input method dictionary
                                ## ```
proc lv_ime_pinyin_set_mode*(obj: ptr lv_obj_t; mode: lv_ime_pinyin_mode_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set mode, 26-key input(k26) or 9-key input(k9).
                                ##    @param obj  pointer to a Pinyin input method object
                                ##    @param mode   the mode from 'lv_ime_pinyin_mode_t'
                                ## ```
proc lv_ime_pinyin_get_kb*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   =====================
                ##    Getter functions
                ##   ====================
                ##     
                ##    Set the dictionary of Pinyin input method.
                ##    @param obj  pointer to a Pinyin IME object
                ##    @return     pointer to the Pinyin IME keyboard
                ## ```
proc lv_ime_pinyin_get_cand_panel*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the dictionary of Pinyin input method.
                       ##    @param obj  pointer to a Pinyin input method object
                       ##    @return     pointer to the Pinyin input method candidate panel
                       ## ```
proc lv_ime_pinyin_get_dict*(obj: ptr lv_obj_t): ptr lv_pinyin_dict_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the dictionary of Pinyin input method.
                       ##    @param obj  pointer to a Pinyin input method object
                       ##    @return     pointer to the Pinyin input method dictionary
                       ## ```
proc lv_file_explorer_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   ********************
                       ##    GLOBAL VARIABLES
                       ##   ********************
                       ##    *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ## ```
proc lv_file_explorer_set_quick_access_path*(obj: ptr lv_obj_t;
    dir: lv_file_explorer_dir_t; path: cstring) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   =====================
                                                                              ##    Setter functions
                                                                              ##   ====================
                                                                              ##     
                                                                              ##    Set file_explorer
                                                                              ##    @param obj   pointer to a label object
                                                                              ##    @param dir   the dir from 'lv_file_explorer_dir_t' enum.
                                                                              ##    @param path   path
                                                                              ## ```
proc lv_file_explorer_set_sort*(obj: ptr lv_obj_t; sort: lv_file_explorer_sort_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set file_explorer sort
                                ##    @param obj   pointer to a file explorer object
                                ##    @param sort  the sort from 'lv_file_explorer_sort_t' enum.
                                ## ```
proc lv_file_explorer_get_selected_file_name*(obj: ptr lv_obj_t): cstring {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   =====================
                                ##    Getter functions
                                ##   ====================
                                ##     
                                ##    Get file explorer Selected file
                                ##    @param obj   pointer to a file explorer object
                                ##    @return      pointer to the file explorer selected file name
                                ## ```
proc lv_file_explorer_get_current_path*(obj: ptr lv_obj_t): cstring {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get file explorer cur path
                       ##    @param obj   pointer to a file explorer object
                       ##    @return      pointer to the file explorer cur path
                       ## ```
proc lv_file_explorer_get_header*(obj: ptr lv_obj_t): ptr lv_obj_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get file explorer head area obj
                       ##    @param obj   pointer to a file explorer object
                       ##    @return      pointer to the file explorer head area obj(lv_obj)
                       ## ```
proc lv_file_explorer_get_quick_access_area*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get file explorer head area obj
                                ##    @param obj   pointer to a file explorer object
                                ##    @return      pointer to the file explorer quick access area obj(lv_obj)
                                ## ```
proc lv_file_explorer_get_path_label*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get file explorer path obj(label)
                                ##    @param obj   pointer to a file explorer object
                                ##    @return      pointer to the file explorer path obj(lv_label)
                                ## ```
proc lv_file_explorer_get_places_list*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get file explorer places list obj(lv_list)
                                ##    @param obj   pointer to a file explorer object
                                ##    @return      pointer to the file explorer places list obj(lv_list)
                                ## ```
proc lv_file_explorer_get_device_list*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get file explorer device list obj(lv_list)
                                ##    @param obj   pointer to a file explorer object
                                ##    @return      pointer to the file explorer device list obj(lv_list)
                                ## ```
proc lv_file_explorer_get_file_table*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Get file explorer file list obj(lv_table)
                                ##    @param obj   pointer to a file explorer object
                                ##    @return      pointer to the file explorer file table obj(lv_table)
                                ## ```
proc lv_file_explorer_get_sort*(obj: ptr lv_obj_t): lv_file_explorer_sort_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set file_explorer sort
                                ##    @param obj   pointer to a file explorer object
                                ##    @return the current mode from 'lv_file_explorer_sort_t'
                                ## ```
proc lv_file_explorer_open_dir*(obj: ptr lv_obj_t; dir: cstring) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   =====================
                       ##    Other functions
                       ##   ====================
                       ##     
                       ##    Open a specified path
                       ##    @param obj   pointer to a file explorer object
                       ##    @param dir   pointer to the path
                       ## ```
proc lv_barcode_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create an empty barcode (an lv_canvas) object.
                ##    @param parent point to an object where to create the barcode
                ##    @return pointer to the created barcode object
                ## ```
proc lv_barcode_set_dark_color*(obj: ptr lv_obj_t; color: lv_color32_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the dark color of a barcode object
                                ##    @param obj pointer to barcode object
                                ##    @param color dark color of the barcode
                                ## ```
proc lv_barcode_set_light_color*(obj: ptr lv_obj_t; color: lv_color32_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the light color of a barcode object
                                ##    @param obj pointer to barcode object
                                ##    @param color light color of the barcode
                                ## ```
proc lv_barcode_set_scale*(obj: ptr lv_obj_t; scale: uint16) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set the scale of a barcode object
                ##    @param obj pointer to barcode object
                ##    @param scale scale factor
                ## ```
proc lv_barcode_update*(obj: ptr lv_obj_t; data: cstring): lv_res_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set the data of a barcode object
                       ##    @param obj pointer to barcode object
                       ##    @param data data to display
                       ##    @return LV_RES_OK: if no error; LV_RES_INV: on error
                       ## ```
proc lv_barcode_get_dark_color*(obj: ptr lv_obj_t): lv_color32_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the dark color of a barcode object
                       ##    @param obj pointer to barcode object
                       ##    @return dark color of the barcode
                       ## ```
proc lv_barcode_get_light_color*(obj: ptr lv_obj_t): lv_color32_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Get the light color of a barcode object
                       ##    @param obj pointer to barcode object
                       ##    @return light color of the barcode
                       ## ```
proc lv_barcode_get_scale*(obj: ptr lv_obj_t): uint16 {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Get the scale of a barcode object
                ##    @param obj pointer to barcode object
                ##    @return scale factor
                ## ```
proc lv_bmp_init*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                  ##   ******************
                                                  ##         INCLUDES
                                                  ##   ******************
                                                  ##     
                                                  ##    GENERATED FILE, DO NOT EDIT IT!
                                                  ##    @file lv_conf_internal.h
                                                  ##    Make sure all the defines of lv_conf.h have a default value
                                                  ##   
                                                  ##    ******************
                                                  ##         DEFINES
                                                  ##   ******************
                                                  ##    *******************
                                                  ##         TYPEDEFS
                                                  ##   *******************
                                                  ##    *******************
                                                  ##    GLOBAL PROTOTYPES
                                                  ##   *******************
                                                  ## ```
proc lv_fs_stdio_init*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                       ##   *******************
                                                       ##         MACROS
                                                       ##   *******************
                                                       ##     
                                                       ##    @file lv_png.h
                                                       ## ```
proc lv_png_init*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                  ##   ******************
                                                  ##         INCLUDES
                                                  ##   ******************
                                                  ##     
                                                  ##    GENERATED FILE, DO NOT EDIT IT!
                                                  ##    @file lv_conf_internal.h
                                                  ##    Make sure all the defines of lv_conf.h have a default value
                                                  ##   
                                                  ##    ******************
                                                  ##         DEFINES
                                                  ##   ******************
                                                  ##    *******************
                                                  ##         TYPEDEFS
                                                  ##   *******************
                                                  ##    *******************
                                                  ##    GLOBAL PROTOTYPES
                                                  ##   *******************
                                                  ##     
                                                  ##    Register the PNG decoder functions in LVGL
                                                  ## ```
proc gd_open_gif_file*(fname: cstring): ptr gd_GIF {.importc, cdecl, implvglHdr.}
proc gd_open_gif_data*(data: pointer): ptr gd_GIF {.importc, cdecl, implvglHdr.}
proc gd_render_frame*(gif: ptr gd_GIF; buffer: ptr uint8) {.importc, cdecl,
    implvglHdr.}
proc gd_get_frame*(gif: ptr gd_GIF): cint {.importc, cdecl, implvglHdr.}
proc gd_rewind*(gif: ptr gd_GIF) {.importc, cdecl, implvglHdr.}
proc gd_close_gif*(gif: ptr gd_GIF) {.importc, cdecl, implvglHdr.}
proc lv_gif_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
proc lv_gif_set_src*(obj: ptr lv_obj_t; src: pointer) {.importc, cdecl,
    implvglHdr.}
proc lv_gif_restart*(gif: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
proc lv_qrcode_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Create an empty QR code (an lv_canvas) object.
                ##    @param parent point to an object where to create the QR code
                ##    @return pointer to the created QR code object
                ## ```
proc lv_qrcode_set_size*(obj: ptr lv_obj_t; size: lv_coord_t) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Set QR code size.
                ##    @param obj pointer to a QR code object
                ##    @param size width and height of the QR code
                ## ```
proc lv_qrcode_set_dark_color*(obj: ptr lv_obj_t; color: lv_color_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set QR code dark color.
                       ##    @param obj pointer to a QR code object
                       ##    @param color dark color of the QR code
                       ## ```
proc lv_qrcode_set_light_color*(obj: ptr lv_obj_t; color: lv_color_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set QR code light color.
                       ##    @param obj pointer to a QR code object
                       ##    @param color light color of the QR code
                       ## ```
proc lv_qrcode_update*(obj: ptr lv_obj_t; data: pointer; data_len: uint32): lv_res_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   Set the data of a QR code object
                                ##    @param obj pointer to a QR code object
                                ##    @param data data to display
                                ##    @param data_len length of data in bytes
                                ##    @return LV_RES_OK: if no error; LV_RES_INV: on error
                                ## ```
proc lv_split_jpeg_init*() {.importc, cdecl, implvglHdr.}
proc lv_tiny_ttf_create_data*(data: pointer; data_size: uint;
                              line_height: lv_coord_t): ptr lv_font_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   ******************
                       ##         INCLUDES
                       ##   ******************
                       ##     
                       ##    @file lvgl.h
                       ##    Include all LVGL related headers
                       ##    
                       ##    ******************
                       ##         DEFINES
                       ##   ******************
                       ##    *******************
                       ##         TYPEDEFS
                       ##   *******************
                       ##    *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ##      create a font from the specified data pointer with the specified line height.
                       ## ```
proc lv_tiny_ttf_create_data_ex*(data: pointer; data_size: uint;
                                 line_height: lv_coord_t; cache_size: uint): ptr lv_font_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   create a font from the specified data pointer with the specified line height and the specified cache size.
                                ## ```
proc lv_tiny_ttf_set_size*(font: ptr lv_font_t; line_height: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   set the size of the font to a new line_height
                                ## ```
proc lv_tiny_ttf_destroy*(font: ptr lv_font_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                             ##   destroy a font previously created with lv_tiny_ttf_create_xxxx()
                                                                             ## ```
proc lv_flex_init*() {.importc, cdecl, implvglHdr.}
  ## ```
                                                   ##   *******************
                                                   ##    GLOBAL PROTOTYPES
                                                   ##   *******************
                                                   ##     
                                                   ##    Initialize a flex layout the default values
                                                   ##    @param flex pointer to a flex layout descriptor
                                                   ## ```
proc lv_obj_set_flex_flow*(obj: ptr lv_obj_t; flow: lv_flex_flow_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set how the item should flow
                       ##    @param obj pointer to an object. The parent must have flex layout else nothing will happen.
                       ##    @param flow an element of lv_flex_flow_t.
                       ## ```
proc lv_obj_set_flex_align*(obj: ptr lv_obj_t; main_place: lv_flex_align_t;
                            cross_place: lv_flex_align_t;
                            track_cross_place: lv_flex_align_t) {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   Set how to place (where to align) the items and tracks
                       ##    @param obj pointer to an object. The parent must have flex layout else nothing will happen.
                       ##    @param main_place where to place the items on main axis (in their track). Any value of lv_flex_align_t.
                       ##    @param cross_place where to place the item in their track on the cross axis. LV_FLEX_ALIGN_START/END/CENTER
                       ##    @param track_cross_place where to place the tracks in the cross direction. Any value of lv_flex_align_t.
                       ## ```
proc lv_obj_set_flex_grow*(obj: ptr lv_obj_t; grow: uint8) {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   Sets the width or height (on main axis) to grow the object in order fill the free space
                ##    @param obj pointer to an object. The parent must have flex layout else nothing will happen.
                ##    @param grow a value to set how much free space to take proportionally to other growing items.
                ## ```
proc lv_style_set_flex_flow*(style: ptr lv_style_t; value: lv_flex_flow_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_flex_main_place*(style: ptr lv_style_t; value: lv_flex_align_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_flex_cross_place*(style: ptr lv_style_t;
                                    value: lv_flex_align_t) {.importc, cdecl,
    implvglHdr.}
proc lv_style_set_flex_track_place*(style: ptr lv_style_t;
                                    value: lv_flex_align_t) {.importc, cdecl,
    implvglHdr.}
proc lv_style_set_flex_grow*(style: ptr lv_style_t; value: uint8) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_flex_flow*(obj: ptr lv_obj_t; value: lv_flex_flow_t;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_flex_main_place*(obj: ptr lv_obj_t;
                                       value: lv_flex_align_t;
                                       selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_flex_cross_place*(obj: ptr lv_obj_t;
                                        value: lv_flex_align_t;
                                        selector: lv_style_selector_t) {.
    importc, cdecl, implvglHdr.}
proc lv_obj_set_style_flex_track_place*(obj: ptr lv_obj_t;
                                        value: lv_flex_align_t;
                                        selector: lv_style_selector_t) {.
    importc, cdecl, implvglHdr.}
proc lv_obj_set_style_flex_grow*(obj: ptr lv_obj_t; value: uint8;
                                 selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_get_style_flex_flow*(obj: ptr lv_obj_t; part: uint32): lv_flex_flow_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_flex_main_place*(obj: ptr lv_obj_t; part: uint32): lv_flex_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_flex_cross_place*(obj: ptr lv_obj_t; part: uint32): lv_flex_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_flex_track_place*(obj: ptr lv_obj_t; part: uint32): lv_flex_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_flex_grow*(obj: ptr lv_obj_t; part: uint32): uint8 {.
    importc, cdecl, implvglHdr.}
proc lv_grid_init*() {.importc, cdecl, implvglHdr.}
proc lv_obj_set_grid_dsc_array*(obj: ptr lv_obj_t;
                                col_dsc: UncheckedArray[lv_coord_t];
                                row_dsc: UncheckedArray[lv_coord_t]) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_grid_align*(obj: ptr lv_obj_t; column_align: lv_grid_align_t;
                            row_align: lv_grid_align_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_grid_cell*(obj: ptr lv_obj_t; column_align: lv_grid_align_t;
                           col_pos: lv_coord_t; col_span: lv_coord_t;
                           row_align: lv_grid_align_t; row_pos: lv_coord_t;
                           row_span: lv_coord_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                               ##   Set the cell of an object. The object's parent needs to have grid layout, else nothing will happen
                                                                               ##    @param obj pointer to an object
                                                                               ##    @param column_align the vertical alignment in the cell. LV_GRID_START/END/CENTER/STRETCH
                                                                               ##    @param col_pos column ID
                                                                               ##    @param col_span number of columns to take (>= 1)
                                                                               ##    @param row_align the horizontal alignment in the cell. LV_GRID_START/END/CENTER/STRETCH
                                                                               ##    @param row_pos row ID
                                                                               ##    @param row_span number of rows to take (>= 1)
                                                                               ## ```
proc lv_grid_fr*(x: uint8): lv_coord_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                     ##   Just a wrapper to LV_GRID_FR for bindings.
                                                                     ## ```
proc lv_style_set_grid_row_dsc_array*(style: ptr lv_style_t;
                                      value: UncheckedArray[lv_coord_t]) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_grid_column_dsc_array*(style: ptr lv_style_t;
    value: UncheckedArray[lv_coord_t]) {.importc, cdecl, implvglHdr.}
proc lv_style_set_grid_row_align*(style: ptr lv_style_t; value: lv_grid_align_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_grid_column_align*(style: ptr lv_style_t;
                                     value: lv_grid_align_t) {.importc, cdecl,
    implvglHdr.}
proc lv_style_set_grid_cell_column_pos*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_grid_cell_column_span*(style: ptr lv_style_t;
    value: lv_coord_t) {.importc, cdecl, implvglHdr.}
proc lv_style_set_grid_cell_row_pos*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_grid_cell_row_span*(style: ptr lv_style_t; value: lv_coord_t) {.
    importc, cdecl, implvglHdr.}
proc lv_style_set_grid_cell_x_align*(style: ptr lv_style_t;
                                     value: lv_grid_align_t) {.importc, cdecl,
    implvglHdr.}
proc lv_style_set_grid_cell_y_align*(style: ptr lv_style_t;
                                     value: lv_grid_align_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_grid_row_dsc_array*(obj: ptr lv_obj_t;
    value: UncheckedArray[lv_coord_t]; selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_grid_column_dsc_array*(obj: ptr lv_obj_t;
    value: UncheckedArray[lv_coord_t]; selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_grid_row_align*(obj: ptr lv_obj_t; value: lv_grid_align_t;
                                      selector: lv_style_selector_t) {.importc,
    cdecl, implvglHdr.}
proc lv_obj_set_style_grid_column_align*(obj: ptr lv_obj_t;
    value: lv_grid_align_t; selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_grid_cell_column_pos*(obj: ptr lv_obj_t;
    value: lv_coord_t; selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_grid_cell_column_span*(obj: ptr lv_obj_t;
    value: lv_coord_t; selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_grid_cell_row_pos*(obj: ptr lv_obj_t; value: lv_coord_t;
    selector: lv_style_selector_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_set_style_grid_cell_row_span*(obj: ptr lv_obj_t; value: lv_coord_t;
    selector: lv_style_selector_t) {.importc, cdecl, implvglHdr.}
proc lv_obj_set_style_grid_cell_x_align*(obj: ptr lv_obj_t;
    value: lv_grid_align_t; selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_set_style_grid_cell_y_align*(obj: ptr lv_obj_t;
    value: lv_grid_align_t; selector: lv_style_selector_t) {.importc, cdecl,
    implvglHdr.}
proc lv_obj_get_style_grid_row_dsc_array*(obj: ptr lv_obj_t; part: uint32): ptr lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_column_dsc_array*(obj: ptr lv_obj_t; part: uint32): ptr lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_row_align*(obj: ptr lv_obj_t; part: uint32): lv_grid_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_column_align*(obj: ptr lv_obj_t; part: uint32): lv_grid_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_cell_column_pos*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_cell_column_span*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_cell_row_pos*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_cell_row_span*(obj: ptr lv_obj_t; part: uint32): lv_coord_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_cell_x_align*(obj: ptr lv_obj_t; part: uint32): lv_grid_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_obj_get_style_grid_cell_y_align*(obj: ptr lv_obj_t; part: uint32): lv_grid_align_t {.
    importc, cdecl, implvglHdr.}
proc lv_theme_default_init*(disp: ptr lv_disp_t; color_primary: lv_color_t;
                            color_secondary: lv_color_t; dark: bool;
                            font: ptr lv_font_t): ptr lv_theme_t {.importc,
    cdecl, implvglHdr.}
  ## ```
                       ##   ******************
                       ##         INCLUDES
                       ##   ******************
                       ##     
                       ##    @file lv_obj.h
                       ##   
                       ##    
                       ##     
                       ##    @file lv_disp.h
                       ##   
                       ##    
                       ##     
                       ##   @file lv_theme.h
                       ##   
                       ##    
                       ##    ******************
                       ##         DEFINES
                       ##   ******************
                       ##    *******************
                       ##         TYPEDEFS
                       ##   *******************
                       ##    *******************
                       ##    GLOBAL PROTOTYPES
                       ##   *******************
                       ##     
                       ##    Initialize the theme
                       ##    @param disp pointer to display
                       ##    @param color_primary the primary color of the theme
                       ##    @param color_secondary the secondary color for the theme
                       ##    @param dark
                       ##    @param font pointer to a font to use.
                       ##    @return a pointer to reference this theme later
                       ## ```
proc lv_theme_default_get*(): ptr lv_theme_t {.importc, cdecl, implvglHdr.}
  ## ```
                                                                           ##   Get default theme
                                                                           ##    @return a pointer to default theme, or NULL if this is not initialized
                                                                           ## ```
proc lv_theme_default_is_inited*(): bool {.importc, cdecl, implvglHdr.}
proc lv_theme_mono_init*(disp: ptr lv_disp_t; dark_bg: bool; font: ptr lv_font_t): ptr lv_theme_t {.
    importc, cdecl, implvglHdr.}
  ## ```
                                ##   ******************
                                ##         INCLUDES
                                ##   ******************
                                ##     
                                ##    @file lv_obj.h
                                ##   
                                ##    
                                ##     
                                ##   @file lv_theme.h
                                ##   
                                ##    
                                ##    ******************
                                ##         DEFINES
                                ##   ******************
                                ##    *******************
                                ##         TYPEDEFS
                                ##   *******************
                                ##    *******************
                                ##    GLOBAL PROTOTYPES
                                ##   *******************
                                ##     
                                ##    Initialize the theme
                                ##    @param disp pointer to display
                                ##    @param dark_bg
                                ##    @param font pointer to a font to use.
                                ##    @return a pointer to reference this theme later
                                ## ```
proc lv_theme_mono_is_inited*(): bool {.importc, cdecl, implvglHdr.}
proc lv_theme_basic_init*(disp: ptr lv_disp_t): ptr lv_theme_t {.importc, cdecl,
    implvglHdr.}
  ## ```
                ##   ******************
                ##         INCLUDES
                ##   ******************
                ##     
                ##    @file lv_obj.h
                ##   
                ##    
                ##     
                ##   @file lv_theme.h
                ##   
                ##    
                ##     
                ##    @file lv_disp.h
                ##   
                ##    
                ##    ******************
                ##         DEFINES
                ##   ******************
                ##    *******************
                ##         TYPEDEFS
                ##   *******************
                ##    *******************
                ##    GLOBAL PROTOTYPES
                ##   *******************
                ##     
                ##    Initialize the theme
                ##    @param disp pointer to display to attach the theme
                ##    @return a pointer to reference this theme later
                ## ```
proc lv_theme_basic_is_inited*(): bool {.importc, cdecl, implvglHdr.}
proc lv_task_handler*(): uint32 {.importc, cdecl, implvglHdr.}
proc lv_obj_move_foreground*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   *******************
                                                                              ##         MACROS
                                                                              ##   *******************
                                                                              ##    *******************
                                                                              ##    INLINE FUNCTIONS
                                                                              ##   *******************
                                                                              ##     
                                                                              ##    Move the object to the foreground.
                                                                              ##    It will look like if it was created as the last child of its parent.
                                                                              ##    It also means it can cover any of the siblings.
                                                                              ##    @param obj       pointer to an object
                                                                              ## ```
proc lv_obj_move_background*(obj: ptr lv_obj_t) {.importc, cdecl, implvglHdr.}
  ## ```
                                                                              ##   Move the object to the background.
                                                                              ##    It will look like if it was created as the first child of its parent.
                                                                              ##    It also means any of the siblings can cover the object.
                                                                              ##    @param obj       pointer to an object
                                                                              ## ```
proc lv_obj_get_child_id*(obj: ptr lv_obj_t): uint32 {.importc, cdecl,
    implvglHdr.}
proc lv_sdl_window_create*(hor_res: lv_coord_t; ver_res: lv_coord_t): ptr lv_disp_t {.
    importc, cdecl, implvglHdr.}
proc lv_sdl_window_set_zoom*(disp: ptr lv_disp_t; zoom: uint8) {.importc, cdecl,
    implvglHdr.}
proc lv_sdl_window_get_zoom*(disp: ptr lv_disp_t): uint8 {.importc, cdecl,
    implvglHdr.}
proc lv_sdl_get_disp_from_win_id*(win_id: uint32): ptr lv_disp_t {.
    importc: "_lv_sdl_get_disp_from_win_id", cdecl, implvglHdr.}
proc lv_sdl_window_set_title*(disp: ptr lv_disp_t; title: cstring) {.importc,
    cdecl, implvglHdr.}
proc lv_sdl_quit*() {.importc, cdecl, implvglHdr.}
proc lv_sdl_mouse_create*(): ptr lv_indev_t {.importc, cdecl, implvglHdr.}
proc lv_sdl_mousewheel_create*(): ptr lv_indev_t {.importc, cdecl, implvglHdr.}
proc lv_sdl_keyboard_create*(): ptr lv_indev_t {.importc, cdecl, implvglHdr.}
proc lv_version_major*(): cint {.importc, cdecl, implvglHdr.}
proc lv_version_minor*(): cint {.importc, cdecl, implvglHdr.}
proc lv_version_patch*(): cint {.importc, cdecl, implvglHdr.}
proc lv_version_info*(): cstring {.importc, cdecl, implvglHdr.}
{.pop.}
