
const
  LV_OPA_TRANSP* = cuint(0)
const
  LV_OPA_0* = cuint(0)
const
  LV_OPA_10* = cuint(25)
const
  LV_OPA_20* = cuint(51)
const
  LV_OPA_30* = cuint(76)
const
  LV_OPA_40* = cuint(102)
const
  LV_OPA_50* = cuint(127)
const
  LV_OPA_60* = cuint(153)
const
  LV_OPA_70* = cuint(178)
const
  LV_OPA_80* = cuint(204)
const
  LV_OPA_90* = cuint(229)
const
  LV_OPA_100* = cuint(255)
const
  LV_OPA_COVER* = cuint(255)
const
  LV_STR_SYMBOL_BULLET* = cuint(0)
const
  LV_STR_SYMBOL_AUDIO* = cuint(1)
const
  LV_STR_SYMBOL_VIDEO* = cuint(2)
const
  LV_STR_SYMBOL_LIST* = cuint(3)
const
  LV_STR_SYMBOL_OK* = cuint(4)
const
  LV_STR_SYMBOL_CLOSE* = cuint(5)
const
  LV_STR_SYMBOL_POWER* = cuint(6)
const
  LV_STR_SYMBOL_SETTINGS* = cuint(7)
const
  LV_STR_SYMBOL_HOME* = cuint(8)
const
  LV_STR_SYMBOL_DOWNLOAD* = cuint(9)
const
  LV_STR_SYMBOL_DRIVE* = cuint(10)
const
  LV_STR_SYMBOL_REFRESH* = cuint(11)
const
  LV_STR_SYMBOL_MUTE* = cuint(12)
const
  LV_STR_SYMBOL_VOLUME_MID* = cuint(13)
const
  LV_STR_SYMBOL_VOLUME_MAX* = cuint(14)
const
  LV_STR_SYMBOL_IMAGE* = cuint(15)
const
  LV_STR_SYMBOL_TINT* = cuint(16)
const
  LV_STR_SYMBOL_PREV* = cuint(17)
const
  LV_STR_SYMBOL_PLAY* = cuint(18)
const
  LV_STR_SYMBOL_PAUSE* = cuint(19)
const
  LV_STR_SYMBOL_STOP* = cuint(20)
const
  LV_STR_SYMBOL_NEXT* = cuint(21)
const
  LV_STR_SYMBOL_EJECT* = cuint(22)
const
  LV_STR_SYMBOL_LEFT* = cuint(23)
const
  LV_STR_SYMBOL_RIGHT* = cuint(24)
const
  LV_STR_SYMBOL_PLUS* = cuint(25)
const
  LV_STR_SYMBOL_MINUS* = cuint(26)
const
  LV_STR_SYMBOL_EYE_OPEN* = cuint(27)
const
  LV_STR_SYMBOL_EYE_CLOSE* = cuint(28)
const
  LV_STR_SYMBOL_WARNING* = cuint(29)
const
  LV_STR_SYMBOL_SHUFFLE* = cuint(30)
const
  LV_STR_SYMBOL_UP* = cuint(31)
const
  LV_STR_SYMBOL_DOWN* = cuint(32)
const
  LV_STR_SYMBOL_LOOP* = cuint(33)
const
  LV_STR_SYMBOL_DIRECTORY* = cuint(34)
const
  LV_STR_SYMBOL_UPLOAD* = cuint(35)
const
  LV_STR_SYMBOL_CALL* = cuint(36)
const
  LV_STR_SYMBOL_CUT* = cuint(37)
const
  LV_STR_SYMBOL_COPY* = cuint(38)
const
  LV_STR_SYMBOL_SAVE* = cuint(39)
const
  LV_STR_SYMBOL_BARS* = cuint(40)
const
  LV_STR_SYMBOL_ENVELOPE* = cuint(41)
const
  LV_STR_SYMBOL_CHARGE* = cuint(42)
const
  LV_STR_SYMBOL_PASTE* = cuint(43)
const
  LV_STR_SYMBOL_BELL* = cuint(44)
const
  LV_STR_SYMBOL_KEYBOARD* = cuint(45)
const
  LV_STR_SYMBOL_GPS* = cuint(46)
const
  LV_STR_SYMBOL_FILE* = cuint(47)
const
  LV_STR_SYMBOL_WIFI* = cuint(48)
const
  LV_STR_SYMBOL_BATTERY_FULL* = cuint(49)
const
  LV_STR_SYMBOL_BATTERY_3* = cuint(50)
const
  LV_STR_SYMBOL_BATTERY_2* = cuint(51)
const
  LV_STR_SYMBOL_BATTERY_1* = cuint(52)
const
  LV_STR_SYMBOL_BATTERY_EMPTY* = cuint(53)
const
  LV_STR_SYMBOL_USB* = cuint(54)
const
  LV_STR_SYMBOL_BLUETOOTH* = cuint(55)
const
  LV_STR_SYMBOL_TRASH* = cuint(56)
const
  LV_STR_SYMBOL_EDIT* = cuint(57)
const
  LV_STR_SYMBOL_BACKSPACE* = cuint(58)
const
  LV_STR_SYMBOL_SD_CARD* = cuint(59)
const
  LV_STR_SYMBOL_NEW_LINE* = cuint(60)
const
  LV_STR_SYMBOL_DUMMY* = cuint(61)
const
  LV_STYLE_PROP_INV* = cuint(0)
const
  LV_STYLE_WIDTH* = cuint(1)
const
  LV_STYLE_HEIGHT* = cuint(2)
const
  LV_STYLE_LENGTH* = cuint(3)
const
  LV_STYLE_MIN_WIDTH* = cuint(4)
const
  LV_STYLE_MAX_WIDTH* = cuint(5)
const
  LV_STYLE_MIN_HEIGHT* = cuint(6)
const
  LV_STYLE_MAX_HEIGHT* = cuint(7)
const
  LV_STYLE_X* = cuint(8)
const
  LV_STYLE_Y* = cuint(9)
const
  LV_STYLE_ALIGN* = cuint(10)
const
  LV_STYLE_RADIUS* = cuint(12)
const
  LV_STYLE_PAD_TOP* = cuint(16)
const
  LV_STYLE_PAD_BOTTOM* = cuint(17)
const
  LV_STYLE_PAD_LEFT* = cuint(18)
const
  LV_STYLE_PAD_RIGHT* = cuint(19)
const
  LV_STYLE_PAD_ROW* = cuint(20)
const
  LV_STYLE_PAD_COLUMN* = cuint(21)
const
  LV_STYLE_LAYOUT* = cuint(22)
const
  LV_STYLE_MARGIN_TOP* = cuint(24)
const
  LV_STYLE_MARGIN_BOTTOM* = cuint(25)
const
  LV_STYLE_MARGIN_LEFT* = cuint(26)
const
  LV_STYLE_MARGIN_RIGHT* = cuint(27)
const
  LV_STYLE_BG_COLOR* = cuint(28)
const
  LV_STYLE_BG_OPA* = cuint(29)
const
  LV_STYLE_BG_GRAD_DIR* = cuint(32)
const
  LV_STYLE_BG_MAIN_STOP* = cuint(33)
const
  LV_STYLE_BG_GRAD_STOP* = cuint(34)
const
  LV_STYLE_BG_GRAD_COLOR* = cuint(35)
const
  LV_STYLE_BG_MAIN_OPA* = cuint(36)
const
  LV_STYLE_BG_GRAD_OPA* = cuint(37)
const
  LV_STYLE_BG_GRAD* = cuint(38)
const
  LV_STYLE_BASE_DIR* = cuint(39)
const
  LV_STYLE_BG_IMAGE_SRC* = cuint(40)
const
  LV_STYLE_BG_IMAGE_OPA* = cuint(41)
const
  LV_STYLE_BG_IMAGE_RECOLOR* = cuint(42)
const
  LV_STYLE_BG_IMAGE_RECOLOR_OPA* = cuint(43)
const
  LV_STYLE_BG_IMAGE_TILED* = cuint(44)
const
  LV_STYLE_CLIP_CORNER* = cuint(45)
const
  LV_STYLE_BORDER_WIDTH* = cuint(48)
const
  LV_STYLE_BORDER_COLOR* = cuint(49)
const
  LV_STYLE_BORDER_OPA* = cuint(50)
const
  LV_STYLE_BORDER_SIDE* = cuint(52)
const
  LV_STYLE_BORDER_POST* = cuint(53)
const
  LV_STYLE_OUTLINE_WIDTH* = cuint(56)
const
  LV_STYLE_OUTLINE_COLOR* = cuint(57)
const
  LV_STYLE_OUTLINE_OPA* = cuint(58)
const
  LV_STYLE_OUTLINE_PAD* = cuint(59)
const
  LV_STYLE_SHADOW_WIDTH* = cuint(60)
const
  LV_STYLE_SHADOW_COLOR* = cuint(61)
const
  LV_STYLE_SHADOW_OPA* = cuint(62)
const
  LV_STYLE_SHADOW_OFFSET_X* = cuint(64)
const
  LV_STYLE_SHADOW_OFFSET_Y* = cuint(65)
const
  LV_STYLE_SHADOW_SPREAD* = cuint(66)
const
  LV_STYLE_IMAGE_OPA* = cuint(68)
const
  LV_STYLE_IMAGE_RECOLOR* = cuint(69)
const
  LV_STYLE_IMAGE_RECOLOR_OPA* = cuint(70)
const
  LV_STYLE_LINE_WIDTH* = cuint(72)
const
  LV_STYLE_LINE_DASH_WIDTH* = cuint(73)
const
  LV_STYLE_LINE_DASH_GAP* = cuint(74)
const
  LV_STYLE_LINE_ROUNDED* = cuint(75)
const
  LV_STYLE_LINE_COLOR* = cuint(76)
const
  LV_STYLE_LINE_OPA* = cuint(77)
const
  LV_STYLE_ARC_WIDTH* = cuint(80)
const
  LV_STYLE_ARC_ROUNDED* = cuint(81)
const
  LV_STYLE_ARC_COLOR* = cuint(82)
const
  LV_STYLE_ARC_OPA* = cuint(83)
const
  LV_STYLE_ARC_IMAGE_SRC* = cuint(84)
const
  LV_STYLE_TEXT_COLOR* = cuint(88)
const
  LV_STYLE_TEXT_OPA* = cuint(89)
const
  LV_STYLE_TEXT_FONT* = cuint(90)
const
  LV_STYLE_TEXT_LETTER_SPACE* = cuint(91)
const
  LV_STYLE_TEXT_LINE_SPACE* = cuint(92)
const
  LV_STYLE_TEXT_DECOR* = cuint(93)
const
  LV_STYLE_TEXT_ALIGN* = cuint(94)
const
  LV_STYLE_OPA* = cuint(95)
const
  LV_STYLE_OPA_LAYERED* = cuint(96)
const
  LV_STYLE_COLOR_FILTER_DSC* = cuint(97)
const
  LV_STYLE_COLOR_FILTER_OPA* = cuint(98)
const
  LV_STYLE_ANIM* = cuint(99)
const
  LV_STYLE_ANIM_DURATION* = cuint(100)
const
  LV_STYLE_TRANSITION* = cuint(102)
const
  LV_STYLE_BLEND_MODE* = cuint(103)
const
  LV_STYLE_TRANSFORM_WIDTH* = cuint(104)
const
  LV_STYLE_TRANSFORM_HEIGHT* = cuint(105)
const
  LV_STYLE_TRANSLATE_X* = cuint(106)
const
  LV_STYLE_TRANSLATE_Y* = cuint(107)
const
  LV_STYLE_TRANSFORM_SCALE_X* = cuint(108)
const
  LV_STYLE_TRANSFORM_SCALE_Y* = cuint(109)
const
  LV_STYLE_TRANSFORM_ROTATION* = cuint(110)
const
  LV_STYLE_TRANSFORM_PIVOT_X* = cuint(111)
const
  LV_STYLE_TRANSFORM_PIVOT_Y* = cuint(112)
const
  LV_STYLE_TRANSFORM_SKEW_X* = cuint(113)
const
  LV_STYLE_TRANSFORM_SKEW_Y* = cuint(114)
const
  LV_STYLE_BITMAP_MASK_SRC* = cuint(115)
const
  LV_STYLE_ROTARY_SENSITIVITY* = cuint(116)
const
  LV_STYLE_FLEX_FLOW* = cuint(125)
const
  LV_STYLE_FLEX_MAIN_PLACE* = cuint(126)
const
  LV_STYLE_FLEX_CROSS_PLACE* = cuint(127)
const
  LV_STYLE_FLEX_TRACK_PLACE* = cuint(128)
const
  LV_STYLE_FLEX_GROW* = cuint(129)
const
  LV_STYLE_GRID_COLUMN_ALIGN* = cuint(130)
const
  LV_STYLE_GRID_ROW_ALIGN* = cuint(131)
const
  LV_STYLE_GRID_ROW_DSC_ARRAY* = cuint(132)
const
  LV_STYLE_GRID_COLUMN_DSC_ARRAY* = cuint(133)
const
  LV_STYLE_GRID_CELL_COLUMN_POS* = cuint(134)
const
  LV_STYLE_GRID_CELL_COLUMN_SPAN* = cuint(135)
const
  LV_STYLE_GRID_CELL_X_ALIGN* = cuint(136)
const
  LV_STYLE_GRID_CELL_ROW_POS* = cuint(137)
const
  LV_STYLE_GRID_CELL_ROW_SPAN* = cuint(138)
const
  LV_STYLE_GRID_CELL_Y_ALIGN* = cuint(139)
const
  LV_STYLE_LAST_BUILT_IN_PROP* = cuint(140)
const
  LV_STYLE_NUM_BUILT_IN_PROPS* = cuint(141)
const
  LV_STYLE_PROP_ANY* = cuint(255)
const
  LV_STYLE_PROP_CONST* = cuint(255)
const
  LV_STATE_DEFAULT* = cuint(0)
const
  LV_STATE_CHECKED* = cuint(1)
const
  LV_STATE_FOCUSED* = cuint(2)
const
  LV_STATE_FOCUS_KEY* = cuint(4)
const
  LV_STATE_EDITED* = cuint(8)
const
  LV_STATE_HOVERED* = cuint(16)
const
  LV_STATE_PRESSED* = cuint(32)
const
  LV_STATE_SCROLLED* = cuint(64)
const
  LV_STATE_DISABLED* = cuint(128)
const
  LV_STATE_USER_1* = cuint(4096)
const
  LV_STATE_USER_2* = cuint(8192)
const
  LV_STATE_USER_3* = cuint(16384)
const
  LV_STATE_USER_4* = cuint(32768)
const
  LV_STATE_ANY* = cuint(65535)
const
  LV_PART_MAIN* = cuint(0)
const
  LV_PART_SCROLLBAR* = cuint(65536)
const
  LV_PART_INDICATOR* = cuint(131072)
const
  LV_PART_KNOB* = cuint(196608)
const
  LV_PART_SELECTED* = cuint(262144)
const
  LV_PART_ITEMS* = cuint(327680)
const
  LV_PART_CURSOR* = cuint(393216)
const
  LV_PART_CUSTOM_FIRST* = cuint(524288)
const
  LV_PART_ANY* = cuint(983040)
const
  LV_PART_TEXTAREA_PLACEHOLDER* = cuint(524288)
type
  enum_lv_result_t* {.size: sizeof(cuint).} = enum
    LV_RESULT_INVALID = 0, LV_RESULT_OK = 1
type
  enum_lv_anim_enable_t* {.size: sizeof(cuint).} = enum
    LV_ANIM_OFF = 0, LV_ANIM_ON = 1
type
  enum_lv_rb_color_t* {.size: sizeof(cuint).} = enum
    LV_RB_COLOR_RED = 0, LV_RB_COLOR_BLACK = 1
type
  enum_lv_align_t* {.size: sizeof(cuint).} = enum
    LV_ALIGN_DEFAULT = 0, LV_ALIGN_TOP_LEFT = 1, LV_ALIGN_TOP_MID = 2,
    LV_ALIGN_TOP_RIGHT = 3, LV_ALIGN_BOTTOM_LEFT = 4, LV_ALIGN_BOTTOM_MID = 5,
    LV_ALIGN_BOTTOM_RIGHT = 6, LV_ALIGN_LEFT_MID = 7, LV_ALIGN_RIGHT_MID = 8,
    LV_ALIGN_CENTER = 9, LV_ALIGN_OUT_TOP_LEFT = 10, LV_ALIGN_OUT_TOP_MID = 11,
    LV_ALIGN_OUT_TOP_RIGHT = 12, LV_ALIGN_OUT_BOTTOM_LEFT = 13,
    LV_ALIGN_OUT_BOTTOM_MID = 14, LV_ALIGN_OUT_BOTTOM_RIGHT = 15,
    LV_ALIGN_OUT_LEFT_TOP = 16, LV_ALIGN_OUT_LEFT_MID = 17,
    LV_ALIGN_OUT_LEFT_BOTTOM = 18, LV_ALIGN_OUT_RIGHT_TOP = 19,
    LV_ALIGN_OUT_RIGHT_MID = 20, LV_ALIGN_OUT_RIGHT_BOTTOM = 21
type
  enum_lv_dir_t* {.size: sizeof(cuint).} = enum
    LV_DIR_NONE = 0, LV_DIR_LEFT = 1, LV_DIR_RIGHT = 2, LV_DIR_HOR = 3,
    LV_DIR_TOP = 4, LV_DIR_BOTTOM = 8, LV_DIR_VER = 12, LV_DIR_ALL = 15
type
  enum_lv_color_format_t* {.size: sizeof(cuint).} = enum
    LV_COLOR_FORMAT_UNKNOWN = 0, LV_COLOR_FORMAT_RAW = 1,
    LV_COLOR_FORMAT_RAW_ALPHA = 2, LV_COLOR_FORMAT_L8 = 6,
    LV_COLOR_FORMAT_I1 = 7, LV_COLOR_FORMAT_I2 = 8, LV_COLOR_FORMAT_I4 = 9,
    LV_COLOR_FORMAT_I8 = 10, LV_COLOR_FORMAT_A1 = 11, LV_COLOR_FORMAT_A2 = 12,
    LV_COLOR_FORMAT_A4 = 13, LV_COLOR_FORMAT_A8 = 14,
    LV_COLOR_FORMAT_RGB888 = 15, LV_COLOR_FORMAT_ARGB8888 = 16,
    LV_COLOR_FORMAT_XRGB8888 = 17, LV_COLOR_FORMAT_RGB565 = 18,
    LV_COLOR_FORMAT_ARGB8565 = 19, LV_COLOR_FORMAT_RGB565A8 = 20,
    LV_COLOR_FORMAT_AL88 = 21, LV_COLOR_FORMAT_YUV_START = 32,
    LV_COLOR_FORMAT_I422 = 33, LV_COLOR_FORMAT_I444 = 34,
    LV_COLOR_FORMAT_I400 = 35, LV_COLOR_FORMAT_NV21 = 36,
    LV_COLOR_FORMAT_NV12 = 37, LV_COLOR_FORMAT_YUY2 = 38,
    LV_COLOR_FORMAT_UYVY = 39
const
  LV_COLOR_FORMAT_I420* = enum_lv_color_format_t.LV_COLOR_FORMAT_YUV_START
const
  LV_COLOR_FORMAT_YUV_END* = enum_lv_color_format_t.LV_COLOR_FORMAT_UYVY
const
  LV_COLOR_FORMAT_NATIVE* = enum_lv_color_format_t.LV_COLOR_FORMAT_RGB565
const
  LV_COLOR_FORMAT_NATIVE_WITH_ALPHA* = enum_lv_color_format_t.LV_COLOR_FORMAT_RGB565A8
type
  enum_lv_palette_t* {.size: sizeof(cuint).} = enum
    LV_PALETTE_RED = 0, LV_PALETTE_PINK = 1, LV_PALETTE_PURPLE = 2,
    LV_PALETTE_DEEP_PURPLE = 3, LV_PALETTE_INDIGO = 4, LV_PALETTE_BLUE = 5,
    LV_PALETTE_LIGHT_BLUE = 6, LV_PALETTE_CYAN = 7, LV_PALETTE_TEAL = 8,
    LV_PALETTE_GREEN = 9, LV_PALETTE_LIGHT_GREEN = 10, LV_PALETTE_LIME = 11,
    LV_PALETTE_YELLOW = 12, LV_PALETTE_AMBER = 13, LV_PALETTE_ORANGE = 14,
    LV_PALETTE_DEEP_ORANGE = 15, LV_PALETTE_BROWN = 16,
    LV_PALETTE_BLUE_GREY = 17, LV_PALETTE_GREY = 18, LV_PALETTE_LAST = 19,
    LV_PALETTE_NONE = 255
type
  enum_lv_image_flags_t* {.size: sizeof(cuint).} = enum
    LV_IMAGE_FLAGS_PREMULTIPLIED = 1, LV_IMAGE_FLAGS_COMPRESSED = 8,
    LV_IMAGE_FLAGS_ALLOCATED = 16, LV_IMAGE_FLAGS_MODIFIABLE = 32,
    LV_IMAGE_FLAGS_USER1 = 256, LV_IMAGE_FLAGS_USER2 = 512,
    LV_IMAGE_FLAGS_USER3 = 1024, LV_IMAGE_FLAGS_USER4 = 2048,
    LV_IMAGE_FLAGS_USER5 = 4096, LV_IMAGE_FLAGS_USER6 = 8192,
    LV_IMAGE_FLAGS_USER7 = 16384, LV_IMAGE_FLAGS_USER8 = 32768
type
  enum_lv_image_compress_t* {.size: sizeof(cuint).} = enum
    LV_IMAGE_COMPRESS_NONE = 0, LV_IMAGE_COMPRESS_RLE = 1,
    LV_IMAGE_COMPRESS_LZ4 = 2
type
  enum_lv_thread_prio_t* {.size: sizeof(cuint).} = enum
    LV_THREAD_PRIO_LOWEST = 0, LV_THREAD_PRIO_LOW = 1, LV_THREAD_PRIO_MID = 2,
    LV_THREAD_PRIO_HIGH = 3, LV_THREAD_PRIO_HIGHEST = 4
type
  enum_lv_cache_reserve_cond_res_t* {.size: sizeof(cuint).} = enum
    LV_CACHE_RESERVE_COND_OK = 0, LV_CACHE_RESERVE_COND_TOO_LARGE = 1,
    LV_CACHE_RESERVE_COND_NEED_VICTIM = 2, LV_CACHE_RESERVE_COND_ERROR = 3
type
  enum_lv_font_glyph_format_t* {.size: sizeof(cuint).} = enum
    LV_FONT_GLYPH_FORMAT_NONE = 0, LV_FONT_GLYPH_FORMAT_A1 = 1,
    LV_FONT_GLYPH_FORMAT_A2 = 2, LV_FONT_GLYPH_FORMAT_A4 = 4,
    LV_FONT_GLYPH_FORMAT_A8 = 8, LV_FONT_GLYPH_FORMAT_IMAGE = 9,
    LV_FONT_GLYPH_FORMAT_VECTOR = 10, LV_FONT_GLYPH_FORMAT_SVG = 11,
    LV_FONT_GLYPH_FORMAT_CUSTOM = 255
type
  enum_lv_font_subpx_t* {.size: sizeof(cuint).} = enum
    LV_FONT_SUBPX_NONE = 0, LV_FONT_SUBPX_HOR = 1, LV_FONT_SUBPX_VER = 2,
    LV_FONT_SUBPX_BOTH = 3
type
  enum_lv_font_kerning_t* {.size: sizeof(cuint).} = enum
    LV_FONT_KERNING_NORMAL = 0, LV_FONT_KERNING_NONE = 1
type
  enum_lv_text_flag_t* {.size: sizeof(cuint).} = enum
    LV_TEXT_FLAG_NONE = 0, LV_TEXT_FLAG_EXPAND = 1, LV_TEXT_FLAG_FIT = 2,
    LV_TEXT_FLAG_BREAK_ALL = 4
type
  enum_lv_text_align_t* {.size: sizeof(cuint).} = enum
    LV_TEXT_ALIGN_AUTO = 0, LV_TEXT_ALIGN_LEFT = 1, LV_TEXT_ALIGN_CENTER = 2,
    LV_TEXT_ALIGN_RIGHT = 3
type
  enum_lv_base_dir_t* {.size: sizeof(cuint).} = enum
    LV_BASE_DIR_LTR = 0, LV_BASE_DIR_RTL = 1, LV_BASE_DIR_AUTO = 2,
    LV_BASE_DIR_NEUTRAL = 32, LV_BASE_DIR_WEAK = 33
type
  enum_lv_layout_t* {.size: sizeof(cuint).} = enum
    LV_LAYOUT_NONE = 0, LV_LAYOUT_FLEX = 1, LV_LAYOUT_GRID = 2,
    LV_LAYOUT_LAST = 3
type
  enum_lv_flex_align_t* {.size: sizeof(cuint).} = enum
    LV_FLEX_ALIGN_START = 0, LV_FLEX_ALIGN_END = 1, LV_FLEX_ALIGN_CENTER = 2,
    LV_FLEX_ALIGN_SPACE_EVENLY = 3, LV_FLEX_ALIGN_SPACE_AROUND = 4,
    LV_FLEX_ALIGN_SPACE_BETWEEN = 5
type
  enum_lv_flex_flow_t* {.size: sizeof(cuint).} = enum
    LV_FLEX_FLOW_ROW = 0, LV_FLEX_FLOW_COLUMN = 1, LV_FLEX_FLOW_ROW_WRAP = 4,
    LV_FLEX_FLOW_COLUMN_WRAP = 5, LV_FLEX_FLOW_ROW_REVERSE = 8,
    LV_FLEX_FLOW_COLUMN_REVERSE = 9, LV_FLEX_FLOW_ROW_WRAP_REVERSE = 12,
    LV_FLEX_FLOW_COLUMN_WRAP_REVERSE = 13
type
  enum_lv_grid_align_t* {.size: sizeof(cuint).} = enum
    LV_GRID_ALIGN_START = 0, LV_GRID_ALIGN_CENTER = 1, LV_GRID_ALIGN_END = 2,
    LV_GRID_ALIGN_STRETCH = 3, LV_GRID_ALIGN_SPACE_EVENLY = 4,
    LV_GRID_ALIGN_SPACE_AROUND = 5, LV_GRID_ALIGN_SPACE_BETWEEN = 6
type
  enum_lv_blend_mode_t* {.size: sizeof(cuint).} = enum
    LV_BLEND_MODE_NORMAL = 0, LV_BLEND_MODE_ADDITIVE = 1,
    LV_BLEND_MODE_SUBTRACTIVE = 2, LV_BLEND_MODE_MULTIPLY = 3
type
  enum_lv_text_decor_t* {.size: sizeof(cuint).} = enum
    LV_TEXT_DECOR_NONE = 0, LV_TEXT_DECOR_UNDERLINE = 1,
    LV_TEXT_DECOR_STRIKETHROUGH = 2
type
  enum_lv_border_side_t* {.size: sizeof(cuint).} = enum
    LV_BORDER_SIDE_NONE = 0, LV_BORDER_SIDE_BOTTOM = 1, LV_BORDER_SIDE_TOP = 2,
    LV_BORDER_SIDE_LEFT = 4, LV_BORDER_SIDE_RIGHT = 8, LV_BORDER_SIDE_FULL = 15,
    LV_BORDER_SIDE_INTERNAL = 16
type
  enum_lv_grad_dir_t* {.size: sizeof(cuint).} = enum
    LV_GRAD_DIR_NONE = 0, LV_GRAD_DIR_VER = 1, LV_GRAD_DIR_HOR = 2,
    LV_GRAD_DIR_LINEAR = 3, LV_GRAD_DIR_RADIAL = 4, LV_GRAD_DIR_CONICAL = 5
type
  enum_lv_grad_extend_t* {.size: sizeof(cuint).} = enum
    LV_GRAD_EXTEND_PAD = 0, LV_GRAD_EXTEND_REPEAT = 1,
    LV_GRAD_EXTEND_REFLECT = 2
type
  enum_lv_style_res_t* {.size: sizeof(cuint).} = enum
    LV_STYLE_RES_NOT_FOUND = 0, LV_STYLE_RES_FOUND = 1
type
  enum_lv_event_code_t* {.size: sizeof(cuint).} = enum
    LV_EVENT_ALL = 0, LV_EVENT_PRESSED = 1, LV_EVENT_PRESSING = 2,
    LV_EVENT_PRESS_LOST = 3, LV_EVENT_SHORT_CLICKED = 4,
    LV_EVENT_LONG_PRESSED = 5, LV_EVENT_LONG_PRESSED_REPEAT = 6,
    LV_EVENT_CLICKED = 7, LV_EVENT_RELEASED = 8, LV_EVENT_SCROLL_BEGIN = 9,
    LV_EVENT_SCROLL_THROW_BEGIN = 10, LV_EVENT_SCROLL_END = 11,
    LV_EVENT_SCROLL = 12, LV_EVENT_GESTURE = 13, LV_EVENT_KEY = 14,
    LV_EVENT_ROTARY = 15, LV_EVENT_FOCUSED = 16, LV_EVENT_DEFOCUSED = 17,
    LV_EVENT_LEAVE = 18, LV_EVENT_HIT_TEST = 19, LV_EVENT_INDEV_RESET = 20,
    LV_EVENT_HOVER_OVER = 21, LV_EVENT_HOVER_LEAVE = 22,
    LV_EVENT_COVER_CHECK = 23, LV_EVENT_REFR_EXT_DRAW_SIZE = 24,
    LV_EVENT_DRAW_MAIN_BEGIN = 25, LV_EVENT_DRAW_MAIN = 26,
    LV_EVENT_DRAW_MAIN_END = 27, LV_EVENT_DRAW_POST_BEGIN = 28,
    LV_EVENT_DRAW_POST = 29, LV_EVENT_DRAW_POST_END = 30,
    LV_EVENT_DRAW_TASK_ADDED = 31, LV_EVENT_VALUE_CHANGED = 32,
    LV_EVENT_INSERT = 33, LV_EVENT_REFRESH = 34, LV_EVENT_READY = 35,
    LV_EVENT_CANCEL = 36, LV_EVENT_CREATE = 37, LV_EVENT_DELETE = 38,
    LV_EVENT_CHILD_CHANGED = 39, LV_EVENT_CHILD_CREATED = 40,
    LV_EVENT_CHILD_DELETED = 41, LV_EVENT_SCREEN_UNLOAD_START = 42,
    LV_EVENT_SCREEN_LOAD_START = 43, LV_EVENT_SCREEN_LOADED = 44,
    LV_EVENT_SCREEN_UNLOADED = 45, LV_EVENT_SIZE_CHANGED = 46,
    LV_EVENT_STYLE_CHANGED = 47, LV_EVENT_LAYOUT_CHANGED = 48,
    LV_EVENT_GET_SELF_SIZE = 49, LV_EVENT_INVALIDATE_AREA = 50,
    LV_EVENT_RESOLUTION_CHANGED = 51, LV_EVENT_COLOR_FORMAT_CHANGED = 52,
    LV_EVENT_REFR_REQUEST = 53, LV_EVENT_REFR_START = 54,
    LV_EVENT_REFR_READY = 55, LV_EVENT_RENDER_START = 56,
    LV_EVENT_RENDER_READY = 57, LV_EVENT_FLUSH_START = 58,
    LV_EVENT_FLUSH_FINISH = 59, LV_EVENT_FLUSH_WAIT_START = 60,
    LV_EVENT_FLUSH_WAIT_FINISH = 61, LV_EVENT_VSYNC = 62, LV_EVENT_LAST = 63,
    LV_EVENT_PREPROCESS = 32768
type
  enum_lv_fs_res_t* {.size: sizeof(cuint).} = enum
    LV_FS_RES_OK = 0, LV_FS_RES_HW_ERR = 1, LV_FS_RES_FS_ERR = 2,
    LV_FS_RES_NOT_EX = 3, LV_FS_RES_FULL = 4, LV_FS_RES_LOCKED = 5,
    LV_FS_RES_DENIED = 6, LV_FS_RES_BUSY = 7, LV_FS_RES_TOUT = 8,
    LV_FS_RES_NOT_IMP = 9, LV_FS_RES_OUT_OF_MEM = 10, LV_FS_RES_INV_PARAM = 11,
    LV_FS_RES_UNKNOWN = 12
type
  enum_lv_fs_mode_t* {.size: sizeof(cuint).} = enum
    LV_FS_MODE_WR = 1, LV_FS_MODE_RD = 2
type
  enum_lv_fs_whence_t* {.size: sizeof(cuint).} = enum
    LV_FS_SEEK_SET = 0, LV_FS_SEEK_CUR = 1, LV_FS_SEEK_END = 2
type
  enum_lv_image_src_t* {.size: sizeof(cuint).} = enum
    LV_IMAGE_SRC_VARIABLE = 0, LV_IMAGE_SRC_FILE = 1, LV_IMAGE_SRC_SYMBOL = 2,
    LV_IMAGE_SRC_UNKNOWN = 3
type
  enum_lv_draw_task_type_t* {.size: sizeof(cuint).} = enum
    LV_DRAW_TASK_TYPE_NONE = 0, LV_DRAW_TASK_TYPE_FILL = 1,
    LV_DRAW_TASK_TYPE_BORDER = 2, LV_DRAW_TASK_TYPE_BOX_SHADOW = 3,
    LV_DRAW_TASK_TYPE_LABEL = 4, LV_DRAW_TASK_TYPE_IMAGE = 5,
    LV_DRAW_TASK_TYPE_LAYER = 6, LV_DRAW_TASK_TYPE_LINE = 7,
    LV_DRAW_TASK_TYPE_ARC = 8, LV_DRAW_TASK_TYPE_TRIANGLE = 9,
    LV_DRAW_TASK_TYPE_MASK_RECTANGLE = 10, LV_DRAW_TASK_TYPE_MASK_BITMAP = 11,
    LV_DRAW_TASK_TYPE_VECTOR = 12
type
  enum_lv_draw_task_state_t* {.size: sizeof(cuint).} = enum
    LV_DRAW_TASK_STATE_WAITING = 0, LV_DRAW_TASK_STATE_QUEUED = 1,
    LV_DRAW_TASK_STATE_IN_PROGRESS = 2, LV_DRAW_TASK_STATE_READY = 3
type
  enum_lv_display_rotation_t* {.size: sizeof(cuint).} = enum
    LV_DISPLAY_ROTATION_0 = 0, LV_DISPLAY_ROTATION_90 = 1,
    LV_DISPLAY_ROTATION_180 = 2, LV_DISPLAY_ROTATION_270 = 3
type
  enum_lv_display_render_mode_t* {.size: sizeof(cuint).} = enum
    LV_DISPLAY_RENDER_MODE_PARTIAL = 0, LV_DISPLAY_RENDER_MODE_DIRECT = 1,
    LV_DISPLAY_RENDER_MODE_FULL = 2
type
  enum_lv_screen_load_anim_t* {.size: sizeof(cuint).} = enum
    LV_SCR_LOAD_ANIM_NONE = 0, LV_SCR_LOAD_ANIM_OVER_LEFT = 1,
    LV_SCR_LOAD_ANIM_OVER_RIGHT = 2, LV_SCR_LOAD_ANIM_OVER_TOP = 3,
    LV_SCR_LOAD_ANIM_OVER_BOTTOM = 4, LV_SCR_LOAD_ANIM_MOVE_LEFT = 5,
    LV_SCR_LOAD_ANIM_MOVE_RIGHT = 6, LV_SCR_LOAD_ANIM_MOVE_TOP = 7,
    LV_SCR_LOAD_ANIM_MOVE_BOTTOM = 8, LV_SCR_LOAD_ANIM_FADE_IN = 9,
    LV_SCR_LOAD_ANIM_FADE_OUT = 10, LV_SCR_LOAD_ANIM_OUT_LEFT = 11,
    LV_SCR_LOAD_ANIM_OUT_RIGHT = 12, LV_SCR_LOAD_ANIM_OUT_TOP = 13,
    LV_SCR_LOAD_ANIM_OUT_BOTTOM = 14
const
  LV_SCR_LOAD_ANIM_FADE_ON* = enum_lv_screen_load_anim_t.LV_SCR_LOAD_ANIM_FADE_IN
type
  enum_lv_obj_tree_walk_res_t* {.size: sizeof(cuint).} = enum
    LV_OBJ_TREE_WALK_NEXT = 0, LV_OBJ_TREE_WALK_SKIP_CHILDREN = 1,
    LV_OBJ_TREE_WALK_END = 2
type
  enum_lv_obj_point_transform_flag_t* {.size: sizeof(cuint).} = enum
    LV_OBJ_POINT_TRANSFORM_FLAG_NONE = 0,
    LV_OBJ_POINT_TRANSFORM_FLAG_RECURSIVE = 1,
    LV_OBJ_POINT_TRANSFORM_FLAG_INVERSE = 2,
    LV_OBJ_POINT_TRANSFORM_FLAG_INVERSE_RECURSIVE = 3
type
  enum_lv_scrollbar_mode_t* {.size: sizeof(cuint).} = enum
    LV_SCROLLBAR_MODE_OFF = 0, LV_SCROLLBAR_MODE_ON = 1,
    LV_SCROLLBAR_MODE_ACTIVE = 2, LV_SCROLLBAR_MODE_AUTO = 3
type
  enum_lv_scroll_snap_t* {.size: sizeof(cuint).} = enum
    LV_SCROLL_SNAP_NONE = 0, LV_SCROLL_SNAP_START = 1, LV_SCROLL_SNAP_END = 2,
    LV_SCROLL_SNAP_CENTER = 3
type
  enum_lv_style_state_cmp_t* {.size: sizeof(cuint).} = enum
    LV_STYLE_STATE_CMP_SAME = 0, LV_STYLE_STATE_CMP_DIFF_REDRAW = 1,
    LV_STYLE_STATE_CMP_DIFF_DRAW_PAD = 2, LV_STYLE_STATE_CMP_DIFF_LAYOUT = 3
type
  enum_lv_layer_type_t* {.size: sizeof(cuint).} = enum
    LV_LAYER_TYPE_NONE = 0, LV_LAYER_TYPE_SIMPLE = 1,
    LV_LAYER_TYPE_TRANSFORM = 2
type
  enum_lv_obj_class_editable_t* {.size: sizeof(cuint).} = enum
    LV_OBJ_CLASS_EDITABLE_INHERIT = 0, LV_OBJ_CLASS_EDITABLE_TRUE = 1,
    LV_OBJ_CLASS_EDITABLE_FALSE = 2
type
  enum_lv_obj_class_group_def_t* {.size: sizeof(cuint).} = enum
    LV_OBJ_CLASS_GROUP_DEF_INHERIT = 0, LV_OBJ_CLASS_GROUP_DEF_TRUE = 1,
    LV_OBJ_CLASS_GROUP_DEF_FALSE = 2
type
  enum_lv_obj_class_theme_inheritable_t* {.size: sizeof(cuint).} = enum
    LV_OBJ_CLASS_THEME_INHERITABLE_FALSE = 0,
    LV_OBJ_CLASS_THEME_INHERITABLE_TRUE = 1
type
  enum_lv_key_t* {.size: sizeof(cuint).} = enum
    LV_KEY_HOME = 2, LV_KEY_END = 3, LV_KEY_BACKSPACE = 8, LV_KEY_NEXT = 9,
    LV_KEY_ENTER = 10, LV_KEY_PREV = 11, LV_KEY_UP = 17, LV_KEY_DOWN = 18,
    LV_KEY_RIGHT = 19, LV_KEY_LEFT = 20, LV_KEY_ESC = 27, LV_KEY_DEL = 127
type
  enum_lv_group_refocus_policy_t* {.size: sizeof(cuint).} = enum
    LV_GROUP_REFOCUS_POLICY_NEXT = 0, LV_GROUP_REFOCUS_POLICY_PREV = 1
type
  enum_lv_indev_type_t* {.size: sizeof(cuint).} = enum
    LV_INDEV_TYPE_NONE = 0, LV_INDEV_TYPE_POINTER = 1, LV_INDEV_TYPE_KEYPAD = 2,
    LV_INDEV_TYPE_BUTTON = 3, LV_INDEV_TYPE_ENCODER = 4
type
  enum_lv_indev_state_t* {.size: sizeof(cuint).} = enum
    LV_INDEV_STATE_RELEASED = 0, LV_INDEV_STATE_PRESSED = 1
type
  enum_lv_indev_mode_t* {.size: sizeof(cuint).} = enum
    LV_INDEV_MODE_NONE = 0, LV_INDEV_MODE_TIMER = 1, LV_INDEV_MODE_EVENT = 2
type
  enum_lv_cover_res_t* {.size: sizeof(cuint).} = enum
    LV_COVER_RES_COVER = 0, LV_COVER_RES_NOT_COVER = 1, LV_COVER_RES_MASKED = 2
type
  enum_lv_obj_flag_t* {.size: sizeof(cuint).} = enum
    LV_OBJ_FLAG_HIDDEN = 1, LV_OBJ_FLAG_CLICKABLE = 2,
    LV_OBJ_FLAG_CLICK_FOCUSABLE = 4, LV_OBJ_FLAG_CHECKABLE = 8,
    LV_OBJ_FLAG_SCROLLABLE = 16, LV_OBJ_FLAG_SCROLL_ELASTIC = 32,
    LV_OBJ_FLAG_SCROLL_MOMENTUM = 64, LV_OBJ_FLAG_SCROLL_ONE = 128,
    LV_OBJ_FLAG_SCROLL_CHAIN_HOR = 256, LV_OBJ_FLAG_SCROLL_CHAIN_VER = 512,
    LV_OBJ_FLAG_SCROLL_CHAIN = 768, LV_OBJ_FLAG_SCROLL_ON_FOCUS = 1024,
    LV_OBJ_FLAG_SCROLL_WITH_ARROW = 2048, LV_OBJ_FLAG_SNAPPABLE = 4096,
    LV_OBJ_FLAG_PRESS_LOCK = 8192, LV_OBJ_FLAG_EVENT_BUBBLE = 16384,
    LV_OBJ_FLAG_GESTURE_BUBBLE = 32768, LV_OBJ_FLAG_ADV_HITTEST = 65536,
    LV_OBJ_FLAG_IGNORE_LAYOUT = 131072, LV_OBJ_FLAG_FLOATING = 262144,
    LV_OBJ_FLAG_SEND_DRAW_TASK_EVENTS = 524288,
    LV_OBJ_FLAG_OVERFLOW_VISIBLE = 1048576,
    LV_OBJ_FLAG_FLEX_IN_NEW_TRACK = 2097152, LV_OBJ_FLAG_LAYOUT_1 = 8388608,
    LV_OBJ_FLAG_LAYOUT_2 = 16777216, LV_OBJ_FLAG_WIDGET_1 = 33554432,
    LV_OBJ_FLAG_WIDGET_2 = 67108864, LV_OBJ_FLAG_USER_1 = 134217728,
    LV_OBJ_FLAG_USER_2 = 268435456, LV_OBJ_FLAG_USER_3 = 536870912,
    LV_OBJ_FLAG_USER_4 = 1073741824
type
  enum_lv_font_fmt_txt_cmap_type_t* {.size: sizeof(cuint).} = enum
    LV_FONT_FMT_TXT_CMAP_FORMAT0_FULL = 0, LV_FONT_FMT_TXT_CMAP_SPARSE_FULL = 1,
    LV_FONT_FMT_TXT_CMAP_FORMAT0_TINY = 2, LV_FONT_FMT_TXT_CMAP_SPARSE_TINY = 3
type
  enum_lv_font_fmt_txt_bitmap_format_t* {.size: sizeof(cuint).} = enum
    LV_FONT_FMT_TXT_PLAIN = 0, LV_FONT_FMT_TXT_COMPRESSED = 1
const
  LV_FONT_FMT_TXT_COMPRESSED_NO_PREFILTER* = enum_lv_font_fmt_txt_bitmap_format_t.LV_FONT_FMT_TXT_COMPRESSED
type
  enum_lv_image_align_t* {.size: sizeof(cuint).} = enum
    LV_IMAGE_ALIGN_DEFAULT = 0, LV_IMAGE_ALIGN_TOP_LEFT = 1,
    LV_IMAGE_ALIGN_TOP_MID = 2, LV_IMAGE_ALIGN_TOP_RIGHT = 3,
    LV_IMAGE_ALIGN_BOTTOM_LEFT = 4, LV_IMAGE_ALIGN_BOTTOM_MID = 5,
    LV_IMAGE_ALIGN_BOTTOM_RIGHT = 6, LV_IMAGE_ALIGN_LEFT_MID = 7,
    LV_IMAGE_ALIGN_RIGHT_MID = 8, LV_IMAGE_ALIGN_CENTER = 9,
    LV_IMAGE_ALIGN_AUTO_TRANSFORM = 10, LV_IMAGE_ALIGN_STRETCH = 11,
    LV_IMAGE_ALIGN_TILE = 12
type
  enum_lv_animimg_part_t* {.size: sizeof(cuint).} = enum
    LV_ANIM_IMAGE_PART_MAIN = 0
type
  enum_lv_arc_mode_t* {.size: sizeof(cuint).} = enum
    LV_ARC_MODE_NORMAL = 0, LV_ARC_MODE_SYMMETRICAL = 1, LV_ARC_MODE_REVERSE = 2
type
  enum_lv_label_long_mode_t* {.size: sizeof(cuint).} = enum
    LV_LABEL_LONG_WRAP = 0, LV_LABEL_LONG_DOT = 1, LV_LABEL_LONG_SCROLL = 2,
    LV_LABEL_LONG_SCROLL_CIRCULAR = 3, LV_LABEL_LONG_CLIP = 4
type
  enum_lv_bar_mode_t* {.size: sizeof(cuint).} = enum
    LV_BAR_MODE_NORMAL = 0, LV_BAR_MODE_SYMMETRICAL = 1, LV_BAR_MODE_RANGE = 2
type
  enum_lv_bar_orientation_t* {.size: sizeof(cuint).} = enum
    LV_BAR_ORIENTATION_AUTO = 0, LV_BAR_ORIENTATION_HORIZONTAL = 1,
    LV_BAR_ORIENTATION_VERTICAL = 2
type
  enum_lv_buttonmatrix_ctrl_t* {.size: sizeof(cuint).} = enum
    LV_BUTTONMATRIX_CTRL_HIDDEN = 16, LV_BUTTONMATRIX_CTRL_NO_REPEAT = 32,
    LV_BUTTONMATRIX_CTRL_DISABLED = 64, LV_BUTTONMATRIX_CTRL_CHECKABLE = 128,
    LV_BUTTONMATRIX_CTRL_CHECKED = 256, LV_BUTTONMATRIX_CTRL_CLICK_TRIG = 512,
    LV_BUTTONMATRIX_CTRL_POPOVER = 1024, LV_BUTTONMATRIX_CTRL_RESERVED_1 = 2048,
    LV_BUTTONMATRIX_CTRL_RESERVED_2 = 4096,
    LV_BUTTONMATRIX_CTRL_RESERVED_3 = 8192,
    LV_BUTTONMATRIX_CTRL_CUSTOM_1 = 16384, LV_BUTTONMATRIX_CTRL_CUSTOM_2 = 32768
type
  enum_lv_chart_type_t* {.size: sizeof(cuint).} = enum
    LV_CHART_TYPE_NONE = 0, LV_CHART_TYPE_LINE = 1, LV_CHART_TYPE_BAR = 2,
    LV_CHART_TYPE_SCATTER = 3
type
  enum_lv_chart_update_mode_t* {.size: sizeof(cuint).} = enum
    LV_CHART_UPDATE_MODE_SHIFT = 0, LV_CHART_UPDATE_MODE_CIRCULAR = 1
type
  enum_lv_chart_axis_t* {.size: sizeof(cuint).} = enum
    LV_CHART_AXIS_PRIMARY_Y = 0, LV_CHART_AXIS_SECONDARY_Y = 1,
    LV_CHART_AXIS_PRIMARY_X = 2, LV_CHART_AXIS_SECONDARY_X = 4,
    LV_CHART_AXIS_LAST = 5
type
  enum_lv_imagebutton_state_t* {.size: sizeof(cuint).} = enum
    LV_IMAGEBUTTON_STATE_RELEASED = 0, LV_IMAGEBUTTON_STATE_PRESSED = 1,
    LV_IMAGEBUTTON_STATE_DISABLED = 2,
    LV_IMAGEBUTTON_STATE_CHECKED_RELEASED = 3,
    LV_IMAGEBUTTON_STATE_CHECKED_PRESSED = 4,
    LV_IMAGEBUTTON_STATE_CHECKED_DISABLED = 5, LV_IMAGEBUTTON_STATE_NUM = 6
type
  enum_lv_keyboard_mode_t* {.size: sizeof(cuint).} = enum
    LV_KEYBOARD_MODE_TEXT_LOWER = 0, LV_KEYBOARD_MODE_TEXT_UPPER = 1,
    LV_KEYBOARD_MODE_SPECIAL = 2, LV_KEYBOARD_MODE_NUMBER = 3,
    LV_KEYBOARD_MODE_USER_1 = 4, LV_KEYBOARD_MODE_USER_2 = 5,
    LV_KEYBOARD_MODE_USER_3 = 6, LV_KEYBOARD_MODE_USER_4 = 7
type
  enum_lv_menu_mode_header_t* {.size: sizeof(cuint).} = enum
    LV_MENU_HEADER_TOP_FIXED = 0, LV_MENU_HEADER_TOP_UNFIXED = 1,
    LV_MENU_HEADER_BOTTOM_FIXED = 2
type
  enum_lv_menu_mode_root_back_button_t* {.size: sizeof(cuint).} = enum
    LV_MENU_ROOT_BACK_BUTTON_DISABLED = 0, LV_MENU_ROOT_BACK_BUTTON_ENABLED = 1
type
  enum_lv_roller_mode_t* {.size: sizeof(cuint).} = enum
    LV_ROLLER_MODE_NORMAL = 0, LV_ROLLER_MODE_INFINITE = 1
type
  enum_lv_scale_mode_t* {.size: sizeof(cuint).} = enum
    LV_SCALE_MODE_HORIZONTAL_TOP = 0, LV_SCALE_MODE_HORIZONTAL_BOTTOM = 1,
    LV_SCALE_MODE_VERTICAL_LEFT = 2, LV_SCALE_MODE_VERTICAL_RIGHT = 4,
    LV_SCALE_MODE_ROUND_INNER = 8, LV_SCALE_MODE_ROUND_OUTER = 16,
    LV_SCALE_MODE_LAST = 17
type
  enum_lv_slider_mode_t* {.size: sizeof(cuint).} = enum
    LV_SLIDER_MODE_NORMAL = 0, LV_SLIDER_MODE_SYMMETRICAL = 1,
    LV_SLIDER_MODE_RANGE = 2
type
  enum_lv_span_overflow_t* {.size: sizeof(cuint).} = enum
    LV_SPAN_OVERFLOW_CLIP = 0, LV_SPAN_OVERFLOW_ELLIPSIS = 1,
    LV_SPAN_OVERFLOW_LAST = 2
type
  enum_lv_span_mode_t* {.size: sizeof(cuint).} = enum
    LV_SPAN_MODE_FIXED = 0, LV_SPAN_MODE_EXPAND = 1, LV_SPAN_MODE_BREAK = 2,
    LV_SPAN_MODE_LAST = 3
type
  enum_lv_table_cell_ctrl_t* {.size: sizeof(cuint).} = enum
    LV_TABLE_CELL_CTRL_MERGE_RIGHT = 1, LV_TABLE_CELL_CTRL_TEXT_CROP = 2,
    LV_TABLE_CELL_CTRL_CUSTOM_1 = 16, LV_TABLE_CELL_CTRL_CUSTOM_2 = 32,
    LV_TABLE_CELL_CTRL_CUSTOM_3 = 64, LV_TABLE_CELL_CTRL_CUSTOM_4 = 128
type
  enum_lv_subject_type_t* {.size: sizeof(cuint).} = enum
    LV_SUBJECT_TYPE_INVALID = 0, LV_SUBJECT_TYPE_NONE = 1,
    LV_SUBJECT_TYPE_INT = 2, LV_SUBJECT_TYPE_POINTER = 3,
    LV_SUBJECT_TYPE_COLOR = 4, LV_SUBJECT_TYPE_GROUP = 5,
    LV_SUBJECT_TYPE_STRING = 6
type
  enum_lv_gridnav_ctrl_t* {.size: sizeof(cuint).} = enum
    LV_GRIDNAV_CTRL_NONE = 0, LV_GRIDNAV_CTRL_ROLLOVER = 1,
    LV_GRIDNAV_CTRL_SCROLL_FIRST = 2, LV_GRIDNAV_CTRL_HORIZONTAL_MOVE_ONLY = 4,
    LV_GRIDNAV_CTRL_VERTICAL_MOVE_ONLY = 8
type
  enum_lv_ime_pinyin_mode_t* {.size: sizeof(cuint).} = enum
    LV_IME_PINYIN_MODE_K26 = 0, LV_IME_PINYIN_MODE_K9 = 1,
    LV_IME_PINYIN_MODE_K9_NUMBER = 2
type
  enum_lv_file_explorer_sort_t* {.size: sizeof(cuint).} = enum
    LV_EXPLORER_SORT_NONE = 0, LV_EXPLORER_SORT_KIND = 1
type
  enum_lv_file_explorer_dir_t* {.size: sizeof(cuint).} = enum
    LV_EXPLORER_HOME_DIR = 0, LV_EXPLORER_MUSIC_DIR = 1,
    LV_EXPLORER_PICTURES_DIR = 2, LV_EXPLORER_VIDEO_DIR = 3,
    LV_EXPLORER_DOCS_DIR = 4, LV_EXPLORER_FS_DIR = 5
type
  enum_lv_vector_fill_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_FILL_NONZERO = 0, LV_VECTOR_FILL_EVENODD = 1
type
  enum_lv_vector_stroke_cap_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_STROKE_CAP_BUTT = 0, LV_VECTOR_STROKE_CAP_SQUARE = 1,
    LV_VECTOR_STROKE_CAP_ROUND = 2
type
  enum_lv_vector_stroke_join_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_STROKE_JOIN_MITER = 0, LV_VECTOR_STROKE_JOIN_BEVEL = 1,
    LV_VECTOR_STROKE_JOIN_ROUND = 2
type
  enum_lv_vector_path_quality_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_PATH_QUALITY_MEDIUM = 0, LV_VECTOR_PATH_QUALITY_HIGH = 1,
    LV_VECTOR_PATH_QUALITY_LOW = 2
type
  enum_lv_vector_blend_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_BLEND_SRC_OVER = 0, LV_VECTOR_BLEND_SRC_IN = 1,
    LV_VECTOR_BLEND_DST_OVER = 2, LV_VECTOR_BLEND_DST_IN = 3,
    LV_VECTOR_BLEND_SCREEN = 4, LV_VECTOR_BLEND_MULTIPLY = 5,
    LV_VECTOR_BLEND_NONE = 6, LV_VECTOR_BLEND_ADDITIVE = 7,
    LV_VECTOR_BLEND_SUBTRACTIVE = 8
type
  enum_lv_vector_path_op_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_PATH_OP_MOVE_TO = 0, LV_VECTOR_PATH_OP_LINE_TO = 1,
    LV_VECTOR_PATH_OP_QUAD_TO = 2, LV_VECTOR_PATH_OP_CUBIC_TO = 3,
    LV_VECTOR_PATH_OP_CLOSE = 4
type
  enum_lv_vector_draw_style_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_DRAW_STYLE_SOLID = 0, LV_VECTOR_DRAW_STYLE_PATTERN = 1,
    LV_VECTOR_DRAW_STYLE_GRADIENT = 2
type
  enum_lv_vector_gradient_spread_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_GRADIENT_SPREAD_PAD = 0, LV_VECTOR_GRADIENT_SPREAD_REPEAT = 1,
    LV_VECTOR_GRADIENT_SPREAD_REFLECT = 2
type
  enum_lv_vector_gradient_style_t* {.size: sizeof(cuint).} = enum
    LV_VECTOR_GRADIENT_STYLE_LINEAR = 0, LV_VECTOR_GRADIENT_STYLE_RADIAL = 1
type
  enum_lv_draw_sw_mask_res_t* {.size: sizeof(cuint).} = enum
    LV_DRAW_SW_MASK_RES_TRANSP = 0, LV_DRAW_SW_MASK_RES_FULL_COVER = 1,
    LV_DRAW_SW_MASK_RES_CHANGED = 2, LV_DRAW_SW_MASK_RES_UNKNOWN = 3
type
  enum_lv_draw_sw_mask_type_t* {.size: sizeof(cuint).} = enum
    LV_DRAW_SW_MASK_TYPE_LINE = 0, LV_DRAW_SW_MASK_TYPE_ANGLE = 1,
    LV_DRAW_SW_MASK_TYPE_RADIUS = 2, LV_DRAW_SW_MASK_TYPE_FADE = 3,
    LV_DRAW_SW_MASK_TYPE_MAP = 4
type
  enum_lv_draw_sw_mask_line_side_t* {.size: sizeof(cuint).} = enum
    LV_DRAW_SW_MASK_LINE_SIDE_LEFT = 0, LV_DRAW_SW_MASK_LINE_SIDE_RIGHT = 1,
    LV_DRAW_SW_MASK_LINE_SIDE_TOP = 2, LV_DRAW_SW_MASK_LINE_SIDE_BOTTOM = 3
type
  struct_lv_image_decoder_args_t* = object
type
  struct_lv_rb_node_t* = object
type
  struct_lv_image_header_cache_data_t* = object
type
  struct_lv_span_t* = object
type
  struct_lv_imagebutton_t* = object
type
  struct_lv_table_cell_t* = object
type
  struct_lv_xkb_t* = object
type
  struct_lv_draw_buf_handlers_t* = object
type
  lv_area_join* = object
type
  struct_lv_draw_sw_mask_map_param_t* = object
type
  struct_lv_table_t* = object
type
  struct_lv_chart_t* = object
type
  struct_lv_fs_file_cache_t* = object
type
  struct_lv_matrix_t* = object
type
  struct_lv_sysmon_backend_data_t* = object
type
  struct_lv_monkey_t* = object
type
  struct_lv_draw_mask_t* = object
type
  struct_lv_file_explorer_t* = object
type
  struct_lv_fragment_manager_t* = object
type
  struct_lv_line_t* = object
type
  struct_lv_theme_t* = object
type
  struct_lv_draw_glyph_dsc_t* = object
type
  struct_lv_observer_t* = object
type
  struct_lv_libinput_event_t* = object
type
  struct_lv_freetype_outline_event_param_t* = object
type
  struct_lv_cover_check_info_t* = object
type
  struct_lv_anim_timeline_t* = object
type
  struct_lv_imagebutton_src_info_t* = object
type
  LV_LL_READ* = object
type
  struct_lv_gif_t* = object
type
  struct_lv_win_t* = object
type
  LV_FLEX_WRAP* = object
type
  struct_lv_vector_gradient_t* = object
type
  struct_lv_vector_path_t* = object
type
  LV_COORD_MAX* = object
type
  struct_lv_draw_sw_blend_dsc_t* = object
type
  struct_lv_ffmpeg_player_t* = object
type
  struct_lv_indev_t* = object
type
  struct_lv_dropdown_t* = object
type
  struct_lv_textarea_t* = object
type
  struct_lv_vector_stroke_dsc_t* = object
type
  struct_lv_image_cache_data_t* = object
type
  struct_lv_vector_draw_dsc_t* = object
type
  struct_lv_tileview_tile_t* = object
type
  lv_event_mark_deleted* = object
type
  struct_lv_chart_cursor_t* = object
type
  struct_lv_event_t* = object
type
  struct_lv_timer_t* = object
type
  struct_lv_menu_history_t* = object
type
  struct_lv_draw_sw_blend_image_dsc_t* = object
type
  struct_lv_obj_style_t* = object
type
  struct_lv_libinput_t* = object
type
  struct_lv_calendar_t* = object
type
  compiler_FILE_private* = object
type
  struct_lv_scale_t* = object
type
  struct_lv_vector_fill_dsc_t* = object
type
  struct_lv_menu_page_t* = object
type
  struct_lv_qrcode_t* = object
type
  struct_lv_draw_sw_mask_radius_param_t* = object
type
  struct_lv_ime_pinyin_t* = object
type
  struct_lv_tileview_t* = object
type
  struct_lv_group_t* = object
type
  lv_area_intersect* = object
type
  struct_lv_dropdown_list_t* = object
type
  struct_lv_button_t* = object
type
  struct_lv_draw_sw_mask_common_dsc_t* = object
type
  struct_lv_glfw_window_t* = object
type
  struct_lv_image_decoder_dsc_t* = object
type
  struct_lv_switch_t* = object
type
  struct_lv_canvas_t* = object
type
  lv_indev_scroll_handler* = object
type
  struct_lv_barcode_t* = object
type
  lv_obj_scroll_by_raw* = object
type
  struct_lv_image_decoder_t* = object
type
  struct_lv_rlottie_t* = object
type
  struct_lv_animimg_t* = object
type
  lv_display_refr_timer* = object
type
  LV_FLEX_COLUMN* = object
type
  struct_lv_fs_path_ex_t* = object
type
  struct_lv_draw_sw_mask_line_param_t* = object
type
  struct_lv_glfw_texture_t* = object
type
  LV_LL_READ_BACK* = object
type
  struct_lv_draw_sw_mask_fade_param_t* = object
type
  lv_inv_area* = object
type
  struct_lv_obj_spec_attr_t* = object
type
  struct_lv_draw_sw_blend_fill_dsc_t* = object
type
  struct_lv_obj_t* = object
type
  struct_lv_scale_section_t* = object
type
  struct_lv_obj_class_t* = object
type
  struct_lv_spinbox_t* = object
type
  struct_lv_freetype_outline_vector_t* = object
type
  struct_lv_arc_t* = object
type
  struct_lv_menu_t* = object
type
  struct_lv_chart_series_t* = object
type
  struct_lv_vector_dsc_t* = object
type
  lv_image_buf_get_transformed_area* = object
type
  struct_lv_image_t* = object
type
  struct_lv_draw_vector_task_dsc_t* = object
type
  struct_lv_roller_t* = object
type
  struct_lv_draw_sw_mask_angle_param_t* = object
type
  struct_lv_tabview_t* = object
type
  lv_area_is_equal* = object
type
  struct_lv_draw_label_hint_t* = object
type
  struct_lv_label_t* = object
type
  struct_lv_draw_sw_unit_t* = object
type
  struct_lv_menu_load_page_event_data_t* = object
type
  struct_lv_bar_t* = object
type
  lv_obj_get_ext_draw_size* = object
type
  struct_lv_fragment_managed_states_t* = object
type
  lv_area_is_in* = object
type
  struct_lv_rb_t* = object
type
  compiler_LINE_private* = object
type
  struct_lv_slider_t* = object
type
  struct_lv_grad_t* = object
type
  struct_lv_draw_image_sup_t* = object
type
  struct_lv_cache_entry_t* = object
type
  struct_lv_obj_style_transition_dsc_t* = object
type
  struct_lv_spangroup_t* = object
type
  LV_DRAW_BUF_DEFINE_STATIC* = object
type
  struct_lv_event_dsc_t* = object
type
  struct_lv_draw_mask_rect_dsc_t* = object
type
  struct_lv_led_t* = object
type
  LV_FLEX_REVERSE* = object
type
  struct_lv_bar_anim_t* = object
type
  struct_lv_msgbox_t* = object
type
  struct_lv_buttonmatrix_t* = object
type
  struct_lv_keyboard_t* = object
type
  struct_lv_display_t* = object
type
  struct_lv_draw_unit_t* = object
type
  struct_lv_hit_test_info_t* = object
type
  lv_area_is_point_on* = object
type
  struct_lv_draw_task_t* = object
type
  struct_lv_profiler_builtin_config_t* = object
type
  struct_lv_checkbox_t* = object
type
  lv_obj_t* = struct_lv_obj_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:89:25
  lv_obj_class_t* = struct_lv_obj_class_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:98:31
  lv_event_t* = struct_lv_event_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:110:27
  lv_event_code_t* = enum_lv_event_code_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:114:3
  lv_anim_t* = struct_lv_anim_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:116:26
  lv_display_t* = struct_lv_display_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:102:29
  lv_timer_t* = struct_lv_timer_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:112:27
  lv_result_t* = enum_lv_result_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:58:3
  lv_uintptr_t* = uintptr_t  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:62:19
  uintptr_t* = culong        ## Generated based on /usr/include/stdint.h:79:27
  lv_intptr_t* = intptr_t    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:63:18
  intptr_t* = clong          ## Generated based on /usr/include/stdint.h:76:19
  lv_value_precise_t* = int32 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:81:17
  lv_state_t* = uint16       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:91:18
  lv_part_t* = uint32        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:92:18
  lv_opa_t* = uint8          ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:94:17
  lv_style_prop_t* = uint8   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:96:17
  lv_group_t* = struct_lv_group_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:100:27
  lv_layer_t* = struct_lv_layer_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:104:27
  struct_lv_layer_t* {.pure, inheritable, bycopy.} = object
    draw_buf*: ptr lv_draw_buf_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:70:8
    buf_area*: lv_area_t
    color_format*: lv_color_format_t
    internal_clip_area*: lv_area_t
    phy_clip_area*: lv_area_t
    draw_task_head*: ptr lv_draw_task_t
    parent*: ptr lv_layer_t
    next*: ptr lv_layer_t
    all_tasks_added*: bool
    user_data*: pointer
  lv_draw_unit_t* = struct_lv_draw_unit_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:105:31
  lv_draw_task_t* = struct_lv_draw_task_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:106:31
  lv_indev_t* = struct_lv_indev_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:108:27
  lv_theme_t* = struct_lv_theme_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:114:27
  struct_lv_anim_t_parameter_t* {.union, bycopy.} = object
    bezier3*: lv_anim_bezier3_para_t
  struct_lv_anim_t* {.pure, inheritable, bycopy.} = object
    var_field*: pointer      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:124:8
    exec_cb*: lv_anim_exec_xcb_t
    custom_exec_cb*: lv_anim_custom_exec_cb_t
    start_cb*: lv_anim_start_cb_t
    completed_cb*: lv_anim_completed_cb_t
    deleted_cb*: lv_anim_deleted_cb_t
    get_value_cb*: lv_anim_get_value_cb_t
    user_data*: pointer
    path_cb*: lv_anim_path_cb_t
    start_value*: int32
    current_value*: int32
    end_value*: int32
    duration*: int32
    act_time*: int32
    playback_delay*: uint32
    playback_duration*: uint32
    repeat_delay*: uint32
    repeat_cnt*: uint32
    parameter*: struct_lv_anim_t_parameter_t
    last_timer_run*: uint32
    playback_now* {.bitsize: 1'i64.}: uint8
    run_round* {.bitsize: 1'i64.}: uint8
    start_cb_called* {.bitsize: 1'i64.}: uint8
    early_apply* {.bitsize: 1'i64.}: uint8
  lv_font_t* = struct_lv_font_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:118:26
  struct_lv_font_t* {.pure, inheritable, bycopy.} = object
    get_glyph_dsc*: proc (a0: ptr lv_font_t; a1: ptr lv_font_glyph_dsc_t;
                          a2: uint32; a3: uint32): bool {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_font.h:88:8
    get_glyph_bitmap*: proc (a0: ptr lv_font_glyph_dsc_t; a1: ptr lv_draw_buf_t): pointer {.
        cdecl.}
    release_glyph*: proc (a0: ptr lv_font_t; a1: ptr lv_font_glyph_dsc_t): void {.
        cdecl.}
    line_height*: int32
    base_line*: int32
    subpx* {.bitsize: 2'i64.}: uint8
    kerning* {.bitsize: 1'i64.}: uint8
    underline_position*: int8
    underline_thickness*: int8
    dsc*: pointer
    fallback*: ptr lv_font_t
    user_data*: pointer
  lv_image_decoder_t* = struct_lv_image_decoder_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:120:35
  lv_image_decoder_dsc_t* = struct_lv_image_decoder_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:122:39
  lv_fragment_t* = struct_lv_fragment_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:124:30
  struct_lv_fragment_t* {.pure, inheritable, bycopy.} = object
    cls*: ptr lv_fragment_class_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:30:8
    managed*: ptr lv_fragment_managed_states_t
    child_manager*: ptr lv_fragment_manager_t
    obj*: ptr lv_obj_t
  lv_fragment_class_t* = struct_lv_fragment_class_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:125:36
  struct_lv_fragment_class_t* {.pure, inheritable, bycopy.} = object
    constructor_cb*: proc (a0: ptr lv_fragment_t; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:52:8
    destructor_cb*: proc (a0: ptr lv_fragment_t): void {.cdecl.}
    attached_cb*: proc (a0: ptr lv_fragment_t): void {.cdecl.}
    detached_cb*: proc (a0: ptr lv_fragment_t): void {.cdecl.}
    create_obj_cb*: proc (a0: ptr lv_fragment_t; a1: ptr lv_obj_t): ptr lv_obj_t {.
        cdecl.}
    obj_created_cb*: proc (a0: ptr lv_fragment_t; a1: ptr lv_obj_t): void {.
        cdecl.}
    obj_will_delete_cb*: proc (a0: ptr lv_fragment_t; a1: ptr lv_obj_t): void {.
        cdecl.}
    obj_deleted_cb*: proc (a0: ptr lv_fragment_t; a1: ptr lv_obj_t): void {.
        cdecl.}
    event_cb*: proc (a0: ptr lv_fragment_t; a1: cint; a2: pointer): bool {.cdecl.}
    instance_size*: csize_t
  lv_fragment_managed_states_t* = struct_lv_fragment_managed_states_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:126:45
  lv_profiler_builtin_config_t* = struct_lv_profiler_builtin_config_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:128:45
  lv_rb_node_t* = struct_lv_rb_node_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:130:29
  lv_rb_t* = struct_lv_rb_t  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:132:24
  lv_color_filter_dsc_t* = struct_lv_color_filter_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:134:38
  struct_lv_color_filter_dsc_t* {.pure, inheritable, bycopy.} = object
    filter_cb*: lv_color_filter_cb_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color_op.h:33:8
    user_data*: pointer
  lv_event_dsc_t* = struct_lv_event_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:136:31
  lv_fs_file_cache_t* = struct_lv_fs_file_cache_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:138:35
  lv_fs_path_ex_t* = struct_lv_fs_path_ex_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:140:32
  lv_image_decoder_args_t* = struct_lv_image_decoder_args_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:142:40
  lv_image_cache_data_t* = struct_lv_image_cache_data_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:144:38
  lv_image_header_cache_data_t* = struct_lv_image_header_cache_data_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:146:45
  lv_draw_mask_t* = struct_lv_draw_mask_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:148:31
  lv_grad_t* = struct_lv_grad_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:150:26
  lv_draw_label_hint_t* = struct_lv_draw_label_hint_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:152:37
  lv_draw_glyph_dsc_t* = struct_lv_draw_glyph_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:154:36
  lv_draw_image_sup_t* = struct_lv_draw_image_sup_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:156:36
  lv_draw_mask_rect_dsc_t* = struct_lv_draw_mask_rect_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:158:40
  lv_obj_style_t* = struct_lv_obj_style_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:160:31
  lv_obj_style_transition_dsc_t* = struct_lv_obj_style_transition_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:162:46
  lv_hit_test_info_t* = struct_lv_hit_test_info_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:164:35
  lv_cover_check_info_t* = struct_lv_cover_check_info_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:166:38
  lv_obj_spec_attr_t* = struct_lv_obj_spec_attr_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:168:35
  lv_image_t* = struct_lv_image_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:170:27
  lv_animimg_t* = struct_lv_animimg_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:172:29
  lv_arc_t* = struct_lv_arc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:174:25
  lv_label_t* = struct_lv_label_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:176:27
  lv_bar_anim_t* = struct_lv_bar_anim_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:178:30
  lv_bar_t* = struct_lv_bar_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:180:25
  lv_button_t* = struct_lv_button_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:182:28
  lv_buttonmatrix_t* = struct_lv_buttonmatrix_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:184:34
  lv_calendar_t* = struct_lv_calendar_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:186:30
  lv_canvas_t* = struct_lv_canvas_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:188:28
  lv_chart_series_t* = struct_lv_chart_series_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:190:34
  lv_chart_cursor_t* = struct_lv_chart_cursor_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:192:34
  lv_chart_t* = struct_lv_chart_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:194:27
  lv_checkbox_t* = struct_lv_checkbox_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:196:30
  lv_dropdown_t* = struct_lv_dropdown_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:198:30
  lv_dropdown_list_t* = struct_lv_dropdown_list_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:200:35
  lv_imagebutton_src_info_t* = struct_lv_imagebutton_src_info_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:202:42
  lv_imagebutton_t* = struct_lv_imagebutton_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:204:33
  lv_keyboard_t* = struct_lv_keyboard_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:206:30
  lv_led_t* = struct_lv_led_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:208:25
  lv_line_t* = struct_lv_line_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:210:26
  lv_menu_load_page_event_data_t* = struct_lv_menu_load_page_event_data_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:212:47
  lv_menu_history_t* = struct_lv_menu_history_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:214:34
  lv_menu_t* = struct_lv_menu_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:216:26
  lv_menu_page_t* = struct_lv_menu_page_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:218:31
  lv_msgbox_t* = struct_lv_msgbox_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:220:28
  lv_roller_t* = struct_lv_roller_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:222:28
  lv_scale_section_t* = struct_lv_scale_section_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:224:35
  lv_scale_t* = struct_lv_scale_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:226:27
  lv_slider_t* = struct_lv_slider_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:228:28
  lv_span_t* = struct_lv_span_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:230:26
  lv_spangroup_t* = struct_lv_spangroup_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:232:31
  lv_textarea_t* = struct_lv_textarea_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:234:30
  lv_spinbox_t* = struct_lv_spinbox_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:236:29
  lv_switch_t* = struct_lv_switch_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:238:28
  lv_table_cell_t* = struct_lv_table_cell_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:240:32
  lv_table_t* = struct_lv_table_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:242:27
  lv_tabview_t* = struct_lv_tabview_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:244:29
  lv_tileview_t* = struct_lv_tileview_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:246:30
  lv_tileview_tile_t* = struct_lv_tileview_tile_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:248:35
  lv_win_t* = struct_lv_win_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:250:25
  lv_observer_t* = struct_lv_observer_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:252:30
  lv_monkey_config_t* = struct_lv_monkey_config_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:254:35
  struct_lv_monkey_config_t_period_range_t* {.pure, inheritable, bycopy.} = object
    min*: uint32
    max*: uint32
  struct_lv_monkey_config_t_input_range_t* {.pure, inheritable, bycopy.} = object
    min*: int32
    max*: int32
  struct_lv_monkey_config_t* {.pure, inheritable, bycopy.} = object
    type_field*: lv_indev_type_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/monkey/lv_monkey.h:30:8
    period_range*: struct_lv_monkey_config_t_period_range_t
    input_range*: struct_lv_monkey_config_t_input_range_t
  lv_ime_pinyin_t* = struct_lv_ime_pinyin_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:256:32
  lv_file_explorer_t* = struct_lv_file_explorer_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:258:35
  lv_barcode_t* = struct_lv_barcode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:260:29
  lv_gif_t* = struct_lv_gif_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:262:25
  lv_qrcode_t* = struct_lv_qrcode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:264:28
  lv_freetype_outline_vector_t* = struct_lv_freetype_outline_vector_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:266:45
  lv_freetype_outline_event_param_t* = struct_lv_freetype_outline_event_param_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:268:50
  lv_fpoint_t* = struct_lv_fpoint_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:270:28
  struct_lv_fpoint_t* {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:89:8
    y*: cfloat
  lv_matrix_t* = struct_lv_matrix_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:272:28
  lv_vector_path_t* = struct_lv_vector_path_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:274:33
  lv_vector_gradient_t* = struct_lv_vector_gradient_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:276:37
  lv_vector_fill_dsc_t* = struct_lv_vector_fill_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:278:37
  lv_vector_stroke_dsc_t* = struct_lv_vector_stroke_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:280:39
  lv_vector_draw_dsc_t* = struct_lv_vector_draw_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:282:37
  lv_draw_vector_task_dsc_t* = struct_lv_draw_vector_task_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:284:42
  lv_vector_dsc_t* = struct_lv_vector_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:286:32
  lv_xkb_t* = struct_lv_xkb_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:288:25
  lv_libinput_event_t* = struct_lv_libinput_event_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:290:36
  lv_libinput_t* = struct_lv_libinput_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:292:30
  lv_draw_sw_unit_t* = struct_lv_draw_sw_unit_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:294:34
  lv_draw_sw_mask_common_dsc_t* = struct_lv_draw_sw_mask_common_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:296:45
  lv_draw_sw_mask_line_param_t* = struct_lv_draw_sw_mask_line_param_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:298:45
  lv_draw_sw_mask_angle_param_t* = struct_lv_draw_sw_mask_angle_param_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:300:46
  lv_draw_sw_mask_radius_param_t* = struct_lv_draw_sw_mask_radius_param_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:302:47
  lv_draw_sw_mask_fade_param_t* = struct_lv_draw_sw_mask_fade_param_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:304:45
  lv_draw_sw_mask_map_param_t* = struct_lv_draw_sw_mask_map_param_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:306:44
  lv_draw_sw_blend_dsc_t* = struct_lv_draw_sw_blend_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:308:39
  lv_draw_sw_blend_fill_dsc_t* = struct_lv_draw_sw_blend_fill_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:310:44
  lv_draw_sw_blend_image_dsc_t* = struct_lv_draw_sw_blend_image_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:312:45
  lv_draw_buf_handlers_t* = struct_lv_draw_buf_handlers_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:314:39
  lv_rlottie_t* = struct_lv_rlottie_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:316:29
  lv_ffmpeg_player_t* = struct_lv_ffmpeg_player_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:318:35
  lv_glfw_window_t* = struct_lv_glfw_window_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:320:33
  lv_glfw_texture_t* = struct_lv_glfw_texture_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:321:34
  lv_prop_id_t* = uint32     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:323:18
  lv_draw_buf_t* = struct_lv_draw_buf_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:325:30
  struct_lv_draw_buf_t* {.pure, inheritable, bycopy.} = object
    header*: lv_image_header_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_draw_buf.h:88:8
    data_size*: uint32
    data*: ptr uint8
    unaligned_data*: pointer
    handlers*: ptr lv_draw_buf_handlers_t
  lv_sysmon_backend_data_t* = struct_lv_sysmon_backend_data_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:333:41
  lv_mem_pool_t* = pointer   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/stdlib/lv_mem.h:30:16
  struct_lv_mem_monitor_t* {.pure, inheritable, bycopy.} = object
    total_size*: csize_t     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/stdlib/lv_mem.h:35:9
    free_cnt*: csize_t
    free_size*: csize_t
    free_biggest_size*: csize_t
    used_cnt*: csize_t
    max_used*: csize_t
    used_pct*: uint8
    frag_pct*: uint8
  lv_mem_monitor_t* = struct_lv_mem_monitor_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/stdlib/lv_mem.h:44:3
  lv_log_level_t* = int8     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:41:16
  lv_log_print_g_cb_t* = proc (a0: lv_log_level_t; a1: cstring): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:60:16
  lv_tick_get_cb_t* = proc (): uint32 {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../tick/lv_tick.h:30:20
  lv_delay_cb_t* = proc (a0: uint32): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../tick/lv_tick.h:32:16
  lv_ll_node_t* = uint8      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_ll.h:28:17
  struct_lv_ll_t* {.pure, inheritable, bycopy.} = object
    n_size*: uint32          ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_ll.h:31:9
    head*: ptr lv_ll_node_t
    tail*: ptr lv_ll_node_t
  lv_ll_t* = struct_lv_ll_t  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_ll.h:35:3
  lv_timer_cb_t* = proc (a0: ptr lv_timer_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:36:16
  lv_timer_handler_resume_cb_t* = proc (a0: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:41:16
  struct_lv_sqrt_res_t* {.pure, inheritable, bycopy.} = object
    i*: uint16               ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:39:9
    f*: uint16
  lv_sqrt_res_t* = struct_lv_sqrt_res_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:42:3
  struct_lv_array_t* {.pure, inheritable, bycopy.} = object
    data*: ptr uint8         ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_array.h:35:9
    size*: uint32
    capacity*: uint32
    element_size*: uint32
  lv_array_t* = struct_lv_array_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_array.h:40:3
  lv_async_cb_t* = proc (a0: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_async.h:30:16
  lv_anim_enable_t* = enum_lv_anim_enable_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:86:3
  lv_anim_path_cb_t* = proc (a0: ptr lv_anim_t): int32 {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:89:19
  lv_anim_exec_xcb_t* = proc (a0: pointer; a1: int32): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:97:16
  lv_anim_custom_exec_cb_t* = proc (a0: ptr lv_anim_t; a1: int32): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:101:16
  lv_anim_completed_cb_t* = proc (a0: ptr lv_anim_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:104:16
  lv_anim_start_cb_t* = proc (a0: ptr lv_anim_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:107:16
  lv_anim_get_value_cb_t* = proc (a0: ptr lv_anim_t): int32 {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:110:19
  lv_anim_deleted_cb_t* = proc (a0: ptr lv_anim_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:113:16
  struct_lv_anim_bezier3_para_t* {.pure, inheritable, bycopy.} = object
    x1*: int16               ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:116:9
    y1*: int16
    x2*: int16
    y2*: int16
  lv_anim_bezier3_para_t* = struct_lv_anim_bezier3_para_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:121:3
  lv_anim_timeline_t* = struct_lv_anim_timeline_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim_timeline.h:28:35
  lv_rb_color_t* = enum_lv_rb_color_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:31:3
  lv_rb_compare_res_t* = int8 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:33:16
  lv_rb_compare_t* = proc (a0: pointer; a1: pointer): lv_rb_compare_res_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:35:31
  struct_lv_point_t* {.pure, inheritable, bycopy.} = object
    x*: int32                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:31:9
    y*: int32
  lv_point_t* = struct_lv_point_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:34:3
  struct_lv_point_precise_t* {.pure, inheritable, bycopy.} = object
    x*: lv_value_precise_t   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:36:9
    y*: lv_value_precise_t
  lv_point_precise_t* = struct_lv_point_precise_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:39:3
  struct_lv_area_t* {.pure, inheritable, bycopy.} = object
    x1*: int32               ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:42:9
    y1*: int32
    x2*: int32
    y2*: int32
  lv_area_t* = struct_lv_area_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:47:3
  lv_align_t* = enum_lv_align_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:75:3
  lv_dir_t* = enum_lv_dir_t  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:86:3
  struct_lv_color_t* {.pure, inheritable, bycopy.} = object
    blue*: uint8             ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:97:9
    green*: uint8
    red*: uint8
  lv_color_t* = struct_lv_color_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:101:3
  struct_lv_color16_t* {.pure, inheritable, bycopy.} = object
    blue* {.bitsize: 5'i64.}: uint16 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:103:9
    green* {.bitsize: 6'i64.}: uint16
    red* {.bitsize: 5'i64.}: uint16
  lv_color16_t* = struct_lv_color16_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:107:3
  struct_lv_color32_t* {.pure, inheritable, bycopy.} = object
    blue*: uint8             ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:109:9
    green*: uint8
    red*: uint8
    alpha*: uint8
  lv_color32_t* = struct_lv_color32_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:114:3
  struct_lv_color_hsv_t* {.pure, inheritable, bycopy.} = object
    h*: uint16               ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:116:9
    s*: uint8
    v*: uint8
  lv_color_hsv_t* = struct_lv_color_hsv_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:120:3
  struct_lv_color16a_t* {.pure, inheritable, bycopy.} = object
    lumi*: uint8             ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:122:9
    alpha*: uint8
  lv_color16a_t* = struct_lv_color16a_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:125:3
  lv_color_format_t* = enum_lv_color_format_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:193:3
  lv_palette_t* = enum_lv_palette_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_palette.h:48:3
  lv_color_filter_cb_t* = proc (a0: ptr struct_lv_color_filter_dsc_t;
                                a1: lv_color_t; a2: lv_opa_t): lv_color_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color_op.h:31:22
  lv_image_flags_t* = enum_lv_image_flags_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:69:3
  lv_image_compress_t* = enum_lv_image_compress_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:75:3
  struct_lv_image_header_t* {.pure, inheritable, bycopy.} = object
    magic* {.bitsize: 8'i64.}: uint32 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:88:9
    cf* {.bitsize: 8'i64.}: uint32
    flags* {.bitsize: 16'i64.}: uint32
    w* {.bitsize: 16'i64.}: uint32
    h* {.bitsize: 16'i64.}: uint32
    stride* {.bitsize: 16'i64.}: uint32
    reserved_2* {.bitsize: 16'i64.}: uint32
  lv_image_header_t* = struct_lv_image_header_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:97:3
  struct_lv_yuv_plane_t* {.pure, inheritable, bycopy.} = object
    buf*: pointer            ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:100:9
    stride*: uint32
  lv_yuv_plane_t* = struct_lv_yuv_plane_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:103:3
  union_lv_yuv_buf_t_planar_t* {.pure, inheritable, bycopy.} = object
    y*: lv_yuv_plane_t
    u*: lv_yuv_plane_t
    v*: lv_yuv_plane_t
  union_lv_yuv_buf_t_semi_planar_t* {.pure, inheritable, bycopy.} = object
    y*: lv_yuv_plane_t
    uv*: lv_yuv_plane_t
  union_lv_yuv_buf_t* {.union, bycopy.} = object
    yuv*: lv_yuv_plane_t     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:105:9
    planar*: union_lv_yuv_buf_t_planar_t
    semi_planar*: union_lv_yuv_buf_t_semi_planar_t
  lv_yuv_buf_t* = union_lv_yuv_buf_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:116:3
  struct_lv_image_dsc_t* {.pure, inheritable, bycopy.} = object
    header*: lv_image_header_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:122:9
    data_size*: uint32
    data*: ptr uint8
    reserved*: pointer
  lv_image_dsc_t* = struct_lv_image_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:127:3
  lv_draw_buf_malloc_cb* = proc (a0: csize_t; a1: lv_color_format_t): pointer {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_draw_buf.h:78:18
  lv_draw_buf_free_cb* = proc (a0: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_draw_buf.h:80:16
  lv_draw_buf_align_cb* = proc (a0: pointer; a1: lv_color_format_t): pointer {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_draw_buf.h:82:18
  lv_draw_buf_cache_operation_cb* = proc (a0: ptr lv_draw_buf_t;
      a1: ptr lv_area_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_draw_buf.h:84:16
  lv_draw_buf_width_to_stride_cb* = proc (a0: uint32; a1: lv_color_format_t): uint32 {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_draw_buf.h:86:20
  lv_mutex_t* = cint         ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/../../osal/lv_os_none.h:25:13
  lv_thread_t* = cint        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/../../osal/lv_os_none.h:26:13
  lv_thread_sync_t* = cint   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/../../osal/lv_os_none.h:27:13
  lv_thread_prio_t* = enum_lv_thread_prio_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/../../osal/lv_os.h:55:3
  lv_cache_reserve_cond_res_t* = enum_lv_cache_reserve_cond_res_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:35:3
  lv_cache_ops_t* = struct_lv_cache_ops_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:42:31
  struct_lv_cache_ops_t* {.pure, inheritable, bycopy.} = object
    compare_cb*: lv_cache_compare_cb_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:113:8
    create_cb*: lv_cache_create_cb_t
    free_cb*: lv_cache_free_cb_t
  lv_cache_t* = struct_lv_cache_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:43:27
  struct_lv_cache_t* {.pure, inheritable, bycopy.} = object
    clz*: ptr lv_cache_class_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:122:8
    node_size*: uint32
    max_size*: uint32
    size*: uint32
    ops*: lv_cache_ops_t
    lock*: lv_mutex_t
    name*: cstring
  lv_cache_class_t* = struct_lv_cache_class_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:44:33
  struct_lv_cache_class_t* {.pure, inheritable, bycopy.} = object
    alloc_cb*: lv_cache_alloc_cb_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:146:8
    init_cb*: lv_cache_init_cb_t
    destroy_cb*: lv_cache_destroy_cb_t
    get_cb*: lv_cache_get_cb_t
    add_cb*: lv_cache_add_cb_t
    remove_cb*: lv_cache_remove_cb_t
    drop_cb*: lv_cache_drop_cb_t
    drop_all_cb*: lv_cache_drop_all_cb_t
    get_victim_cb*: lv_cache_get_victim_cb
    reserve_cond_cb*: lv_cache_reserve_cond_cb
  lv_cache_entry_t* = struct_lv_cache_entry_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:45:33
  lv_cache_compare_res_t* = int8 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:47:16
  lv_cache_create_cb_t* = proc (a0: pointer; a1: pointer): bool {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:48:16
  lv_cache_free_cb_t* = proc (a0: pointer; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:49:16
  lv_cache_compare_cb_t* = proc (a0: pointer; a1: pointer): lv_cache_compare_res_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:50:34
  lv_cache_alloc_cb_t* = proc (): pointer {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:56:18
  lv_cache_init_cb_t* = proc (a0: ptr lv_cache_t): bool {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:62:16
  lv_cache_destroy_cb_t* = proc (a0: ptr lv_cache_t; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:67:16
  lv_cache_get_cb_t* = proc (a0: ptr lv_cache_t; a1: pointer; a2: pointer): ptr lv_cache_entry_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:73:30
  lv_cache_add_cb_t* = proc (a0: ptr lv_cache_t; a1: pointer; a2: pointer): ptr lv_cache_entry_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:80:30
  lv_cache_remove_cb_t* = proc (a0: ptr lv_cache_t; a1: ptr lv_cache_entry_t;
                                a2: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:86:16
  lv_cache_drop_cb_t* = proc (a0: ptr lv_cache_t; a1: pointer; a2: pointer): void {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:91:16
  lv_cache_drop_all_cb_t* = proc (a0: ptr lv_cache_t; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:96:16
  lv_cache_get_victim_cb* = proc (a0: ptr lv_cache_t; a1: pointer): ptr lv_cache_entry_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:101:30
  lv_cache_reserve_cond_cb* = proc (a0: ptr lv_cache_t; a1: pointer;
                                    a2: csize_t; a3: pointer): lv_cache_reserve_cond_res_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:107:39
  lv_cache_slot_size_t* = struct_lv_cache_slot_size_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:166:37
  struct_lv_cache_slot_size_t* {.pure, inheritable, bycopy.} = object
    size*: csize_t           ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/../misc/cache/lv_cache_private.h:174:8
  lv_font_glyph_format_t* = enum_lv_font_glyph_format_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_font.h:52:3
  struct_lv_font_glyph_dsc_t_gid_t* {.union, bycopy.} = object
    index*: uint32
    src*: pointer
  struct_lv_font_glyph_dsc_t* {.pure, inheritable, bycopy.} = object
    resolved_font*: ptr lv_font_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_font.h:55:9
    adv_w*: uint16
    box_w*: uint16
    box_h*: uint16
    ofs_x*: int16
    ofs_y*: int16
    format*: lv_font_glyph_format_t
    is_placeholder* {.bitsize: 1'i64.}: uint8
    gid*: struct_lv_font_glyph_dsc_t_gid_t
    entry*: ptr lv_cache_entry_t
  lv_font_glyph_dsc_t* = struct_lv_font_glyph_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_font.h:71:3
  lv_font_subpx_t* = enum_lv_font_subpx_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_font.h:79:3
  lv_font_kerning_t* = enum_lv_font_kerning_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_font.h:85:3
  lv_text_flag_t* = enum_lv_text_flag_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_text.h:46:3
  lv_text_align_t* = enum_lv_text_align_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_text.h:54:3
  lv_base_dir_t* = enum_lv_base_dir_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:38:3
  lv_layout_update_cb_t* = proc (a0: ptr lv_obj_t; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../layouts/lv_layout.h:27:16
  lv_layout_t* = enum_lv_layout_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../layouts/lv_layout.h:41:3
  lv_flex_align_t* = enum_lv_flex_align_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../layouts/flex/lv_flex.h:42:3
  lv_flex_flow_t* = enum_lv_flex_flow_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../layouts/flex/lv_flex.h:53:3
  lv_grid_align_t* = enum_lv_grid_align_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../layouts/grid/lv_grid.h:51:3
  lv_blend_mode_t* = enum_lv_blend_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:83:3
  lv_text_decor_t* = enum_lv_text_decor_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:93:3
  lv_border_side_t* = enum_lv_border_side_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:107:3
  lv_grad_dir_t* = enum_lv_grad_dir_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:119:3
  lv_grad_extend_t* = enum_lv_grad_extend_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:128:3
  struct_lv_gradient_stop_t* {.pure, inheritable, bycopy.} = object
    color*: lv_color_t       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:133:9
    opa*: lv_opa_t
    frac*: uint8
  lv_gradient_stop_t* = struct_lv_gradient_stop_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:137:3
  struct_lv_grad_dsc_t* {.pure, inheritable, bycopy.} = object
    stops*: array[2'i64, lv_gradient_stop_t] ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:140:9
    stops_count*: uint8
    dir* {.bitsize: 3'i64.}: lv_grad_dir_t
    extend* {.bitsize: 2'i64.}: lv_grad_extend_t
  lv_grad_dsc_t* = struct_lv_grad_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:172:3
  union_lv_style_value_t* {.union, bycopy.} = object
    num*: int32              ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:177:9
    ptr_field*: pointer
    color*: lv_color_t
  lv_style_value_t* = union_lv_style_value_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:181:3
  lv_style_res_t* = enum_lv_style_res_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:343:3
  struct_lv_style_transition_dsc_t* {.pure, inheritable, bycopy.} = object
    props*: ptr lv_style_prop_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:348:9
    user_data*: pointer
    path_xcb*: lv_anim_path_cb_t
    time*: uint32
    delay*: uint32
  lv_style_transition_dsc_t* = struct_lv_style_transition_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:354:3
  struct_lv_style_const_prop_t* {.pure, inheritable, bycopy.} = object
    prop*: lv_style_prop_t   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:359:9
    value*: lv_style_value_t
  lv_style_const_prop_t* = struct_lv_style_const_prop_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:362:3
  struct_lv_style_t* {.pure, inheritable, bycopy.} = object
    sentinel*: uint32        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:367:9
    values_and_props*: pointer
    has_group*: uint32
    prop_cnt*: uint8
  lv_style_t* = struct_lv_style_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:377:3
  lv_event_cb_t* = proc (a0: ptr lv_event_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:29:16
  lv_event_list_t* = lv_array_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:116:20
  lv_fs_res_t* = enum_lv_fs_res_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:48:3
  lv_fs_mode_t* = enum_lv_fs_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:56:3
  lv_fs_whence_t* = enum_lv_fs_whence_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:65:3
  lv_fs_drv_t* = struct_lv_fs_drv_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:68:28
  struct_lv_fs_drv_t* {.pure, inheritable, bycopy.} = object
    letter*: cschar          ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:69:8
    cache_size*: uint32
    ready_cb*: proc (a0: ptr lv_fs_drv_t): bool {.cdecl.}
    open_cb*: proc (a0: ptr lv_fs_drv_t; a1: cstring; a2: lv_fs_mode_t): pointer {.
        cdecl.}
    close_cb*: proc (a0: ptr lv_fs_drv_t; a1: pointer): lv_fs_res_t {.cdecl.}
    read_cb*: proc (a0: ptr lv_fs_drv_t; a1: pointer; a2: pointer; a3: uint32;
                    a4: ptr uint32): lv_fs_res_t {.cdecl.}
    write_cb*: proc (a0: ptr lv_fs_drv_t; a1: pointer; a2: pointer; a3: uint32;
                     a4: ptr uint32): lv_fs_res_t {.cdecl.}
    seek_cb*: proc (a0: ptr lv_fs_drv_t; a1: pointer; a2: uint32;
                    a3: lv_fs_whence_t): lv_fs_res_t {.cdecl.}
    tell_cb*: proc (a0: ptr lv_fs_drv_t; a1: pointer; a2: ptr uint32): lv_fs_res_t {.
        cdecl.}
    dir_open_cb*: proc (a0: ptr lv_fs_drv_t; a1: cstring): pointer {.cdecl.}
    dir_read_cb*: proc (a0: ptr lv_fs_drv_t; a1: pointer; a2: cstring;
                        a3: uint32): lv_fs_res_t {.cdecl.}
    dir_close_cb*: proc (a0: ptr lv_fs_drv_t; a1: pointer): lv_fs_res_t {.cdecl.}
    user_data*: pointer
  struct_lv_fs_file_t* {.pure, inheritable, bycopy.} = object
    file_d*: pointer         ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:88:9
    drv*: ptr lv_fs_drv_t
    cache*: ptr lv_fs_file_cache_t
  lv_fs_file_t* = struct_lv_fs_file_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:92:3
  struct_lv_fs_dir_t* {.pure, inheritable, bycopy.} = object
    dir_d*: pointer          ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:95:9
    drv*: ptr lv_fs_drv_t
  lv_fs_dir_t* = struct_lv_fs_dir_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:98:3
  lv_image_src_t* = enum_lv_image_src_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_image_decoder.h:39:3
  lv_image_decoder_info_f_t* = proc (a0: ptr lv_image_decoder_t;
                                     a1: ptr lv_image_decoder_dsc_t;
                                     a2: ptr lv_image_header_t): lv_result_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_image_decoder.h:48:23
  lv_image_decoder_open_f_t* = proc (a0: ptr lv_image_decoder_t;
                                     a1: ptr lv_image_decoder_dsc_t): lv_result_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_image_decoder.h:56:23
  lv_image_decoder_get_area_cb_t* = proc (a0: ptr lv_image_decoder_t;
      a1: ptr lv_image_decoder_dsc_t; a2: ptr lv_area_t; a3: ptr lv_area_t): lv_result_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_image_decoder.h:68:23
  lv_image_decoder_close_f_t* = proc (a0: ptr lv_image_decoder_t;
                                      a1: ptr lv_image_decoder_dsc_t): void {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_image_decoder.h:77:16
  lv_draw_task_type_t* = enum_lv_draw_task_type_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:61:3
  lv_draw_task_state_t* = enum_lv_draw_task_state_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:68:3
  struct_lv_draw_dsc_base_t* {.pure, inheritable, bycopy.} = object
    obj*: ptr lv_obj_t       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:110:9
    part*: lv_part_t
    id1*: uint32
    id2*: uint32
    layer*: ptr lv_layer_t
    dsc_size*: csize_t
    user_data*: pointer
  lv_draw_dsc_base_t* = struct_lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:118:3
  lv_display_rotation_t* = enum_lv_display_rotation_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:39:3
  lv_display_render_mode_t* = enum_lv_display_render_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:60:3
  lv_screen_load_anim_t* = enum_lv_screen_load_anim_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:79:3
  lv_display_flush_cb_t* = proc (a0: ptr lv_display_t; a1: ptr lv_area_t;
                                 a2: ptr uint8): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:81:16
  lv_display_flush_wait_cb_t* = proc (a0: ptr lv_display_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:82:16
  lv_obj_tree_walk_res_t* = enum_lv_obj_tree_walk_res_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_tree.h:32:3
  lv_obj_tree_walk_cb_t* = proc (a0: ptr lv_obj_t; a1: pointer): lv_obj_tree_walk_res_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_tree.h:34:34
  lv_obj_point_transform_flag_t* = enum_lv_obj_point_transform_flag_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_pos.h:38:3
  lv_scrollbar_mode_t* = enum_lv_scrollbar_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_scroll.h:36:3
  lv_scroll_snap_t* = enum_lv_scroll_snap_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_scroll.h:44:3
  lv_style_state_cmp_t* = enum_lv_style_state_cmp_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_style.h:33:3
  lv_style_selector_t* = uint32 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_style.h:35:18
  lv_grad_color_t* = lv_color_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/sw/lv_draw_sw_gradient.h:37:20
  struct_lv_draw_rect_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:32:9
    radius*: int32
    bg_opa*: lv_opa_t
    bg_color*: lv_color_t
    bg_grad*: lv_grad_dsc_t
    bg_image_src*: pointer
    bg_image_symbol_font*: pointer
    bg_image_recolor*: lv_color_t
    bg_image_opa*: lv_opa_t
    bg_image_recolor_opa*: lv_opa_t
    bg_image_tiled*: uint8
    border_color*: lv_color_t
    border_width*: int32
    border_opa*: lv_opa_t
    border_side* {.bitsize: 5'i64.}: lv_border_side_t
    border_post* {.bitsize: 1'i64.}: uint8
    outline_color*: lv_color_t
    outline_width*: int32
    outline_pad*: int32
    outline_opa*: lv_opa_t
    shadow_color*: lv_color_t
    shadow_width*: int32
    shadow_offset_x*: int32
    shadow_offset_y*: int32
    shadow_spread*: int32
    shadow_opa*: lv_opa_t
  lv_draw_rect_dsc_t* = struct_lv_draw_rect_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:70:3
  struct_lv_draw_fill_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:72:9
    radius*: int32
    opa*: lv_opa_t
    color*: lv_color_t
    grad*: lv_grad_dsc_t
  lv_draw_fill_dsc_t* = struct_lv_draw_fill_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:80:3
  struct_lv_draw_border_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:82:9
    radius*: int32
    color*: lv_color_t
    width*: int32
    opa*: lv_opa_t
    side* {.bitsize: 5'i64.}: lv_border_side_t
  lv_draw_border_dsc_t* = struct_lv_draw_border_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:92:3
  struct_lv_draw_box_shadow_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:94:9
    radius*: int32
    color*: lv_color_t
    width*: int32
    spread*: int32
    ofs_x*: int32
    ofs_y*: int32
    opa*: lv_opa_t
    bg_cover* {.bitsize: 1'i64.}: uint8
  lv_draw_box_shadow_dsc_t* = struct_lv_draw_box_shadow_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:106:3
  struct_lv_draw_label_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_label.h:32:9
    text*: cstring
    font*: ptr lv_font_t
    sel_start*: uint32
    sel_end*: uint32
    color*: lv_color_t
    sel_color*: lv_color_t
    sel_bg_color*: lv_color_t
    line_space*: int32
    letter_space*: int32
    ofs_x*: int32
    ofs_y*: int32
    opa*: lv_opa_t
    bidi_dir*: lv_base_dir_t
    align*: lv_text_align_t
    flag*: lv_text_flag_t
    decor* {.bitsize: 3'i64.}: lv_text_decor_t
    blend_mode* {.bitsize: 3'i64.}: lv_blend_mode_t
    text_local* {.bitsize: 1'i64.}: uint8
    hint*: ptr lv_draw_label_hint_t
  lv_draw_label_dsc_t* = struct_lv_draw_label_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_label.h:57:3
  lv_draw_glyph_cb_t* = proc (a0: ptr lv_draw_unit_t;
                              a1: ptr lv_draw_glyph_dsc_t;
                              a2: ptr lv_draw_fill_dsc_t; a3: ptr lv_area_t): void {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_label.h:71:15
  struct_lv_draw_image_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_image.h:29:16
    src*: pointer
    header*: lv_image_header_t
    rotation*: int32
    scale_x*: int32
    scale_y*: int32
    skew_x*: int32
    skew_y*: int32
    pivot*: lv_point_t
    recolor*: lv_color_t
    recolor_opa*: lv_opa_t
    opa*: lv_opa_t
    blend_mode* {.bitsize: 4'i64.}: lv_blend_mode_t
    antialias* {.bitsize: 1'i64.}: uint16
    tile* {.bitsize: 1'i64.}: uint16
    sup*: ptr lv_draw_image_sup_t
    image_area*: lv_area_t
    clip_radius*: int32
    bitmap_mask_src*: ptr lv_image_dsc_t
  lv_draw_image_dsc_t* = struct_lv_draw_image_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_image.h:62:3
  lv_draw_image_core_cb* = proc (a0: ptr lv_draw_unit_t;
                                 a1: ptr lv_draw_image_dsc_t;
                                 a2: ptr lv_image_decoder_dsc_t;
                                 a3: ptr lv_draw_image_sup_t; a4: ptr lv_area_t;
                                 a5: ptr lv_area_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_image.h:73:16
  struct_lv_draw_line_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_line.h:28:9
    p1*: lv_point_precise_t
    p2*: lv_point_precise_t
    color*: lv_color_t
    width*: int32
    dash_width*: int32
    dash_gap*: int32
    opa*: lv_opa_t
    blend_mode* {.bitsize: 2'i64.}: lv_blend_mode_t
    round_start* {.bitsize: 1'i64.}: uint8
    round_end* {.bitsize: 1'i64.}: uint8
    raw_end* {.bitsize: 1'i64.}: uint8
  lv_draw_line_dsc_t* = struct_lv_draw_line_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_line.h:42:3
  struct_lv_draw_arc_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_arc.h:29:9
    color*: lv_color_t
    width*: int32
    start_angle*: lv_value_precise_t
    end_angle*: lv_value_precise_t
    center*: lv_point_t
    radius*: uint16
    img_src*: pointer
    opa*: lv_opa_t
    rounded* {.bitsize: 1'i64.}: uint8
  lv_draw_arc_dsc_t* = struct_lv_draw_arc_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_arc.h:41:3
  lv_layer_type_t* = enum_lv_layer_type_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_draw.h:35:3
  lv_obj_class_editable_t* = enum_lv_obj_class_editable_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:32:3
  lv_obj_class_group_def_t* = enum_lv_obj_class_group_def_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:38:3
  lv_obj_class_theme_inheritable_t* = enum_lv_obj_class_theme_inheritable_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:43:3
  lv_obj_class_event_cb_t* = proc (a0: ptr lv_obj_class_t; a1: ptr lv_event_t): void {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:45:16
  lv_key_t* = enum_lv_key_t  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/../core/lv_group.h:38:3
  lv_group_focus_cb_t* = proc (a0: ptr lv_group_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/../core/lv_group.h:44:16
  lv_group_edge_cb_t* = proc (a0: ptr lv_group_t; a1: bool): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/../core/lv_group.h:45:16
  lv_group_refocus_policy_t* = enum_lv_group_refocus_policy_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/../core/lv_group.h:50:3
  lv_indev_type_t* = enum_lv_indev_type_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:36:3
  lv_indev_state_t* = enum_lv_indev_state_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:42:3
  lv_indev_mode_t* = enum_lv_indev_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:48:3
  struct_lv_indev_data_t* {.pure, inheritable, bycopy.} = object
    point*: lv_point_t       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:51:9
    key*: uint32
    btn_id*: uint32
    enc_diff*: int16
    state*: lv_indev_state_t
    continue_reading*: bool
  lv_indev_data_t* = struct_lv_indev_data_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:59:3
  lv_indev_read_cb_t* = proc (a0: ptr lv_indev_t; a1: ptr lv_indev_data_t): void {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:61:16
  lv_cover_res_t* = enum_lv_cover_res_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_event.h:33:3
  lv_obj_flag_t* = enum_lv_obj_flag_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj.h:128:3
  struct_lv_font_fmt_txt_glyph_dsc_t* {.pure, inheritable, bycopy.} = object
    bitmap_index*: uint32    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:28:9
    adv_w*: uint32
    box_w*: uint16
    box_h*: uint16
    ofs_x*: int16
    ofs_y*: int16
  lv_font_fmt_txt_glyph_dsc_t* = struct_lv_font_fmt_txt_glyph_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:44:3
  lv_font_fmt_txt_cmap_type_t* = enum_lv_font_fmt_txt_cmap_type_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:52:3
  struct_lv_font_fmt_txt_cmap_t* {.pure, inheritable, bycopy.} = object
    range_start*: uint32     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:59:9
    range_length*: uint16
    glyph_id_start*: uint16
    unicode_list*: ptr uint16
    glyph_id_ofs_list*: pointer
    list_length*: uint16
    type_field*: lv_font_fmt_txt_cmap_type_t
  lv_font_fmt_txt_cmap_t* = struct_lv_font_fmt_txt_cmap_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:109:3
  struct_lv_font_fmt_txt_kern_pair_t* {.pure, inheritable, bycopy.} = object
    glyph_ids*: pointer      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:112:9
    values*: ptr int8
    pair_cnt* {.bitsize: 30'i64.}: uint32
    glyph_ids_size* {.bitsize: 2'i64.}: uint32
  lv_font_fmt_txt_kern_pair_t* = struct_lv_font_fmt_txt_kern_pair_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:124:3
  struct_lv_font_fmt_txt_kern_classes_t* {.pure, inheritable, bycopy.} = object
    class_pair_values*: ptr int8 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:127:9
    left_class_mapping*: ptr uint8
    right_class_mapping*: ptr uint8
    left_class_cnt*: uint8
    right_class_cnt*: uint8
  lv_font_fmt_txt_kern_classes_t* = struct_lv_font_fmt_txt_kern_classes_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:141:3
  lv_font_fmt_txt_bitmap_format_t* = enum_lv_font_fmt_txt_bitmap_format_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:148:3
  struct_lv_font_fmt_txt_dsc_t* {.pure, inheritable, bycopy.} = object
    glyph_bitmap*: ptr uint8 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:151:9
    glyph_dsc*: ptr lv_font_fmt_txt_glyph_dsc_t
    cmaps*: ptr lv_font_fmt_txt_cmap_t
    kern_dsc*: pointer
    kern_scale*: uint16
    cmap_num* {.bitsize: 9'i64.}: uint16
    bpp* {.bitsize: 4'i64.}: uint16
    kern_classes* {.bitsize: 1'i64.}: uint16
    bitmap_format* {.bitsize: 2'i64.}: uint16
  lv_font_fmt_txt_dsc_t* = struct_lv_font_fmt_txt_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:186:3
  lv_image_align_t* = enum_lv_image_align_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/animimage/../image/lv_image.h:56:3
  lv_animimg_part_t* = enum_lv_animimg_part_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/animimage/lv_animimage.h:39:3
  lv_arc_mode_t* = enum_lv_arc_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/arc/lv_arc.h:33:3
  lv_label_long_mode_t* = enum_lv_label_long_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:54:3
  lv_bar_mode_t* = enum_lv_bar_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/lv_bar.h:35:3
  lv_bar_orientation_t* = enum_lv_bar_orientation_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/lv_bar.h:41:3
  lv_buttonmatrix_ctrl_t* = enum_lv_buttonmatrix_ctrl_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/buttonmatrix/lv_buttonmatrix.h:47:3
  lv_buttonmatrix_button_draw_cb_t* = proc (a0: ptr lv_obj_t; a1: uint32;
      a2: ptr lv_area_t; a3: ptr lv_area_t): bool {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/buttonmatrix/lv_buttonmatrix.h:49:16
  struct_lv_calendar_date_t* {.pure, inheritable, bycopy.} = object
    year*: uint16            ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/calendar/lv_calendar.h:31:9
    month*: int8
    day*: int8
  lv_calendar_date_t* = struct_lv_calendar_date_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/calendar/lv_calendar.h:35:3
  lv_chart_type_t* = enum_lv_chart_type_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:41:3
  lv_chart_update_mode_t* = enum_lv_chart_update_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:49:3
  lv_chart_axis_t* = enum_lv_chart_axis_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:60:3
  lv_imagebutton_state_t* = enum_lv_imagebutton_state_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/imagebutton/lv_imagebutton.h:31:3
  lv_keyboard_mode_t* = enum_lv_keyboard_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/keyboard/lv_keyboard.h:51:3
  lv_menu_mode_header_t* = enum_lv_menu_mode_header_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:35:3
  lv_menu_mode_root_back_button_t* = enum_lv_menu_mode_root_back_button_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:40:3
  lv_roller_mode_t* = enum_lv_roller_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/roller/lv_roller.h:39:3
  lv_scale_mode_t* = enum_lv_scale_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:55:3
  lv_slider_mode_t* = enum_lv_slider_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/slider/lv_slider.h:36:3
  lv_span_overflow_t* = enum_lv_span_overflow_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/span/lv_span.h:35:3
  lv_span_mode_t* = enum_lv_span_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/span/lv_span.h:42:3
  lv_table_cell_ctrl_t* = enum_lv_table_cell_ctrl_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:43:3
  lv_subject_type_t* = enum_lv_subject_type_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:39:3
  union_lv_subject_value_t* {.union, bycopy.} = object
    num*: int32              ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:44:9
    pointer_field*: pointer
    color*: lv_color_t
  lv_subject_value_t* = union_lv_subject_value_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:48:3
  struct_lv_subject_t* {.pure, inheritable, bycopy.} = object
    subs_ll*: lv_ll_t        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:53:9
    type_field* {.bitsize: 4'i64.}: uint32
    size* {.bitsize: 28'i64.}: uint32
    value*: lv_subject_value_t
    prev_value*: lv_subject_value_t
    notify_restart_query* {.bitsize: 1'i64.}: uint32
    user_data*: pointer
  lv_subject_t* = struct_lv_subject_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:61:3
  lv_observer_cb_t* = proc (a0: ptr lv_observer_t; a1: ptr lv_subject_t): void {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:68:16
  lv_monkey_t* = struct_lv_monkey_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/monkey/lv_monkey.h:28:28
  lv_gridnav_ctrl_t* = enum_lv_gridnav_ctrl_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/gridnav/lv_gridnav.h:55:3
  lv_fragment_manager_t* = struct_lv_fragment_manager_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:28:38
  lv_imgfont_get_path_cb_t* = proc (a0: ptr lv_font_t; a1: uint32; a2: uint32;
                                    a3: ptr int32; a4: pointer): pointer {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/imgfont/lv_imgfont.h:30:24
  lv_ime_pinyin_mode_t* = enum_lv_ime_pinyin_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:33:3
  struct_lv_pinyin_dict_t* {.pure, inheritable, bycopy.} = object
    py*: cstring             ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:36:9
    py_mb*: cstring
  lv_pinyin_dict_t* = struct_lv_pinyin_dict_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:39:3
  struct_ime_pinyin_k9_py_str_t* {.pure, inheritable, bycopy.} = object
    py_str*: array[7'i64, cschar] ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:42:9
  ime_pinyin_k9_py_str_t* = struct_ime_pinyin_k9_py_str_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:44:3
  lv_file_explorer_sort_t* = enum_lv_file_explorer_sort_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/file_explorer/lv_file_explorer.h:32:3
  lv_file_explorer_dir_t* = enum_lv_file_explorer_dir_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/file_explorer/lv_file_explorer.h:42:3
  struct_gd_Palette* {.pure, inheritable, bycopy.} = object
    size*: cint              ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:13:16
    colors*: array[768'i64, uint8]
  gd_Palette* = struct_gd_Palette ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:16:3
  struct_gd_GCE* {.pure, inheritable, bycopy.} = object
    delay*: uint16           ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:18:16
    tindex*: uint8
    disposal*: uint8
    input*: cint
    transparency*: cint
  gd_GCE* = struct_gd_GCE    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:24:3
  struct_gd_GIF* {.pure, inheritable, bycopy.} = object
    fd*: lv_fs_file_t        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:28:16
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
    plain_text*: proc (a0: ptr struct_gd_GIF; a1: uint16; a2: uint16;
                       a3: uint16; a4: uint16; a5: uint8; a6: uint8; a7: uint8;
                       a8: uint8): void {.cdecl.}
    comment*: proc (a0: ptr struct_gd_GIF): void {.cdecl.}
    application*: proc (a0: ptr struct_gd_GIF; a1: array[8'i64, cschar];
                        a2: array[3'i64, cschar]): void {.cdecl.}
    fx*: uint16
    fy*: uint16
    fw*: uint16
    fh*: uint16
    bgindex*: uint8
    canvas*: ptr uint8
    frame*: ptr uint8
  gd_GIF* = struct_gd_GIF    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:53:3
  lv_vector_fill_t* = enum_lv_vector_fill_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:32:3
  lv_vector_stroke_cap_t* = enum_lv_vector_stroke_cap_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:38:3
  lv_vector_stroke_join_t* = enum_lv_vector_stroke_join_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:44:3
  lv_vector_path_quality_t* = enum_lv_vector_path_quality_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:50:3
  lv_vector_blend_t* = enum_lv_vector_blend_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:62:3
  lv_vector_path_op_t* = enum_lv_vector_path_op_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:70:3
  lv_vector_draw_style_t* = enum_lv_vector_draw_style_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:76:3
  lv_vector_gradient_spread_t* = enum_lv_vector_gradient_spread_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:82:3
  lv_vector_gradient_style_t* = enum_lv_vector_gradient_style_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:87:3
  vector_draw_task_cb* = proc (a0: pointer; a1: ptr lv_vector_path_t;
                               a2: ptr lv_vector_draw_dsc_t): void {.cdecl.} ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:481:16
  struct_lv_draw_triangle_dsc_t* {.pure, inheritable, bycopy.} = object
    base*: lv_draw_dsc_base_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/../lv_draw_triangle.h:25:9
    bg_opa*: lv_opa_t
    bg_color*: lv_color_t
    bg_grad*: lv_grad_dsc_t
    p*: array[3'i64, lv_point_precise_t]
  lv_draw_triangle_dsc_t* = struct_lv_draw_triangle_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/../lv_draw_triangle.h:33:3
  lv_draw_sw_mask_res_t* = enum_lv_draw_sw_mask_res_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/blend/../lv_draw_sw_mask.h:40:3
  lv_draw_sw_mask_type_t* = enum_lv_draw_sw_mask_type_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/blend/../lv_draw_sw_mask.h:50:3
  lv_draw_sw_mask_line_side_t* = enum_lv_draw_sw_mask_line_side_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/blend/../lv_draw_sw_mask.h:57:3
  lv_draw_sw_mask_xcb_t* = proc (a0: ptr lv_opa_t; a1: int32; a2: int32;
                                 a3: int32; a4: pointer): lv_draw_sw_mask_res_t {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/blend/../lv_draw_sw_mask.h:63:33
  lv_theme_apply_cb_t* = proc (a0: ptr lv_theme_t; a1: ptr lv_obj_t): void {.
      cdecl.}                ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/themes/lv_theme.h:26:16
  lv_coord_t* = int32        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:49:37
  lv_res_t* = lv_result_t    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:50:37
  lv_img_dsc_t* = lv_image_dsc_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:51:37
  lv_disp_t* = lv_display_t  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:52:37
  lv_disp_rotation_t* = lv_display_rotation_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:53:37
  lv_disp_render_t* = lv_display_render_mode_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:54:37
  lv_anim_ready_cb_t* = lv_anim_completed_cb_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:55:37
  lv_scr_load_anim_t* = lv_screen_load_anim_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:56:37
  lv_btnmatrix_ctrl_t* = lv_buttonmatrix_ctrl_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:59:37
when 9 is static:
  const
    LVGL_VERSION_MAJOR* = 9  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:9:9
else:
  let LVGL_VERSION_MAJOR* = 9 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:9:9
when 2 is static:
  const
    LVGL_VERSION_MINOR* = 2  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:10:9
else:
  let LVGL_VERSION_MINOR* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:10:9
when 2 is static:
  const
    LVGL_VERSION_PATCH* = 2  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:11:9
else:
  let LVGL_VERSION_PATCH* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:11:9
when "" is static:
  const
    LVGL_VERSION_INFO* = ""  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:12:9
else:
  let LVGL_VERSION_INFO* = "" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:12:9
when 0 is static:
  const
    LV_OS_NONE* = 0          ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:12:9
else:
  let LV_OS_NONE* = 0        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:12:9
when 1 is static:
  const
    LV_OS_PTHREAD* = 1       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:13:9
else:
  let LV_OS_PTHREAD* = 1     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:13:9
when 2 is static:
  const
    LV_OS_FREERTOS* = 2      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:14:9
else:
  let LV_OS_FREERTOS* = 2    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:14:9
when 3 is static:
  const
    LV_OS_CMSIS_RTOS2* = 3   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:15:9
else:
  let LV_OS_CMSIS_RTOS2* = 3 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:15:9
when 4 is static:
  const
    LV_OS_RTTHREAD* = 4      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:16:9
else:
  let LV_OS_RTTHREAD* = 4    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:16:9
when 5 is static:
  const
    LV_OS_WINDOWS* = 5       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:17:9
else:
  let LV_OS_WINDOWS* = 5     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:17:9
when 6 is static:
  const
    LV_OS_MQX* = 6           ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:18:9
else:
  let LV_OS_MQX* = 6         ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:18:9
when 255 is static:
  const
    LV_OS_CUSTOM* = 255      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:19:9
else:
  let LV_OS_CUSTOM* = 255    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:19:9
when 0 is static:
  const
    LV_STDLIB_BUILTIN* = 0   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:21:9
else:
  let LV_STDLIB_BUILTIN* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:21:9
when 1 is static:
  const
    LV_STDLIB_CLIB* = 1      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:22:9
else:
  let LV_STDLIB_CLIB* = 1    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:22:9
when 2 is static:
  const
    LV_STDLIB_MICROPYTHON* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:23:9
else:
  let LV_STDLIB_MICROPYTHON* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:23:9
when 3 is static:
  const
    LV_STDLIB_RTTHREAD* = 3  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:24:9
else:
  let LV_STDLIB_RTTHREAD* = 3 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:24:9
when 255 is static:
  const
    LV_STDLIB_CUSTOM* = 255  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:25:9
else:
  let LV_STDLIB_CUSTOM* = 255 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:25:9
when 0 is static:
  const
    LV_DRAW_SW_ASM_NONE* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:27:9
else:
  let LV_DRAW_SW_ASM_NONE* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:27:9
when 1 is static:
  const
    LV_DRAW_SW_ASM_NEON* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:28:9
else:
  let LV_DRAW_SW_ASM_NEON* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:28:9
when 2 is static:
  const
    LV_DRAW_SW_ASM_HELIUM* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:29:9
else:
  let LV_DRAW_SW_ASM_HELIUM* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:29:9
when 255 is static:
  const
    LV_DRAW_SW_ASM_CUSTOM* = 255 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:30:9
else:
  let LV_DRAW_SW_ASM_CUSTOM* = 255 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:30:9
when 0 is static:
  const
    LV_DRAW_TRANSFORM_USE_MATRIX* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:322:17
else:
  let LV_DRAW_TRANSFORM_USE_MATRIX* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:322:17
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_RGB565* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:379:18
else:
  let LV_DRAW_SW_SUPPORT_RGB565* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:379:18
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_RGB565A8* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:390:18
else:
  let LV_DRAW_SW_SUPPORT_RGB565A8* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:390:18
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_RGB888* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:401:18
else:
  let LV_DRAW_SW_SUPPORT_RGB888* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:401:18
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_XRGB8888* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:412:18
else:
  let LV_DRAW_SW_SUPPORT_XRGB8888* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:412:18
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_ARGB8888* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:423:18
else:
  let LV_DRAW_SW_SUPPORT_ARGB8888* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:423:18
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_L8* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:434:18
else:
  let LV_DRAW_SW_SUPPORT_L8* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:434:18
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_AL88* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:445:18
else:
  let LV_DRAW_SW_SUPPORT_AL88* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:445:18
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_A8* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:456:18
else:
  let LV_DRAW_SW_SUPPORT_A8* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:456:18
when 1 is static:
  const
    LV_DRAW_SW_SUPPORT_I1* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:467:18
else:
  let LV_DRAW_SW_SUPPORT_I1* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:467:18
when 0 is static:
  const
    LV_USE_DRAW_ARM2D_SYNC* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:491:21
else:
  let LV_USE_DRAW_ARM2D_SYNC* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:491:21
when 0 is static:
  const
    LV_USE_NATIVE_HELIUM_ASM* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:500:21
else:
  let LV_USE_NATIVE_HELIUM_ASM* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:500:21
when 0 is static:
  const
    LV_USE_DRAW_SW_COMPLEX_GRADIENTS* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:566:21
else:
  let LV_USE_DRAW_SW_COMPLEX_GRADIENTS* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:566:21
when 0 is static:
  const
    LV_USE_PXP* = 0          ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:635:17
else:
  let LV_USE_PXP* = 0        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:635:17
when 0 is static:
  const
    LV_IMAGE_HEADER_CACHE_DEF_CNT* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1095:17
else:
  let LV_IMAGE_HEADER_CACHE_DEF_CNT* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1095:17
when 0 is static:
  const
    LV_USE_OBJ_ID* = 0       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/../../lv_conf.h:286:9
else:
  let LV_USE_OBJ_ID* = 0     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/../../lv_conf.h:286:9
when 1 is static:
  const
    LV_USE_OBJ_PROPERTY_NAME* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1182:17
else:
  let LV_USE_OBJ_PROPERTY_NAME* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1182:17
when 0 is static:
  const
    LV_USE_MATRIX* = 0       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1382:17
else:
  let LV_USE_MATRIX* = 0     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1382:17
when 0 is static:
  const
    LV_USE_PRIVATE_API* = 0  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1391:17
else:
  let LV_USE_PRIVATE_API* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1391:17
when 0 is static:
  const
    LV_FONT_SIMSUN_14_CJK* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1572:17
else:
  let LV_FONT_SIMSUN_14_CJK* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1572:17
when 0 is static:
  const
    LV_USE_CALENDAR_CHINESE* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1891:21
else:
  let LV_USE_CALENDAR_CHINESE* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:1891:21
when 0 is static:
  const
    LV_USE_LOTTIE* = 0       ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2063:17
else:
  let LV_USE_LOTTIE* = 0     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2063:17
when 0 is static:
  const
    LV_USE_FS_LITTLEFS* = 0  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2519:17
else:
  let LV_USE_FS_LITTLEFS* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2519:17
when 0 is static:
  const
    LV_USE_FS_ARDUINO_ESP_LITTLEFS* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2537:17
else:
  let LV_USE_FS_ARDUINO_ESP_LITTLEFS* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2537:17
when 0 is static:
  const
    LV_USE_FS_ARDUINO_SD* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2555:17
else:
  let LV_USE_FS_ARDUINO_SD* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2555:17
when 256 is static:
  const
    LV_TINY_TTF_CACHE_GLYPH_CNT* = 256 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2721:21
else:
  let LV_TINY_TTF_CACHE_GLYPH_CNT* = 256 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:2721:21
proc lv_timer_get_idle*(): uint32 {.cdecl, importc: "lv_timer_get_idle".}
when 1 is static:
  const
    LV_SDL_ACCELERATED* = 1  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3144:21
else:
  let LV_SDL_ACCELERATED* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3144:21
when 0 is static:
  const
    LV_SDL_MOUSEWHEEL_MODE_ENCODER* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_window.h:27:9
else:
  let LV_SDL_MOUSEWHEEL_MODE_ENCODER* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_window.h:27:9
when 0 is static:
  const
    LV_USE_WAYLAND* = 0      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3238:17
else:
  let LV_USE_WAYLAND* = 0    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3238:17
when 0 is static:
  const
    LV_USE_LIBINPUT* = 0     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3392:17
else:
  let LV_USE_LIBINPUT* = 0   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3392:17
when 0 is static:
  const
    LV_USE_RENESAS_GLCDC* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3468:17
else:
  let LV_USE_RENESAS_GLCDC* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3468:17
when 0 is static:
  const
    LV_USE_OPENGLES* = 0     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3486:17
else:
  let LV_USE_OPENGLES* = 0   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3486:17
when 0 is static:
  const
    LV_USE_QNX* = 0          ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3508:17
else:
  let LV_USE_QNX* = 0        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_conf_internal.h:3508:17
when "d" is static:
  const
    PRId32* = "d"            ## Generated based on /usr/include/inttypes.h:56:10
else:
  let PRId32* = "d"          ## Generated based on /usr/include/inttypes.h:56:10
when "u" is static:
  const
    PRIu32* = "u"            ## Generated based on /usr/include/inttypes.h:104:10
else:
  let PRIu32* = "u"          ## Generated based on /usr/include/inttypes.h:104:10
when "x" is static:
  const
    PRIx32* = "x"            ## Generated based on /usr/include/inttypes.h:120:10
else:
  let PRIx32* = "x"          ## Generated based on /usr/include/inttypes.h:120:10
when "X" is static:
  const
    PRIX32_const* = "X"      ## Generated based on /usr/include/inttypes.h:136:10
else:
  let PRIX32_const* = "X"    ## Generated based on /usr/include/inttypes.h:136:10
when 0 is static:
  const
    LV_LOG_LEVEL_TRACE* = 0  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:26:9
else:
  let LV_LOG_LEVEL_TRACE* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:26:9
when 1 is static:
  const
    LV_LOG_LEVEL_INFO* = 1   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:27:9
else:
  let LV_LOG_LEVEL_INFO* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:27:9
when 2 is static:
  const
    LV_LOG_LEVEL_WARN* = 2   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:28:9
else:
  let LV_LOG_LEVEL_WARN* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:28:9
when 3 is static:
  const
    LV_LOG_LEVEL_ERROR* = 3  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:29:9
else:
  let LV_LOG_LEVEL_ERROR* = 3 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:29:9
when 4 is static:
  const
    LV_LOG_LEVEL_USER* = 4   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:30:9
else:
  let LV_LOG_LEVEL_USER* = 4 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:30:9
when 5 is static:
  const
    LV_LOG_LEVEL_NONE* = 5   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:31:9
else:
  let LV_LOG_LEVEL_NONE* = 5 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:31:9
when 6 is static:
  const
    LV_LOG_LEVEL_NUM* = 6    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:32:9
else:
  let LV_LOG_LEVEL_NUM* = 6  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:32:9
when 4294967295 is static:
  const
    LV_NO_TIMER_READY* = 4294967295'i64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:27:9
else:
  let LV_NO_TIMER_READY* = 4294967295'i64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:27:9
when 32768 is static:
  const
    LV_TRIGO_SIN_MAX* = 32768 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:22:9
else:
  let LV_TRIGO_SIN_MAX* = 32768 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:22:9
when 15 is static:
  const
    LV_TRIGO_SHIFT* = 15     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:23:9
else:
  let LV_TRIGO_SHIFT* = 15   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:23:9
when 10 is static:
  const
    LV_BEZIER_VAL_SHIFT* = 10 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:25:9
else:
  let LV_BEZIER_VAL_SHIFT* = 10 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:25:9
when 4 is static:
  const
    LV_ARRAY_DEFAULT_CAPACITY* = 4 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_array.h:23:9
else:
  let LV_ARRAY_DEFAULT_CAPACITY* = 4 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_array.h:23:9
when 2 is static:
  const
    LV_ARRAY_DEFAULT_SHRINK_RATIO* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_array.h:27:9
else:
  let LV_ARRAY_DEFAULT_SHRINK_RATIO* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_array.h:27:9
when 4294967295 is static:
  const
    LV_ANIM_REPEAT_INFINITE* = 4294967295'i64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:26:9
else:
  let LV_ANIM_REPEAT_INFINITE* = 4294967295'i64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:26:9
when 4294967295 is static:
  const
    LV_ANIM_PLAYTIME_INFINITE* = 4294967295'i64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:27:9
else:
  let LV_ANIM_PLAYTIME_INFINITE* = 4294967295'i64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:27:9
when 65535 is static:
  const
    LV_ANIM_TIMELINE_PROGRESS_MAX* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim_timeline.h:22:9
else:
  let LV_ANIM_TIMELINE_PROGRESS_MAX* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim_timeline.h:22:9
when cast[cuint](29'i64) is static:
  const
    LV_COORD_TYPE_SHIFT* = cast[cuint](29'i64) ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:206:9
else:
  let LV_COORD_TYPE_SHIFT* = cast[cuint](29'i64) ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_area.h:206:9
when 3 is static:
  const
    LV_COLOR_NATIVE_WITH_ALPHA_SIZE* = 3 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:29:9
else:
  let LV_COLOR_NATIVE_WITH_ALPHA_SIZE* = 3 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:29:9
when 2 is static:
  const
    LV_OPA_MIN* = 2          ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:56:9
else:
  let LV_OPA_MIN* = 2        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:56:9
when 253 is static:
  const
    LV_OPA_MAX* = 253        ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:57:9
else:
  let LV_OPA_MAX* = 253      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/../misc/lv_color.h:57:9
when 25 is static:
  const
    LV_IMAGE_HEADER_MAGIC* = 25 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:25:9
else:
  let LV_IMAGE_HEADER_MAGIC* = 25 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_image_dsc.h:25:9
when 0 is static:
  const
    LV_STRIDE_AUTO* = 0      ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_draw_buf.h:27:9
else:
  let LV_STRIDE_AUTO* = 0    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../draw/lv_draw_buf.h:27:9
when "\\xE2\\x80\\xA2" is static:
  const
    LV_SYMBOL_BULLET* = "\\xE2\\x80\\xA2" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:19:9
else:
  let LV_SYMBOL_BULLET* = "\\xE2\\x80\\xA2" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:19:9
when "\\xEF\\x80\\x81" is static:
  const
    LV_SYMBOL_AUDIO* = "\\xEF\\x80\\x81" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:40:9
else:
  let LV_SYMBOL_AUDIO* = "\\xEF\\x80\\x81" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:40:9
when "\\xEF\\x80\\x88" is static:
  const
    LV_SYMBOL_VIDEO* = "\\xEF\\x80\\x88" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:44:9
else:
  let LV_SYMBOL_VIDEO* = "\\xEF\\x80\\x88" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:44:9
when "\\xEF\\x80\\x8B" is static:
  const
    LV_SYMBOL_LIST* = "\\xEF\\x80\\x8B" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:48:9
else:
  let LV_SYMBOL_LIST* = "\\xEF\\x80\\x8B" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:48:9
when "\\xEF\\x80\\x8C" is static:
  const
    LV_SYMBOL_OK* = "\\xEF\\x80\\x8C" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:52:9
else:
  let LV_SYMBOL_OK* = "\\xEF\\x80\\x8C" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:52:9
when "\\xEF\\x80\\x8D" is static:
  const
    LV_SYMBOL_CLOSE* = "\\xEF\\x80\\x8D" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:56:9
else:
  let LV_SYMBOL_CLOSE* = "\\xEF\\x80\\x8D" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:56:9
when "\\xEF\\x80\\x91" is static:
  const
    LV_SYMBOL_POWER* = "\\xEF\\x80\\x91" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:60:9
else:
  let LV_SYMBOL_POWER* = "\\xEF\\x80\\x91" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:60:9
when "\\xEF\\x80\\x93" is static:
  const
    LV_SYMBOL_SETTINGS* = "\\xEF\\x80\\x93" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:64:9
else:
  let LV_SYMBOL_SETTINGS* = "\\xEF\\x80\\x93" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:64:9
when "\\xEF\\x80\\x95" is static:
  const
    LV_SYMBOL_HOME* = "\\xEF\\x80\\x95" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:68:9
else:
  let LV_SYMBOL_HOME* = "\\xEF\\x80\\x95" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:68:9
when "\\xEF\\x80\\x99" is static:
  const
    LV_SYMBOL_DOWNLOAD* = "\\xEF\\x80\\x99" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:72:9
else:
  let LV_SYMBOL_DOWNLOAD* = "\\xEF\\x80\\x99" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:72:9
when "\\xEF\\x80\\x9C" is static:
  const
    LV_SYMBOL_DRIVE* = "\\xEF\\x80\\x9C" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:76:9
else:
  let LV_SYMBOL_DRIVE* = "\\xEF\\x80\\x9C" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:76:9
when "\\xEF\\x80\\xA1" is static:
  const
    LV_SYMBOL_REFRESH* = "\\xEF\\x80\\xA1" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:80:9
else:
  let LV_SYMBOL_REFRESH* = "\\xEF\\x80\\xA1" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:80:9
when "\\xEF\\x80\\xA6" is static:
  const
    LV_SYMBOL_MUTE* = "\\xEF\\x80\\xA6" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:84:9
else:
  let LV_SYMBOL_MUTE* = "\\xEF\\x80\\xA6" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:84:9
when "\\xEF\\x80\\xA7" is static:
  const
    LV_SYMBOL_VOLUME_MID* = "\\xEF\\x80\\xA7" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:88:9
else:
  let LV_SYMBOL_VOLUME_MID* = "\\xEF\\x80\\xA7" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:88:9
when "\\xEF\\x80\\xA8" is static:
  const
    LV_SYMBOL_VOLUME_MAX* = "\\xEF\\x80\\xA8" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:92:9
else:
  let LV_SYMBOL_VOLUME_MAX* = "\\xEF\\x80\\xA8" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:92:9
when "\\xEF\\x80\\xBE" is static:
  const
    LV_SYMBOL_IMAGE* = "\\xEF\\x80\\xBE" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:96:9
else:
  let LV_SYMBOL_IMAGE* = "\\xEF\\x80\\xBE" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:96:9
when "\\xEF\\x81\\x83" is static:
  const
    LV_SYMBOL_TINT* = "\\xEF\\x81\\x83" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:100:9
else:
  let LV_SYMBOL_TINT* = "\\xEF\\x81\\x83" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:100:9
when "\\xEF\\x81\\x88" is static:
  const
    LV_SYMBOL_PREV* = "\\xEF\\x81\\x88" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:104:9
else:
  let LV_SYMBOL_PREV* = "\\xEF\\x81\\x88" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:104:9
when "\\xEF\\x81\\x8B" is static:
  const
    LV_SYMBOL_PLAY* = "\\xEF\\x81\\x8B" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:108:9
else:
  let LV_SYMBOL_PLAY* = "\\xEF\\x81\\x8B" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:108:9
when "\\xEF\\x81\\x8C" is static:
  const
    LV_SYMBOL_PAUSE* = "\\xEF\\x81\\x8C" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:112:9
else:
  let LV_SYMBOL_PAUSE* = "\\xEF\\x81\\x8C" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:112:9
when "\\xEF\\x81\\x8D" is static:
  const
    LV_SYMBOL_STOP* = "\\xEF\\x81\\x8D" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:116:9
else:
  let LV_SYMBOL_STOP* = "\\xEF\\x81\\x8D" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:116:9
when "\\xEF\\x81\\x91" is static:
  const
    LV_SYMBOL_NEXT* = "\\xEF\\x81\\x91" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:120:9
else:
  let LV_SYMBOL_NEXT* = "\\xEF\\x81\\x91" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:120:9
when "\\xEF\\x81\\x92" is static:
  const
    LV_SYMBOL_EJECT* = "\\xEF\\x81\\x92" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:124:9
else:
  let LV_SYMBOL_EJECT* = "\\xEF\\x81\\x92" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:124:9
when "\\xEF\\x81\\x93" is static:
  const
    LV_SYMBOL_LEFT* = "\\xEF\\x81\\x93" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:128:9
else:
  let LV_SYMBOL_LEFT* = "\\xEF\\x81\\x93" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:128:9
when "\\xEF\\x81\\x94" is static:
  const
    LV_SYMBOL_RIGHT* = "\\xEF\\x81\\x94" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:132:9
else:
  let LV_SYMBOL_RIGHT* = "\\xEF\\x81\\x94" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:132:9
when "\\xEF\\x81\\xA7" is static:
  const
    LV_SYMBOL_PLUS* = "\\xEF\\x81\\xA7" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:136:9
else:
  let LV_SYMBOL_PLUS* = "\\xEF\\x81\\xA7" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:136:9
when "\\xEF\\x81\\xA8" is static:
  const
    LV_SYMBOL_MINUS* = "\\xEF\\x81\\xA8" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:140:9
else:
  let LV_SYMBOL_MINUS* = "\\xEF\\x81\\xA8" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:140:9
when "\\xEF\\x81\\xAE" is static:
  const
    LV_SYMBOL_EYE_OPEN* = "\\xEF\\x81\\xAE" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:144:9
else:
  let LV_SYMBOL_EYE_OPEN* = "\\xEF\\x81\\xAE" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:144:9
when "\\xEF\\x81\\xB0" is static:
  const
    LV_SYMBOL_EYE_CLOSE* = "\\xEF\\x81\\xB0" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:148:9
else:
  let LV_SYMBOL_EYE_CLOSE* = "\\xEF\\x81\\xB0" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:148:9
when "\\xEF\\x81\\xB1" is static:
  const
    LV_SYMBOL_WARNING* = "\\xEF\\x81\\xB1" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:152:9
else:
  let LV_SYMBOL_WARNING* = "\\xEF\\x81\\xB1" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:152:9
when "\\xEF\\x81\\xB4" is static:
  const
    LV_SYMBOL_SHUFFLE* = "\\xEF\\x81\\xB4" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:156:9
else:
  let LV_SYMBOL_SHUFFLE* = "\\xEF\\x81\\xB4" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:156:9
when "\\xEF\\x81\\xB7" is static:
  const
    LV_SYMBOL_UP* = "\\xEF\\x81\\xB7" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:160:9
else:
  let LV_SYMBOL_UP* = "\\xEF\\x81\\xB7" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:160:9
when "\\xEF\\x81\\xB8" is static:
  const
    LV_SYMBOL_DOWN* = "\\xEF\\x81\\xB8" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:164:9
else:
  let LV_SYMBOL_DOWN* = "\\xEF\\x81\\xB8" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:164:9
when "\\xEF\\x81\\xB9" is static:
  const
    LV_SYMBOL_LOOP* = "\\xEF\\x81\\xB9" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:168:9
else:
  let LV_SYMBOL_LOOP* = "\\xEF\\x81\\xB9" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:168:9
when "\\xEF\\x81\\xBB" is static:
  const
    LV_SYMBOL_DIRECTORY* = "\\xEF\\x81\\xBB" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:172:9
else:
  let LV_SYMBOL_DIRECTORY* = "\\xEF\\x81\\xBB" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:172:9
when "\\xEF\\x82\\x93" is static:
  const
    LV_SYMBOL_UPLOAD* = "\\xEF\\x82\\x93" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:176:9
else:
  let LV_SYMBOL_UPLOAD* = "\\xEF\\x82\\x93" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:176:9
when "\\xEF\\x82\\x95" is static:
  const
    LV_SYMBOL_CALL* = "\\xEF\\x82\\x95" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:180:9
else:
  let LV_SYMBOL_CALL* = "\\xEF\\x82\\x95" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:180:9
when "\\xEF\\x83\\x84" is static:
  const
    LV_SYMBOL_CUT* = "\\xEF\\x83\\x84" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:184:9
else:
  let LV_SYMBOL_CUT* = "\\xEF\\x83\\x84" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:184:9
when "\\xEF\\x83\\x85" is static:
  const
    LV_SYMBOL_COPY* = "\\xEF\\x83\\x85" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:188:9
else:
  let LV_SYMBOL_COPY* = "\\xEF\\x83\\x85" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:188:9
when "\\xEF\\x83\\x87" is static:
  const
    LV_SYMBOL_SAVE* = "\\xEF\\x83\\x87" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:192:9
else:
  let LV_SYMBOL_SAVE* = "\\xEF\\x83\\x87" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:192:9
when "\\xEF\\x83\\x89" is static:
  const
    LV_SYMBOL_BARS* = "\\xEF\\x83\\x89" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:196:9
else:
  let LV_SYMBOL_BARS* = "\\xEF\\x83\\x89" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:196:9
when "\\xEF\\x83\\xA0" is static:
  const
    LV_SYMBOL_ENVELOPE* = "\\xEF\\x83\\xA0" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:200:9
else:
  let LV_SYMBOL_ENVELOPE* = "\\xEF\\x83\\xA0" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:200:9
when "\\xEF\\x83\\xA7" is static:
  const
    LV_SYMBOL_CHARGE* = "\\xEF\\x83\\xA7" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:204:9
else:
  let LV_SYMBOL_CHARGE* = "\\xEF\\x83\\xA7" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:204:9
when "\\xEF\\x83\\xAA" is static:
  const
    LV_SYMBOL_PASTE* = "\\xEF\\x83\\xAA" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:208:9
else:
  let LV_SYMBOL_PASTE* = "\\xEF\\x83\\xAA" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:208:9
when "\\xEF\\x83\\xB3" is static:
  const
    LV_SYMBOL_BELL* = "\\xEF\\x83\\xB3" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:212:9
else:
  let LV_SYMBOL_BELL* = "\\xEF\\x83\\xB3" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:212:9
when "\\xEF\\x84\\x9C" is static:
  const
    LV_SYMBOL_KEYBOARD* = "\\xEF\\x84\\x9C" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:216:9
else:
  let LV_SYMBOL_KEYBOARD* = "\\xEF\\x84\\x9C" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:216:9
when "\\xEF\\x84\\xA4" is static:
  const
    LV_SYMBOL_GPS* = "\\xEF\\x84\\xA4" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:220:9
else:
  let LV_SYMBOL_GPS* = "\\xEF\\x84\\xA4" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:220:9
when "\\xEF\\x85\\x9B" is static:
  const
    LV_SYMBOL_FILE* = "\\xEF\\x85\\x9B" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:224:9
else:
  let LV_SYMBOL_FILE* = "\\xEF\\x85\\x9B" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:224:9
when "\\xEF\\x87\\xAB" is static:
  const
    LV_SYMBOL_WIFI* = "\\xEF\\x87\\xAB" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:228:9
else:
  let LV_SYMBOL_WIFI* = "\\xEF\\x87\\xAB" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:228:9
when "\\xEF\\x89\\x80" is static:
  const
    LV_SYMBOL_BATTERY_FULL* = "\\xEF\\x89\\x80" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:232:9
else:
  let LV_SYMBOL_BATTERY_FULL* = "\\xEF\\x89\\x80" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:232:9
when "\\xEF\\x89\\x81" is static:
  const
    LV_SYMBOL_BATTERY_3* = "\\xEF\\x89\\x81" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:236:9
else:
  let LV_SYMBOL_BATTERY_3* = "\\xEF\\x89\\x81" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:236:9
when "\\xEF\\x89\\x82" is static:
  const
    LV_SYMBOL_BATTERY_2* = "\\xEF\\x89\\x82" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:240:9
else:
  let LV_SYMBOL_BATTERY_2* = "\\xEF\\x89\\x82" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:240:9
when "\\xEF\\x89\\x83" is static:
  const
    LV_SYMBOL_BATTERY_1* = "\\xEF\\x89\\x83" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:244:9
else:
  let LV_SYMBOL_BATTERY_1* = "\\xEF\\x89\\x83" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:244:9
when "\\xEF\\x89\\x84" is static:
  const
    LV_SYMBOL_BATTERY_EMPTY* = "\\xEF\\x89\\x84" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:248:9
else:
  let LV_SYMBOL_BATTERY_EMPTY* = "\\xEF\\x89\\x84" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:248:9
when "\\xEF\\x8a\\x87" is static:
  const
    LV_SYMBOL_USB* = "\\xEF\\x8a\\x87" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:252:9
else:
  let LV_SYMBOL_USB* = "\\xEF\\x8a\\x87" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:252:9
when "\\xEF\\x8a\\x93" is static:
  const
    LV_SYMBOL_BLUETOOTH* = "\\xEF\\x8a\\x93" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:256:9
else:
  let LV_SYMBOL_BLUETOOTH* = "\\xEF\\x8a\\x93" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:256:9
when "\\xEF\\x8B\\xAD" is static:
  const
    LV_SYMBOL_TRASH* = "\\xEF\\x8B\\xAD" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:260:9
else:
  let LV_SYMBOL_TRASH* = "\\xEF\\x8B\\xAD" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:260:9
when "\\xEF\\x8C\\x84" is static:
  const
    LV_SYMBOL_EDIT* = "\\xEF\\x8C\\x84" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:264:9
else:
  let LV_SYMBOL_EDIT* = "\\xEF\\x8C\\x84" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:264:9
when "\\xEF\\x95\\x9A" is static:
  const
    LV_SYMBOL_BACKSPACE* = "\\xEF\\x95\\x9A" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:268:9
else:
  let LV_SYMBOL_BACKSPACE* = "\\xEF\\x95\\x9A" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:268:9
when "\\xEF\\x9F\\x82" is static:
  const
    LV_SYMBOL_SD_CARD* = "\\xEF\\x9F\\x82" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:272:9
else:
  let LV_SYMBOL_SD_CARD* = "\\xEF\\x9F\\x82" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:272:9
when "\\xEF\\xA2\\xA2" is static:
  const
    LV_SYMBOL_NEW_LINE* = "\\xEF\\xA2\\xA2" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:276:9
else:
  let LV_SYMBOL_NEW_LINE* = "\\xEF\\xA2\\xA2" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:276:9
when "\\xEF\\xA3\\xBF" is static:
  const
    LV_SYMBOL_DUMMY* = "\\xEF\\xA3\\xBF" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:281:9
else:
  let LV_SYMBOL_DUMMY* = "\\xEF\\xA3\\xBF" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../font/lv_symbol_def.h:281:9
when 1 is static:
  const
    LV_TXT_ENC_UTF8* = 1     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_text.h:27:9
else:
  let LV_TXT_ENC_UTF8* = 1   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_text.h:27:9
when 2 is static:
  const
    LV_TXT_ENC_ASCII* = 2    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_text.h:28:9
else:
  let LV_TXT_ENC_ASCII* = 2  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_text.h:28:9
when "\\xE2\\x80\\xAD" is static:
  const
    LV_BIDI_LRO* = "\\xE2\\x80\\xAD" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:25:9
else:
  let LV_BIDI_LRO* = "\\xE2\\x80\\xAD" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:25:9
when "\\xE2\\x80\\xAE" is static:
  const
    LV_BIDI_RLO* = "\\xE2\\x80\\xAE" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:26:9
else:
  let LV_BIDI_RLO* = "\\xE2\\x80\\xAE" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:26:9
when LV_COORD_MAX is typedesc:
  type
    LV_GRID_TEMPLATE_LAST* = LV_COORD_MAX ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../layouts/grid/lv_grid.h:34:9
else:
  when LV_COORD_MAX is static:
    const
      LV_GRID_TEMPLATE_LAST* = LV_COORD_MAX ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../layouts/grid/lv_grid.h:34:9
  else:
    let LV_GRID_TEMPLATE_LAST* = LV_COORD_MAX ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/../layouts/grid/lv_grid.h:34:9
when 2864434397 is static:
  const
    LV_STYLE_SENTINEL_VALUE* = 2864434397'i64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:30:9
else:
  let LV_STYLE_SENTINEL_VALUE* = 2864434397'i64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:30:9
when 0 is static:
  const
    LV_STYLE_PROP_FLAG_NONE* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:35:9
else:
  let LV_STYLE_PROP_FLAG_NONE* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:35:9
when 63 is static:
  const
    LV_STYLE_PROP_FLAG_ALL* = 63 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:42:9
else:
  let LV_STYLE_PROP_FLAG_ALL* = 63 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:42:9
when 256 is static:
  const
    LV_SCALE_NONE* = 256     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:47:9
else:
  let LV_SCALE_NONE* = 256   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:47:9
when 64 is static:
  const
    LV_FS_MAX_FN_LENGTH* = 64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:22:9
else:
  let LV_FS_MAX_FN_LENGTH* = 64 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:22:9
when 256 is static:
  const
    LV_FS_MAX_PATH_LENGTH* = 256 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:23:9
else:
  let LV_FS_MAX_PATH_LENGTH* = 256 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/../misc/lv_fs.h:23:9
when cast[cuint](4294967295'i64) is static:
  const
    UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
else:
  let UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
when 0 is static:
  const
    LV_DRAW_UNIT_NONE* = 0   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:34:9
else:
  let LV_DRAW_UNIT_NONE* = 0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:34:9
when -1 is static:
  const
    LV_DRAW_UNIT_IDLE* = -1  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:35:9
else:
  let LV_DRAW_UNIT_IDLE* = -1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:35:9
when 32767 is static:
  const
    LV_RADIUS_CIRCLE* = 32767 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:25:9
else:
  let LV_RADIUS_CIRCLE* = 32767 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_rect.h:25:9
when 65535 is static:
  const
    LV_DRAW_LABEL_NO_TXT_SEL* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_label.h:26:9
else:
  let LV_DRAW_LABEL_NO_TXT_SEL* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/lv_draw_label.h:26:9
when 3 is static:
  const
    LV_LABEL_DOT_NUM* = 3    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:30:9
else:
  let LV_LABEL_DOT_NUM* = 3  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:30:9
when 65535 is static:
  const
    LV_LABEL_POS_LAST* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:31:9
else:
  let LV_LABEL_POS_LAST* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:31:9
when LV_DRAW_LABEL_NO_TXT_SEL is typedesc:
  type
    LV_LABEL_TEXT_SELECTION_OFF* = LV_DRAW_LABEL_NO_TXT_SEL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:32:9
else:
  when LV_DRAW_LABEL_NO_TXT_SEL is static:
    const
      LV_LABEL_TEXT_SELECTION_OFF* = LV_DRAW_LABEL_NO_TXT_SEL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:32:9
  else:
    let LV_LABEL_TEXT_SELECTION_OFF* = LV_DRAW_LABEL_NO_TXT_SEL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:32:9
when "Text" is static:
  const
    LV_LABEL_DEFAULT_TEXT* = "Text" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:34:9
else:
  let LV_LABEL_DEFAULT_TEXT* = "Text" ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:34:9
when 65535 is static:
  const
    LV_BUTTONMATRIX_BUTTON_NONE* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/buttonmatrix/lv_buttonmatrix.h:25:9
else:
  let LV_BUTTONMATRIX_BUTTON_NONE* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/buttonmatrix/lv_buttonmatrix.h:25:9
when 2147483647 is static:
  const
    INT32_MAX* = 2147483647  ## Generated based on /usr/include/stdint.h:112:10
else:
  let INT32_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:112:10
when 65535 is static:
  const
    LV_DROPDOWN_POS_LAST* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/dropdown/lv_dropdown.h:31:9
else:
  let LV_DROPDOWN_POS_LAST* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/dropdown/lv_dropdown.h:31:9
when 80 is static:
  const
    LV_LED_BRIGHT_MIN* = 80  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:25:10
else:
  let LV_LED_BRIGHT_MIN* = 80 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:25:10
when 255 is static:
  const
    LV_LED_BRIGHT_MAX* = 255 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:30:10
else:
  let LV_LED_BRIGHT_MAX* = 255 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:30:10
when cast[cuint](11'i64) is static:
  const
    LV_SCALE_TOTAL_TICK_COUNT_DEFAULT* = cast[cuint](11'i64) ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:29:9
else:
  let LV_SCALE_TOTAL_TICK_COUNT_DEFAULT* = cast[cuint](11'i64) ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:29:9
when cast[cuint](5'i64) is static:
  const
    LV_SCALE_MAJOR_TICK_EVERY_DEFAULT* = cast[cuint](5'i64) ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:33:9
else:
  let LV_SCALE_MAJOR_TICK_EVERY_DEFAULT* = cast[cuint](5'i64) ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:33:9
when cast[cuint](1'i64) is static:
  const
    LV_SCALE_LABEL_ENABLED_DEFAULT* = cast[cuint](1'i64) ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:37:9
else:
  let LV_SCALE_LABEL_ENABLED_DEFAULT* = cast[cuint](1'i64) ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:37:9
when 32767 is static:
  const
    LV_TEXTAREA_CURSOR_LAST* = 32767 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/../textarea/lv_textarea.h:28:9
else:
  let LV_TEXTAREA_CURSOR_LAST* = 32767 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/../textarea/lv_textarea.h:28:9
when 10 is static:
  const
    LV_SPINBOX_MAX_DIGIT_COUNT* = 10 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/lv_spinbox.h:28:9
else:
  let LV_SPINBOX_MAX_DIGIT_COUNT* = 10 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/lv_spinbox.h:28:9
when 2 is static:
  const
    LV_SWITCH_KNOB_EXT_AREA_CORRECTION* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/switch/lv_switch.h:27:9
else:
  let LV_SWITCH_KNOB_EXT_AREA_CORRECTION* = 2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/switch/lv_switch.h:27:9
when 65535 is static:
  const
    LV_TABLE_CELL_NONE* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:29:9
else:
  let LV_TABLE_CELL_NONE* = 65535 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:29:9
when 7 is static:
  const
    LV_IME_PINYIN_K9_MAX_INPUT* = 7 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:23:9
else:
  let LV_IME_PINYIN_K9_MAX_INPUT* = 7 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:23:9
when -1 is static:
  const
    LV_MASK_ID_INV* = -1     ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/blend/../lv_draw_sw_mask.h:24:9
else:
  let LV_MASK_ID_INV* = -1   ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/blend/../lv_draw_sw_mask.h:24:9
when 16 is static:
  const
    LV_MASK_MAX_NUM* = 16    ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/blend/../lv_draw_sw_mask.h:26:10
else:
  let LV_MASK_MAX_NUM* = 16  ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/sw/blend/../lv_draw_sw_mask.h:26:10
when 1 is static:
  const
    LV_SDL_MOUSEWHEEL_MODE_CROWN* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_window.h:28:9
else:
  let LV_SDL_MOUSEWHEEL_MODE_CROWN* = 1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_window.h:28:9
when 32 is static:
  const
    KEYBOARD_BUFFER_SIZE* = 32 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_keyboard.h:23:9
else:
  let KEYBOARD_BUFFER_SIZE* = 32 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_keyboard.h:23:9
when LV_DISPLAY_ROTATION_0 is typedesc:
  type
    LV_DISP_ROTATION_0* = LV_DISPLAY_ROTATION_0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:23:9
else:
  when LV_DISPLAY_ROTATION_0 is static:
    const
      LV_DISP_ROTATION_0* = LV_DISPLAY_ROTATION_0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:23:9
  else:
    let LV_DISP_ROTATION_0* = LV_DISPLAY_ROTATION_0 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:23:9
when LV_DISPLAY_ROTATION_90 is typedesc:
  type
    LV_DISP_ROTATION_90* = LV_DISPLAY_ROTATION_90 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:24:9
else:
  when LV_DISPLAY_ROTATION_90 is static:
    const
      LV_DISP_ROTATION_90* = LV_DISPLAY_ROTATION_90 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:24:9
  else:
    let LV_DISP_ROTATION_90* = LV_DISPLAY_ROTATION_90 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:24:9
when LV_DISPLAY_ROTATION_180 is typedesc:
  type
    LV_DISP_ROTATION_180* = LV_DISPLAY_ROTATION_180 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:25:9
else:
  when LV_DISPLAY_ROTATION_180 is static:
    const
      LV_DISP_ROTATION_180* = LV_DISPLAY_ROTATION_180 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:25:9
  else:
    let LV_DISP_ROTATION_180* = LV_DISPLAY_ROTATION_180 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:25:9
when LV_DISPLAY_ROTATION_270 is typedesc:
  type
    LV_DISP_ROTATION_270* = LV_DISPLAY_ROTATION_270 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:26:9
else:
  when LV_DISPLAY_ROTATION_270 is static:
    const
      LV_DISP_ROTATION_270* = LV_DISPLAY_ROTATION_270 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:26:9
  else:
    let LV_DISP_ROTATION_270* = LV_DISPLAY_ROTATION_270 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:26:9
when LV_DISPLAY_RENDER_MODE_PARTIAL is typedesc:
  type
    LV_DISP_RENDER_MODE_PARTIAL* = LV_DISPLAY_RENDER_MODE_PARTIAL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:28:9
else:
  when LV_DISPLAY_RENDER_MODE_PARTIAL is static:
    const
      LV_DISP_RENDER_MODE_PARTIAL* = LV_DISPLAY_RENDER_MODE_PARTIAL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:28:9
  else:
    let LV_DISP_RENDER_MODE_PARTIAL* = LV_DISPLAY_RENDER_MODE_PARTIAL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:28:9
when LV_DISPLAY_RENDER_MODE_DIRECT is typedesc:
  type
    LV_DISP_RENDER_MODE_DIRECT* = LV_DISPLAY_RENDER_MODE_DIRECT ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:29:9
else:
  when LV_DISPLAY_RENDER_MODE_DIRECT is static:
    const
      LV_DISP_RENDER_MODE_DIRECT* = LV_DISPLAY_RENDER_MODE_DIRECT ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:29:9
  else:
    let LV_DISP_RENDER_MODE_DIRECT* = LV_DISPLAY_RENDER_MODE_DIRECT ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:29:9
when LV_DISPLAY_RENDER_MODE_FULL is typedesc:
  type
    LV_DISP_RENDER_MODE_FULL* = LV_DISPLAY_RENDER_MODE_FULL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:30:9
else:
  when LV_DISPLAY_RENDER_MODE_FULL is static:
    const
      LV_DISP_RENDER_MODE_FULL* = LV_DISPLAY_RENDER_MODE_FULL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:30:9
  else:
    let LV_DISP_RENDER_MODE_FULL* = LV_DISPLAY_RENDER_MODE_FULL ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:30:9
when LV_BUTTONMATRIX_BUTTON_NONE is typedesc:
  type
    LV_BTNMATRIX_BTN_NONE* = LV_BUTTONMATRIX_BUTTON_NONE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:33:9
else:
  when LV_BUTTONMATRIX_BUTTON_NONE is static:
    const
      LV_BTNMATRIX_BTN_NONE* = LV_BUTTONMATRIX_BUTTON_NONE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:33:9
  else:
    let LV_BTNMATRIX_BTN_NONE* = LV_BUTTONMATRIX_BUTTON_NONE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:33:9
when LV_BUTTONMATRIX_CTRL_HIDDEN is typedesc:
  type
    LV_BTNMATRIX_CTRL_HIDDEN* = LV_BUTTONMATRIX_CTRL_HIDDEN ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:35:9
else:
  when LV_BUTTONMATRIX_CTRL_HIDDEN is static:
    const
      LV_BTNMATRIX_CTRL_HIDDEN* = LV_BUTTONMATRIX_CTRL_HIDDEN ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:35:9
  else:
    let LV_BTNMATRIX_CTRL_HIDDEN* = LV_BUTTONMATRIX_CTRL_HIDDEN ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:35:9
when LV_BUTTONMATRIX_CTRL_NO_REPEAT is typedesc:
  type
    LV_BTNMATRIX_CTRL_NO_REPEAT* = LV_BUTTONMATRIX_CTRL_NO_REPEAT ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:36:9
else:
  when LV_BUTTONMATRIX_CTRL_NO_REPEAT is static:
    const
      LV_BTNMATRIX_CTRL_NO_REPEAT* = LV_BUTTONMATRIX_CTRL_NO_REPEAT ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:36:9
  else:
    let LV_BTNMATRIX_CTRL_NO_REPEAT* = LV_BUTTONMATRIX_CTRL_NO_REPEAT ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:36:9
when LV_BUTTONMATRIX_CTRL_DISABLED is typedesc:
  type
    LV_BTNMATRIX_CTRL_DISABLED* = LV_BUTTONMATRIX_CTRL_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:37:9
else:
  when LV_BUTTONMATRIX_CTRL_DISABLED is static:
    const
      LV_BTNMATRIX_CTRL_DISABLED* = LV_BUTTONMATRIX_CTRL_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:37:9
  else:
    let LV_BTNMATRIX_CTRL_DISABLED* = LV_BUTTONMATRIX_CTRL_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:37:9
when LV_BUTTONMATRIX_CTRL_CHECKABLE is typedesc:
  type
    LV_BTNMATRIX_CTRL_CHECKABLE* = LV_BUTTONMATRIX_CTRL_CHECKABLE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:38:9
else:
  when LV_BUTTONMATRIX_CTRL_CHECKABLE is static:
    const
      LV_BTNMATRIX_CTRL_CHECKABLE* = LV_BUTTONMATRIX_CTRL_CHECKABLE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:38:9
  else:
    let LV_BTNMATRIX_CTRL_CHECKABLE* = LV_BUTTONMATRIX_CTRL_CHECKABLE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:38:9
when LV_BUTTONMATRIX_CTRL_CHECKED is typedesc:
  type
    LV_BTNMATRIX_CTRL_CHECKED* = LV_BUTTONMATRIX_CTRL_CHECKED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:39:9
else:
  when LV_BUTTONMATRIX_CTRL_CHECKED is static:
    const
      LV_BTNMATRIX_CTRL_CHECKED* = LV_BUTTONMATRIX_CTRL_CHECKED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:39:9
  else:
    let LV_BTNMATRIX_CTRL_CHECKED* = LV_BUTTONMATRIX_CTRL_CHECKED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:39:9
when LV_BUTTONMATRIX_CTRL_CLICK_TRIG is typedesc:
  type
    LV_BTNMATRIX_CTRL_CLICK_TRIG* = LV_BUTTONMATRIX_CTRL_CLICK_TRIG ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:40:9
else:
  when LV_BUTTONMATRIX_CTRL_CLICK_TRIG is static:
    const
      LV_BTNMATRIX_CTRL_CLICK_TRIG* = LV_BUTTONMATRIX_CTRL_CLICK_TRIG ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:40:9
  else:
    let LV_BTNMATRIX_CTRL_CLICK_TRIG* = LV_BUTTONMATRIX_CTRL_CLICK_TRIG ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:40:9
when LV_BUTTONMATRIX_CTRL_POPOVER is typedesc:
  type
    LV_BTNMATRIX_CTRL_POPOVER* = LV_BUTTONMATRIX_CTRL_POPOVER ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:41:9
else:
  when LV_BUTTONMATRIX_CTRL_POPOVER is static:
    const
      LV_BTNMATRIX_CTRL_POPOVER* = LV_BUTTONMATRIX_CTRL_POPOVER ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:41:9
  else:
    let LV_BTNMATRIX_CTRL_POPOVER* = LV_BUTTONMATRIX_CTRL_POPOVER ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:41:9
when LV_BUTTONMATRIX_CTRL_CUSTOM_1 is typedesc:
  type
    LV_BTNMATRIX_CTRL_CUSTOM_1* = LV_BUTTONMATRIX_CTRL_CUSTOM_1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:42:9
else:
  when LV_BUTTONMATRIX_CTRL_CUSTOM_1 is static:
    const
      LV_BTNMATRIX_CTRL_CUSTOM_1* = LV_BUTTONMATRIX_CTRL_CUSTOM_1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:42:9
  else:
    let LV_BTNMATRIX_CTRL_CUSTOM_1* = LV_BUTTONMATRIX_CTRL_CUSTOM_1 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:42:9
when LV_BUTTONMATRIX_CTRL_CUSTOM_2 is typedesc:
  type
    LV_BTNMATRIX_CTRL_CUSTOM_2* = LV_BUTTONMATRIX_CTRL_CUSTOM_2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:43:9
else:
  when LV_BUTTONMATRIX_CTRL_CUSTOM_2 is static:
    const
      LV_BTNMATRIX_CTRL_CUSTOM_2* = LV_BUTTONMATRIX_CTRL_CUSTOM_2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:43:9
  else:
    let LV_BTNMATRIX_CTRL_CUSTOM_2* = LV_BUTTONMATRIX_CTRL_CUSTOM_2 ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:43:9
when LV_IMAGEBUTTON_STATE_RELEASED is typedesc:
  type
    LV_IMGBTN_STATE_RELEASED* = LV_IMAGEBUTTON_STATE_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:63:9
else:
  when LV_IMAGEBUTTON_STATE_RELEASED is static:
    const
      LV_IMGBTN_STATE_RELEASED* = LV_IMAGEBUTTON_STATE_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:63:9
  else:
    let LV_IMGBTN_STATE_RELEASED* = LV_IMAGEBUTTON_STATE_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:63:9
when LV_IMAGEBUTTON_STATE_PRESSED is typedesc:
  type
    LV_IMGBTN_STATE_PRESSED* = LV_IMAGEBUTTON_STATE_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:64:9
else:
  when LV_IMAGEBUTTON_STATE_PRESSED is static:
    const
      LV_IMGBTN_STATE_PRESSED* = LV_IMAGEBUTTON_STATE_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:64:9
  else:
    let LV_IMGBTN_STATE_PRESSED* = LV_IMAGEBUTTON_STATE_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:64:9
when LV_IMAGEBUTTON_STATE_DISABLED is typedesc:
  type
    LV_IMGBTN_STATE_DISABLED* = LV_IMAGEBUTTON_STATE_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:65:9
else:
  when LV_IMAGEBUTTON_STATE_DISABLED is static:
    const
      LV_IMGBTN_STATE_DISABLED* = LV_IMAGEBUTTON_STATE_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:65:9
  else:
    let LV_IMGBTN_STATE_DISABLED* = LV_IMAGEBUTTON_STATE_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:65:9
when LV_IMAGEBUTTON_STATE_CHECKED_RELEASED is typedesc:
  type
    LV_IMGBTN_STATE_CHECKED_RELEASED* = LV_IMAGEBUTTON_STATE_CHECKED_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:66:9
else:
  when LV_IMAGEBUTTON_STATE_CHECKED_RELEASED is static:
    const
      LV_IMGBTN_STATE_CHECKED_RELEASED* = LV_IMAGEBUTTON_STATE_CHECKED_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:66:9
  else:
    let LV_IMGBTN_STATE_CHECKED_RELEASED* = LV_IMAGEBUTTON_STATE_CHECKED_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:66:9
when LV_IMAGEBUTTON_STATE_CHECKED_PRESSED is typedesc:
  type
    LV_IMGBTN_STATE_CHECKED_PRESSED* = LV_IMAGEBUTTON_STATE_CHECKED_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:67:9
else:
  when LV_IMAGEBUTTON_STATE_CHECKED_PRESSED is static:
    const
      LV_IMGBTN_STATE_CHECKED_PRESSED* = LV_IMAGEBUTTON_STATE_CHECKED_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:67:9
  else:
    let LV_IMGBTN_STATE_CHECKED_PRESSED* = LV_IMAGEBUTTON_STATE_CHECKED_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:67:9
when LV_IMAGEBUTTON_STATE_CHECKED_DISABLED is typedesc:
  type
    LV_IMGBTN_STATE_CHECKED_DISABLED* = LV_IMAGEBUTTON_STATE_CHECKED_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:68:9
else:
  when LV_IMAGEBUTTON_STATE_CHECKED_DISABLED is static:
    const
      LV_IMGBTN_STATE_CHECKED_DISABLED* = LV_IMAGEBUTTON_STATE_CHECKED_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:68:9
  else:
    let LV_IMGBTN_STATE_CHECKED_DISABLED* = LV_IMAGEBUTTON_STATE_CHECKED_DISABLED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:68:9
when LV_RESULT_OK is typedesc:
  type
    LV_RES_OK* = LV_RESULT_OK ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:111:9
else:
  when LV_RESULT_OK is static:
    const
      LV_RES_OK* = LV_RESULT_OK ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:111:9
  else:
    let LV_RES_OK* = LV_RESULT_OK ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:111:9
when LV_RESULT_INVALID is typedesc:
  type
    LV_RES_INV* = LV_RESULT_INVALID ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:112:9
else:
  when LV_RESULT_INVALID is static:
    const
      LV_RES_INV* = LV_RESULT_INVALID ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:112:9
  else:
    let LV_RES_INV* = LV_RESULT_INVALID ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:112:9
when LV_INDEV_STATE_PRESSED is typedesc:
  type
    LV_INDEV_STATE_PR* = LV_INDEV_STATE_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:114:9
else:
  when LV_INDEV_STATE_PRESSED is static:
    const
      LV_INDEV_STATE_PR* = LV_INDEV_STATE_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:114:9
  else:
    let LV_INDEV_STATE_PR* = LV_INDEV_STATE_PRESSED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:114:9
when LV_INDEV_STATE_RELEASED is typedesc:
  type
    LV_INDEV_STATE_REL* = LV_INDEV_STATE_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:115:9
else:
  when LV_INDEV_STATE_RELEASED is static:
    const
      LV_INDEV_STATE_REL* = LV_INDEV_STATE_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:115:9
  else:
    let LV_INDEV_STATE_REL* = LV_INDEV_STATE_RELEASED ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:115:9
proc lv_obj_delete*(obj: ptr lv_obj_t): void {.cdecl, importc: "lv_obj_delete".}
proc lv_obj_delete_async*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_delete_async".}
proc lv_obj_remove_flag*(obj: ptr lv_obj_t; f: lv_obj_flag_t): void {.cdecl,
    importc: "lv_obj_remove_flag".}
proc lv_obj_remove_state*(obj: ptr lv_obj_t; state: lv_state_t): void {.cdecl,
    importc: "lv_obj_remove_state".}
proc lv_indev_set_display*(indev: ptr lv_indev_t; disp: ptr struct_lv_display_t): void {.
    cdecl, importc: "lv_indev_set_display".}
proc lv_indev_active*(): ptr lv_indev_t {.cdecl, importc: "lv_indev_active".}
proc lv_screen_active*(): ptr lv_obj_t {.cdecl, importc: "lv_screen_active".}
proc lv_display_delete*(disp: ptr lv_display_t): void {.cdecl,
    importc: "lv_display_delete".}
proc lv_display_set_default*(disp: ptr lv_display_t): void {.cdecl,
    importc: "lv_display_set_default".}
proc lv_display_get_default*(): ptr lv_display_t {.cdecl,
    importc: "lv_display_get_default".}
proc lv_display_get_next*(disp: ptr lv_display_t): ptr lv_display_t {.cdecl,
    importc: "lv_display_get_next".}
proc lv_display_set_rotation*(disp: ptr lv_display_t;
                              rotation: lv_display_rotation_t): void {.cdecl,
    importc: "lv_display_set_rotation".}
proc lv_display_get_horizontal_resolution*(disp: ptr lv_display_t): int32 {.
    cdecl, importc: "lv_display_get_horizontal_resolution".}
proc lv_display_get_vertical_resolution*(disp: ptr lv_display_t): int32 {.cdecl,
    importc: "lv_display_get_vertical_resolution".}
proc lv_display_get_physical_horizontal_resolution*(disp: ptr lv_display_t): int32 {.
    cdecl, importc: "lv_display_get_physical_horizontal_resolution".}
proc lv_display_get_physical_vertical_resolution*(disp: ptr lv_display_t): int32 {.
    cdecl, importc: "lv_display_get_physical_vertical_resolution".}
proc lv_display_get_offset_x*(disp: ptr lv_display_t): int32 {.cdecl,
    importc: "lv_display_get_offset_x".}
proc lv_display_get_offset_y*(disp: ptr lv_display_t): int32 {.cdecl,
    importc: "lv_display_get_offset_y".}
proc lv_display_get_rotation*(disp: ptr lv_display_t): lv_display_rotation_t {.
    cdecl, importc: "lv_display_get_rotation".}
proc lv_display_get_dpi*(disp: ptr lv_display_t): int32 {.cdecl,
    importc: "lv_display_get_dpi".}
proc lv_display_get_antialiasing*(disp: ptr lv_display_t): bool {.cdecl,
    importc: "lv_display_get_antialiasing".}
proc lv_display_flush_ready*(disp: ptr lv_display_t): void {.cdecl,
    importc: "lv_display_flush_ready".}
proc lv_display_flush_is_last*(disp: ptr lv_display_t): bool {.cdecl,
    importc: "lv_display_flush_is_last".}
proc lv_display_get_screen_active*(disp: ptr lv_display_t): ptr lv_obj_t {.
    cdecl, importc: "lv_display_get_screen_active".}
proc lv_display_get_screen_prev*(disp: ptr lv_display_t): ptr lv_obj_t {.cdecl,
    importc: "lv_display_get_screen_prev".}
proc lv_screen_load*(scr: ptr struct_lv_obj_t): void {.cdecl,
    importc: "lv_screen_load".}
proc lv_screen_load_anim*(scr: ptr lv_obj_t; anim_type: lv_screen_load_anim_t;
                          time: uint32; delay: uint32; auto_del: bool): void {.
    cdecl, importc: "lv_screen_load_anim".}
proc lv_display_get_layer_top*(disp: ptr lv_display_t): ptr lv_obj_t {.cdecl,
    importc: "lv_display_get_layer_top".}
proc lv_display_get_layer_sys*(disp: ptr lv_display_t): ptr lv_obj_t {.cdecl,
    importc: "lv_display_get_layer_sys".}
proc lv_display_send_event*(disp: ptr lv_display_t; code: lv_event_code_t;
                            param: pointer): lv_result_t {.cdecl,
    importc: "lv_display_send_event".}
proc lv_display_set_theme*(disp: ptr lv_display_t; th: ptr lv_theme_t): void {.
    cdecl, importc: "lv_display_set_theme".}
proc lv_display_get_theme*(disp: ptr lv_display_t): ptr lv_theme_t {.cdecl,
    importc: "lv_display_get_theme".}
proc lv_display_get_inactive_time*(disp: ptr lv_display_t): uint32 {.cdecl,
    importc: "lv_display_get_inactive_time".}
proc lv_display_trigger_activity*(disp: ptr lv_display_t): void {.cdecl,
    importc: "lv_display_trigger_activity".}
proc lv_display_enable_invalidation*(disp: ptr lv_display_t; en: bool): void {.
    cdecl, importc: "lv_display_enable_invalidation".}
proc lv_display_is_invalidation_enabled*(disp: ptr lv_display_t): bool {.cdecl,
    importc: "lv_display_is_invalidation_enabled".}
when lv_display_refr_timer is typedesc:
  type
    lv_disp_refr_timer* = lv_display_refr_timer ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:155:9
else:
  when lv_display_refr_timer is static:
    const
      lv_disp_refr_timer* = lv_display_refr_timer ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:155:9
  else:
    let lv_disp_refr_timer* = lv_display_refr_timer ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:155:9
proc lv_display_get_refr_timer*(disp: ptr lv_display_t): ptr lv_timer_t {.cdecl,
    importc: "lv_display_get_refr_timer".}
proc lv_timer_delete*(timer: ptr lv_timer_t): void {.cdecl,
    importc: "lv_timer_delete".}
proc lv_anim_delete*(var_arg: pointer; exec_cb: lv_anim_exec_xcb_t): bool {.
    cdecl, importc: "lv_anim_delete".}
proc lv_anim_delete_all*(): void {.cdecl, importc: "lv_anim_delete_all".}
proc lv_anim_set_completed_cb*(a: ptr lv_anim_t;
                               completed_cb: lv_anim_completed_cb_t): void {.
    cdecl, importc: "lv_anim_set_completed_cb".}
proc lv_group_delete*(group: ptr lv_group_t): void {.cdecl,
    importc: "lv_group_delete".}
proc lv_text_get_size*(size_res: ptr lv_point_t; text: cstring;
                       font: ptr lv_font_t; letter_space: int32;
                       line_space: int32; max_width: int32; flag: lv_text_flag_t): void {.
    cdecl, importc: "lv_text_get_size".}
proc lv_text_get_width*(txt: cstring; length: uint32; font: ptr lv_font_t;
                        letter_space: int32): int32 {.cdecl,
    importc: "lv_text_get_width".}
proc lv_image_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_image_create".}
proc lv_image_set_src*(obj: ptr lv_obj_t; src: pointer): void {.cdecl,
    importc: "lv_image_set_src".}
proc lv_image_set_offset_x*(obj: ptr lv_obj_t; x: int32): void {.cdecl,
    importc: "lv_image_set_offset_x".}
proc lv_image_set_offset_y*(obj: ptr lv_obj_t; y: int32): void {.cdecl,
    importc: "lv_image_set_offset_y".}
proc lv_image_set_rotation*(obj: ptr lv_obj_t; angle: int32): void {.cdecl,
    importc: "lv_image_set_rotation".}
proc lv_image_set_pivot*(obj: ptr lv_obj_t; x: int32; y: int32): void {.cdecl,
    importc: "lv_image_set_pivot".}
proc lv_image_set_scale*(obj: ptr lv_obj_t; zoom: uint32): void {.cdecl,
    importc: "lv_image_set_scale".}
proc lv_image_set_antialias*(obj: ptr lv_obj_t; antialias: bool): void {.cdecl,
    importc: "lv_image_set_antialias".}
proc lv_image_get_src*(obj: ptr lv_obj_t): pointer {.cdecl,
    importc: "lv_image_get_src".}
proc lv_image_get_offset_x*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_image_get_offset_x".}
proc lv_image_get_offset_y*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_image_get_offset_y".}
proc lv_image_get_rotation*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_image_get_rotation".}
proc lv_image_get_pivot*(obj: ptr lv_obj_t; pivot: ptr lv_point_t): void {.
    cdecl, importc: "lv_image_get_pivot".}
proc lv_image_get_scale*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_image_get_scale".}
proc lv_image_get_antialias*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_image_get_antialias".}
proc lv_imagebutton_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_imagebutton_create".}
proc lv_imagebutton_set_src*(imagebutton: ptr lv_obj_t;
                             state: lv_imagebutton_state_t; src_left: pointer;
                             src_mid: pointer; src_right: pointer): void {.
    cdecl, importc: "lv_imagebutton_set_src".}
proc lv_imagebutton_set_state*(imagebutton: ptr lv_obj_t;
                               state: lv_imagebutton_state_t): void {.cdecl,
    importc: "lv_imagebutton_set_state".}
proc lv_imagebutton_get_src_left*(imagebutton: ptr lv_obj_t;
                                  state: lv_imagebutton_state_t): pointer {.
    cdecl, importc: "lv_imagebutton_get_src_left".}
proc lv_imagebutton_get_src_middle*(imagebutton: ptr lv_obj_t;
                                    state: lv_imagebutton_state_t): pointer {.
    cdecl, importc: "lv_imagebutton_get_src_middle".}
proc lv_imagebutton_get_src_right*(imagebutton: ptr lv_obj_t;
                                   state: lv_imagebutton_state_t): pointer {.
    cdecl, importc: "lv_imagebutton_get_src_right".}
proc lv_list_set_button_text*(list: ptr lv_obj_t; btn: ptr lv_obj_t;
                              txt: cstring): void {.cdecl,
    importc: "lv_list_set_button_text".}
proc lv_list_get_button_text*(list: ptr lv_obj_t; btn: ptr lv_obj_t): cstring {.
    cdecl, importc: "lv_list_get_button_text".}
proc lv_list_add_button*(list: ptr lv_obj_t; icon: pointer; txt: cstring): ptr lv_obj_t {.
    cdecl, importc: "lv_list_add_button".}
proc lv_button_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_button_create".}
proc lv_buttonmatrix_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_buttonmatrix_create".}
proc lv_buttonmatrix_set_map*(obj: ptr lv_obj_t;
                              map: ptr UncheckedArray[cstring]): void {.cdecl,
    importc: "lv_buttonmatrix_set_map".}
proc lv_buttonmatrix_set_ctrl_map*(obj: ptr lv_obj_t; ctrl_map: ptr UncheckedArray[
    lv_buttonmatrix_ctrl_t]): void {.cdecl,
                                     importc: "lv_buttonmatrix_set_ctrl_map".}
proc lv_buttonmatrix_set_selected_button*(obj: ptr lv_obj_t; btn_id: uint32): void {.
    cdecl, importc: "lv_buttonmatrix_set_selected_button".}
proc lv_buttonmatrix_set_button_ctrl*(obj: ptr lv_obj_t; btn_id: uint32;
                                      ctrl: lv_buttonmatrix_ctrl_t): void {.
    cdecl, importc: "lv_buttonmatrix_set_button_ctrl".}
proc lv_buttonmatrix_clear_button_ctrl*(obj: ptr lv_obj_t; btn_id: uint32;
                                        ctrl: lv_buttonmatrix_ctrl_t): void {.
    cdecl, importc: "lv_buttonmatrix_clear_button_ctrl".}
proc lv_buttonmatrix_set_button_ctrl_all*(obj: ptr lv_obj_t;
    ctrl: lv_buttonmatrix_ctrl_t): void {.cdecl,
    importc: "lv_buttonmatrix_set_button_ctrl_all".}
proc lv_buttonmatrix_clear_button_ctrl_all*(obj: ptr lv_obj_t;
    ctrl: lv_buttonmatrix_ctrl_t): void {.cdecl,
    importc: "lv_buttonmatrix_clear_button_ctrl_all".}
proc lv_buttonmatrix_set_button_width*(obj: ptr lv_obj_t; btn_id: uint32;
                                       width: uint32): void {.cdecl,
    importc: "lv_buttonmatrix_set_button_width".}
proc lv_buttonmatrix_set_one_checked*(obj: ptr lv_obj_t; en: bool): void {.
    cdecl, importc: "lv_buttonmatrix_set_one_checked".}
proc lv_buttonmatrix_get_map*(obj: ptr lv_obj_t): ptr cstring {.cdecl,
    importc: "lv_buttonmatrix_get_map".}
proc lv_buttonmatrix_get_selected_button*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_buttonmatrix_get_selected_button".}
proc lv_buttonmatrix_get_button_text*(obj: ptr lv_obj_t; btn_id: uint32): cstring {.
    cdecl, importc: "lv_buttonmatrix_get_button_text".}
proc lv_buttonmatrix_has_button_ctrl*(obj: ptr lv_obj_t; btn_id: uint32;
                                      ctrl: lv_buttonmatrix_ctrl_t): bool {.
    cdecl, importc: "lv_buttonmatrix_has_button_ctrl".}
proc lv_buttonmatrix_get_one_checked*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_buttonmatrix_get_one_checked".}
proc lv_tabview_get_tab_bar*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_tabview_get_tab_bar".}
proc lv_tabview_get_tab_active*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_tabview_get_tab_active".}
proc lv_tabview_set_active*(obj: ptr lv_obj_t; idx: uint32;
                            anim_en: lv_anim_enable_t): void {.cdecl,
    importc: "lv_tabview_set_active".}
proc lv_tileview_get_tile_active*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_tileview_get_tile_active".}
proc lv_tileview_set_tile_by_index*(tv: ptr lv_obj_t; col_id: uint32;
                                    row_id: uint32; anim_en: lv_anim_enable_t): void {.
    cdecl, importc: "lv_tileview_set_tile_by_index".}
proc lv_tileview_set_tile*(tv: ptr lv_obj_t; tile_obj: ptr lv_obj_t;
                           anim_en: lv_anim_enable_t): void {.cdecl,
    importc: "lv_tileview_set_tile".}
proc lv_roller_set_visible_row_count*(obj: ptr lv_obj_t; row_cnt: uint32): void {.
    cdecl, importc: "lv_roller_set_visible_row_count".}
proc lv_roller_get_option_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_roller_get_option_count".}
proc lv_table_set_column_count*(obj: ptr lv_obj_t; col_cnt: uint32): void {.
    cdecl, importc: "lv_table_set_column_count".}
proc lv_table_set_row_count*(obj: ptr lv_obj_t; row_cnt: uint32): void {.cdecl,
    importc: "lv_table_set_row_count".}
proc lv_table_get_column_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_table_get_column_count".}
proc lv_table_get_row_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_table_get_row_count".}
proc lv_table_set_column_width*(obj: ptr lv_obj_t; col_id: uint32; w: int32): void {.
    cdecl, importc: "lv_table_set_column_width".}
proc lv_table_get_column_width*(obj: ptr lv_obj_t; col: uint32): int32 {.cdecl,
    importc: "lv_table_get_column_width".}
proc lv_dropdown_get_option_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_dropdown_get_option_count".}
proc lv_obj_get_child_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_obj_get_child_count".}
proc lv_obj_get_display*(obj: ptr lv_obj_t): ptr lv_display_t {.cdecl,
    importc: "lv_obj_get_display".}
proc lv_obj_delete_anim_completed_cb*(a: ptr lv_anim_t): void {.cdecl,
    importc: "lv_obj_delete_anim_completed_cb".}
when LV_STYLE_ANIM_DURATION is typedesc:
  type
    LV_STYLE_ANIM_TIME* = LV_STYLE_ANIM_DURATION ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:260:9
else:
  when LV_STYLE_ANIM_DURATION is static:
    const
      LV_STYLE_ANIM_TIME* = LV_STYLE_ANIM_DURATION ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:260:9
  else:
    let LV_STYLE_ANIM_TIME* = LV_STYLE_ANIM_DURATION ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:260:9
when LV_STYLE_IMAGE_OPA is typedesc:
  type
    LV_STYLE_IMG_OPA* = LV_STYLE_IMAGE_OPA ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:261:9
else:
  when LV_STYLE_IMAGE_OPA is static:
    const
      LV_STYLE_IMG_OPA* = LV_STYLE_IMAGE_OPA ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:261:9
  else:
    let LV_STYLE_IMG_OPA* = LV_STYLE_IMAGE_OPA ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:261:9
when LV_STYLE_IMAGE_RECOLOR is typedesc:
  type
    LV_STYLE_IMG_RECOLOR* = LV_STYLE_IMAGE_RECOLOR ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:262:9
else:
  when LV_STYLE_IMAGE_RECOLOR is static:
    const
      LV_STYLE_IMG_RECOLOR* = LV_STYLE_IMAGE_RECOLOR ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:262:9
  else:
    let LV_STYLE_IMG_RECOLOR* = LV_STYLE_IMAGE_RECOLOR ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:262:9
when LV_STYLE_IMAGE_RECOLOR_OPA is typedesc:
  type
    LV_STYLE_IMG_RECOLOR_OPA* = LV_STYLE_IMAGE_RECOLOR_OPA ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:263:9
else:
  when LV_STYLE_IMAGE_RECOLOR_OPA is static:
    const
      LV_STYLE_IMG_RECOLOR_OPA* = LV_STYLE_IMAGE_RECOLOR_OPA ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:263:9
  else:
    let LV_STYLE_IMG_RECOLOR_OPA* = LV_STYLE_IMAGE_RECOLOR_OPA ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:263:9
when LV_STYLE_SHADOW_OFFSET_X is typedesc:
  type
    LV_STYLE_SHADOW_OFS_X* = LV_STYLE_SHADOW_OFFSET_X ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:264:9
else:
  when LV_STYLE_SHADOW_OFFSET_X is static:
    const
      LV_STYLE_SHADOW_OFS_X* = LV_STYLE_SHADOW_OFFSET_X ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:264:9
  else:
    let LV_STYLE_SHADOW_OFS_X* = LV_STYLE_SHADOW_OFFSET_X ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:264:9
when LV_STYLE_SHADOW_OFFSET_Y is typedesc:
  type
    LV_STYLE_SHADOW_OFS_Y* = LV_STYLE_SHADOW_OFFSET_Y ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:265:9
else:
  when LV_STYLE_SHADOW_OFFSET_Y is static:
    const
      LV_STYLE_SHADOW_OFS_Y* = LV_STYLE_SHADOW_OFFSET_Y ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:265:9
  else:
    let LV_STYLE_SHADOW_OFS_Y* = LV_STYLE_SHADOW_OFFSET_Y ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:265:9
when LV_STYLE_TRANSFORM_ROTATION is typedesc:
  type
    LV_STYLE_TRANSFORM_ANGLE* = LV_STYLE_TRANSFORM_ROTATION ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:266:9
else:
  when LV_STYLE_TRANSFORM_ROTATION is static:
    const
      LV_STYLE_TRANSFORM_ANGLE* = LV_STYLE_TRANSFORM_ROTATION ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:266:9
  else:
    let LV_STYLE_TRANSFORM_ANGLE* = LV_STYLE_TRANSFORM_ROTATION ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:266:9
proc lv_obj_get_style_anim_duration*(obj: ptr lv_obj_t; part: lv_part_t): uint32 {.
    cdecl, importc: "lv_obj_get_style_anim_duration".}
proc lv_obj_get_style_image_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_image_opa".}
proc lv_obj_get_style_image_recolor*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_image_recolor".}
proc lv_obj_get_style_image_recolor_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_image_recolor_filtered".}
proc lv_obj_get_style_image_recolor_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_image_recolor_opa".}
proc lv_obj_get_style_shadow_offset_x*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_shadow_offset_x".}
proc lv_obj_get_style_shadow_offset_y*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_shadow_offset_y".}
proc lv_obj_get_style_transform_rotation*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_rotation".}
proc lv_obj_get_style_bg_image_src*(obj: ptr lv_obj_t; part: lv_part_t): pointer {.
    cdecl, importc: "lv_obj_get_style_bg_image_src".}
proc lv_obj_get_style_bg_image_recolor*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_bg_image_recolor".}
proc lv_obj_get_style_bg_image_recolor_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_bg_image_recolor_opa".}
proc lv_obj_set_style_anim_duration*(obj: ptr lv_obj_t; value: uint32;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_anim_duration".}
proc lv_obj_set_style_image_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_image_opa".}
proc lv_obj_set_style_image_recolor*(obj: ptr lv_obj_t; value: lv_color_t;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_image_recolor".}
proc lv_obj_set_style_image_recolor_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_image_recolor_opa".}
proc lv_obj_set_style_shadow_offset_x*(obj: ptr lv_obj_t; value: int32;
                                       selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_shadow_offset_x".}
proc lv_obj_set_style_shadow_offset_y*(obj: ptr lv_obj_t; value: int32;
                                       selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_shadow_offset_y".}
proc lv_obj_set_style_transform_scale*(obj: ptr lv_obj_t; value: int32;
                                       selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_transform_scale".}
proc lv_obj_set_style_transform_rotation*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_transform_rotation".}
proc lv_obj_set_style_bg_image_src*(obj: ptr lv_obj_t; value: pointer;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_bg_image_src".}
proc lv_obj_set_style_bg_image_recolor*(obj: ptr lv_obj_t; value: lv_color_t;
                                        selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_bg_image_recolor".}
proc lv_obj_set_style_bg_image_recolor_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_bg_image_recolor_opa".}
proc lv_style_set_anim_duration*(style: ptr lv_style_t; value: uint32): void {.
    cdecl, importc: "lv_style_set_anim_duration".}
proc lv_style_set_image_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_image_opa".}
proc lv_style_set_image_recolor*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_image_recolor".}
proc lv_style_set_image_recolor_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_image_recolor_opa".}
proc lv_style_set_shadow_offset_x*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_shadow_offset_x".}
proc lv_style_set_shadow_offset_y*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_shadow_offset_y".}
proc lv_style_set_transform_rotation*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_rotation".}
proc lv_style_set_transform_scale*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_scale".}
proc lv_style_set_bg_image_src*(style: ptr lv_style_t; value: pointer): void {.
    cdecl, importc: "lv_style_set_bg_image_src".}
proc lv_style_set_bg_image_recolor*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_bg_image_recolor".}
proc lv_style_set_bg_image_recolor_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_bg_image_recolor_opa".}
proc lv_keyboard_get_selected_button*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_keyboard_get_selected_button".}
proc lv_keyboard_get_button_text*(obj: ptr lv_obj_t; btn_id: uint32): cstring {.
    cdecl, importc: "lv_keyboard_get_button_text".}
when LV_SCALE_NONE is typedesc:
  type
    LV_ZOOM_NONE* = LV_SCALE_NONE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:309:9
else:
  when LV_SCALE_NONE is static:
    const
      LV_ZOOM_NONE* = LV_SCALE_NONE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:309:9
  else:
    let LV_ZOOM_NONE* = LV_SCALE_NONE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:309:9
proc lv_bin_decoder_open*(decoder: ptr lv_image_decoder_t;
                          dsc: ptr lv_image_decoder_dsc_t): lv_result_t {.cdecl,
    importc: "lv_bin_decoder_open".}
proc lv_bin_decoder_close*(decoder: ptr lv_image_decoder_t;
                           dsc: ptr lv_image_decoder_dsc_t): void {.cdecl,
    importc: "lv_bin_decoder_close".}
proc lv_image_set_inner_align*(obj: ptr lv_obj_t; align: lv_image_align_t): void {.
    cdecl, importc: "lv_image_set_inner_align".}
proc lv_image_get_inner_align*(obj: ptr lv_obj_t): lv_image_align_t {.cdecl,
    importc: "lv_image_get_inner_align".}
proc lv_obj_bind_checked*(obj: ptr lv_obj_t; subject: ptr lv_subject_t): ptr lv_observer_t {.
    cdecl, importc: "lv_obj_bind_checked".}
when LV_DRAW_BUF_DEFINE_STATIC is typedesc:
  type
    LV_DRAW_BUF_DEFINE* = LV_DRAW_BUF_DEFINE_STATIC ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_0.h:42:9
else:
  when LV_DRAW_BUF_DEFINE_STATIC is static:
    const
      LV_DRAW_BUF_DEFINE* = LV_DRAW_BUF_DEFINE_STATIC ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_0.h:42:9
  else:
    let LV_DRAW_BUF_DEFINE* = LV_DRAW_BUF_DEFINE_STATIC ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_0.h:42:9
proc lv_utils_bsearch*(key: pointer; base: pointer; n: csize_t; size: csize_t;
                       cmp: proc (a0: pointer; a1: pointer): cint {.cdecl.}): pointer {.
    cdecl, importc: "lv_utils_bsearch".}
proc lv_draw_buf_align_ex*(handlers: ptr lv_draw_buf_handlers_t; buf: pointer;
                           color_format: lv_color_format_t): pointer {.cdecl,
    importc: "lv_draw_buf_align_ex".}
proc lv_draw_buf_create_ex*(handlers: ptr lv_draw_buf_handlers_t; w: uint32;
                            h: uint32; cf: lv_color_format_t; stride: uint32): ptr lv_draw_buf_t {.
    cdecl, importc: "lv_draw_buf_create_ex".}
proc lv_draw_buf_width_to_stride_ex*(handlers: ptr lv_draw_buf_handlers_t;
                                     w: uint32; color_format: lv_color_format_t): uint32 {.
    cdecl, importc: "lv_draw_buf_width_to_stride_ex".}
proc lv_draw_buf_dup_ex*(handlers: ptr lv_draw_buf_handlers_t;
                         draw_buf: ptr lv_draw_buf_t): ptr lv_draw_buf_t {.
    cdecl, importc: "lv_draw_buf_dup_ex".}
when LV_EVENT_LAST is typedesc:
  type
    internal_LV_EVENT_LAST* = LV_EVENT_LAST ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:38:9
else:
  when LV_EVENT_LAST is static:
    const
      internal_LV_EVENT_LAST* = LV_EVENT_LAST ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:38:9
  else:
    let internal_LV_EVENT_LAST* = LV_EVENT_LAST ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:38:9
when lv_obj_t is typedesc:
  type
    internal_lv_obj_t* = lv_obj_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:39:9
else:
  when lv_obj_t is static:
    const
      internal_lv_obj_t* = lv_obj_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:39:9
  else:
    let internal_lv_obj_t* = lv_obj_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:39:9
when lv_obj_class_t is typedesc:
  type
    internal_lv_obj_class_t* = lv_obj_class_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:40:9
else:
  when lv_obj_class_t is static:
    const
      internal_lv_obj_class_t* = lv_obj_class_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:40:9
  else:
    let internal_lv_obj_class_t* = lv_obj_class_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:40:9
when lv_event_t is typedesc:
  type
    internal_lv_event_t* = lv_event_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:41:9
else:
  when lv_event_t is static:
    const
      internal_lv_event_t* = lv_event_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:41:9
  else:
    let internal_lv_event_t* = lv_event_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:41:9
when lv_event_code_t is typedesc:
  type
    internal_lv_event_code_t* = lv_event_code_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:42:9
else:
  when lv_event_code_t is static:
    const
      internal_lv_event_code_t* = lv_event_code_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:42:9
  else:
    let internal_lv_event_code_t* = lv_event_code_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:42:9
when lv_event_mark_deleted is typedesc:
  type
    internal_lv_event_mark_deleted* = lv_event_mark_deleted ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:43:9
else:
  when lv_event_mark_deleted is static:
    const
      internal_lv_event_mark_deleted* = lv_event_mark_deleted ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:43:9
  else:
    let internal_lv_event_mark_deleted* = lv_event_mark_deleted ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:43:9
proc lv_obj_add_event_cb*(obj: ptr lv_obj_t; event_cb: lv_event_cb_t;
                          filter: lv_event_code_t; user_data: pointer): ptr lv_event_dsc_t {.
    cdecl, importc: "lv_obj_add_event_cb".}
when lv_anim_t is typedesc:
  type
    internal_lv_anim_t* = lv_anim_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:46:9
else:
  when lv_anim_t is static:
    const
      internal_lv_anim_t* = lv_anim_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:46:9
  else:
    let internal_lv_anim_t* = lv_anim_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:46:9
when LV_STYLE_LAST_BUILT_IN_PROP is typedesc:
  type
    internal_LV_STYLE_LAST_BUILT_IN_PROP* = LV_STYLE_LAST_BUILT_IN_PROP ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:48:9
else:
  when LV_STYLE_LAST_BUILT_IN_PROP is static:
    const
      internal_LV_STYLE_LAST_BUILT_IN_PROP* = LV_STYLE_LAST_BUILT_IN_PROP ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:48:9
  else:
    let internal_LV_STYLE_LAST_BUILT_IN_PROP* = LV_STYLE_LAST_BUILT_IN_PROP ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:48:9
when LV_FLEX_REVERSE is typedesc:
  type
    internal_LV_FLEX_REVERSE* = LV_FLEX_REVERSE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:49:9
else:
  when LV_FLEX_REVERSE is static:
    const
      internal_LV_FLEX_REVERSE* = LV_FLEX_REVERSE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:49:9
  else:
    let internal_LV_FLEX_REVERSE* = LV_FLEX_REVERSE ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:49:9
when LV_FLEX_WRAP is typedesc:
  type
    internal_LV_FLEX_WRAP* = LV_FLEX_WRAP ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:50:9
else:
  when LV_FLEX_WRAP is static:
    const
      internal_LV_FLEX_WRAP* = LV_FLEX_WRAP ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:50:9
  else:
    let internal_LV_FLEX_WRAP* = LV_FLEX_WRAP ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:50:9
when LV_FLEX_COLUMN is typedesc:
  type
    internal_LV_FLEX_COLUMN* = LV_FLEX_COLUMN ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:51:9
else:
  when LV_FLEX_COLUMN is static:
    const
      internal_LV_FLEX_COLUMN* = LV_FLEX_COLUMN ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:51:9
  else:
    let internal_LV_FLEX_COLUMN* = LV_FLEX_COLUMN ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:51:9
when lv_area_is_equal is typedesc:
  type
    internal_lv_area_is_equal* = lv_area_is_equal ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:53:9
else:
  when lv_area_is_equal is static:
    const
      internal_lv_area_is_equal* = lv_area_is_equal ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:53:9
  else:
    let internal_lv_area_is_equal* = lv_area_is_equal ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:53:9
when lv_area_is_in is typedesc:
  type
    internal_lv_area_is_in* = lv_area_is_in ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:54:9
else:
  when lv_area_is_in is static:
    const
      internal_lv_area_is_in* = lv_area_is_in ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:54:9
  else:
    let internal_lv_area_is_in* = lv_area_is_in ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:54:9
when lv_area_intersect is typedesc:
  type
    internal_lv_area_intersect* = lv_area_intersect ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:55:9
else:
  when lv_area_intersect is static:
    const
      internal_lv_area_intersect* = lv_area_intersect ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:55:9
  else:
    let internal_lv_area_intersect* = lv_area_intersect ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:55:9
when lv_area_is_point_on is typedesc:
  type
    internal_lv_area_is_point_on* = lv_area_is_point_on ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:56:9
else:
  when lv_area_is_point_on is static:
    const
      internal_lv_area_is_point_on* = lv_area_is_point_on ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:56:9
  else:
    let internal_lv_area_is_point_on* = lv_area_is_point_on ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:56:9
when lv_area_join is typedesc:
  type
    internal_lv_area_join* = lv_area_join ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:57:9
else:
  when lv_area_join is static:
    const
      internal_lv_area_join* = lv_area_join ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:57:9
  else:
    let internal_lv_area_join* = lv_area_join ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:57:9
when lv_image_buf_get_transformed_area is typedesc:
  type
    internal_lv_image_buf_get_transformed_area* = lv_image_buf_get_transformed_area ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:58:9
else:
  when lv_image_buf_get_transformed_area is static:
    const
      internal_lv_image_buf_get_transformed_area* = lv_image_buf_get_transformed_area ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:58:9
  else:
    let internal_lv_image_buf_get_transformed_area* = lv_image_buf_get_transformed_area ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:58:9
proc lv_ll_init*(ll_p: ptr lv_ll_t; node_size: uint32): void {.cdecl,
    importc: "lv_ll_init".}
proc lv_ll_ins_head*(ll_p: ptr lv_ll_t): pointer {.cdecl,
    importc: "lv_ll_ins_head".}
proc lv_ll_ins_prev*(ll_p: ptr lv_ll_t; n_act: pointer): pointer {.cdecl,
    importc: "lv_ll_ins_prev".}
proc lv_ll_ins_tail*(ll_p: ptr lv_ll_t): pointer {.cdecl,
    importc: "lv_ll_ins_tail".}
proc lv_ll_get_head*(ll_p: ptr lv_ll_t): pointer {.cdecl,
    importc: "lv_ll_get_head".}
proc lv_ll_get_tail*(ll_p: ptr lv_ll_t): pointer {.cdecl,
    importc: "lv_ll_get_tail".}
proc lv_ll_get_next*(ll_p: ptr lv_ll_t; n_act: pointer): pointer {.cdecl,
    importc: "lv_ll_get_next".}
proc lv_ll_get_prev*(ll_p: ptr lv_ll_t; n_act: pointer): pointer {.cdecl,
    importc: "lv_ll_get_prev".}
proc lv_ll_get_len*(ll_p: ptr lv_ll_t): uint32 {.cdecl, importc: "lv_ll_get_len".}
proc lv_ll_move_before*(ll_p: ptr lv_ll_t; n_act: pointer; n_after: pointer): void {.
    cdecl, importc: "lv_ll_move_before".}
proc lv_ll_is_empty*(ll_p: ptr lv_ll_t): bool {.cdecl, importc: "lv_ll_is_empty".}
proc lv_ll_clear*(ll_p: ptr lv_ll_t): void {.cdecl, importc: "lv_ll_clear".}
proc lv_ll_remove*(ll_p: ptr lv_ll_t; node_p: pointer): void {.cdecl,
    importc: "lv_ll_remove".}
proc lv_ll_chg_list*(ll_ori_p: ptr lv_ll_t; ll_new_p: ptr lv_ll_t;
                     node: pointer; head: bool): void {.cdecl,
    importc: "lv_ll_chg_list".}
when LV_LL_READ is typedesc:
  type
    internal_LV_LL_READ* = LV_LL_READ ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:74:9
else:
  when LV_LL_READ is static:
    const
      internal_LV_LL_READ* = LV_LL_READ ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:74:9
  else:
    let internal_LV_LL_READ* = LV_LL_READ ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:74:9
when LV_LL_READ_BACK is typedesc:
  type
    internal_LV_LL_READ_BACK* = LV_LL_READ_BACK ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:75:9
else:
  when LV_LL_READ_BACK is static:
    const
      internal_LV_LL_READ_BACK* = LV_LL_READ_BACK ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:75:9
  else:
    let internal_LV_LL_READ_BACK* = LV_LL_READ_BACK ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:75:9
when lv_obj_scroll_by_raw is typedesc:
  type
    internal_lv_obj_scroll_by_raw* = lv_obj_scroll_by_raw ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:77:9
else:
  when lv_obj_scroll_by_raw is static:
    const
      internal_lv_obj_scroll_by_raw* = lv_obj_scroll_by_raw ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:77:9
  else:
    let internal_lv_obj_scroll_by_raw* = lv_obj_scroll_by_raw ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:77:9
when lv_obj_get_ext_draw_size is typedesc:
  type
    internal_lv_obj_get_ext_draw_size* = lv_obj_get_ext_draw_size ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:78:9
else:
  when lv_obj_get_ext_draw_size is static:
    const
      internal_lv_obj_get_ext_draw_size* = lv_obj_get_ext_draw_size ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:78:9
  else:
    let internal_lv_obj_get_ext_draw_size* = lv_obj_get_ext_draw_size ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:78:9
when lv_indev_scroll_handler is typedesc:
  type
    internal_lv_indev_scroll_handler* = lv_indev_scroll_handler ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:79:9
else:
  when lv_indev_scroll_handler is static:
    const
      internal_lv_indev_scroll_handler* = lv_indev_scroll_handler ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:79:9
  else:
    let internal_lv_indev_scroll_handler* = lv_indev_scroll_handler ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:79:9
when lv_display_t is typedesc:
  type
    internal_lv_display_t* = lv_display_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:81:9
else:
  when lv_display_t is static:
    const
      internal_lv_display_t* = lv_display_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:81:9
  else:
    let internal_lv_display_t* = lv_display_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:81:9
when lv_timer_t is typedesc:
  type
    internal_lv_timer_t* = lv_timer_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:86:9
else:
  when lv_timer_t is static:
    const
      internal_lv_timer_t* = lv_timer_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:86:9
  else:
    let internal_lv_timer_t* = lv_timer_t ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:86:9
when lv_inv_area is typedesc:
  type
    internal_lv_inv_area* = lv_inv_area ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:88:9
else:
  when lv_inv_area is static:
    const
      internal_lv_inv_area* = lv_inv_area ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:88:9
  else:
    let internal_lv_inv_area* = lv_inv_area ## Generated based on /home/jose/Documentos/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v9_1.h:88:9
proc lv_init*(): void {.cdecl, importc: "lv_init".}
proc lv_deinit*(): void {.cdecl, importc: "lv_deinit".}
proc lv_is_initialized*(): bool {.cdecl, importc: "lv_is_initialized".}
proc lv_memcpy*(dst: pointer; src: pointer; len: csize_t): pointer {.cdecl,
    importc: "lv_memcpy".}
proc lv_memset*(dst: pointer; v: uint8; len: csize_t): void {.cdecl,
    importc: "lv_memset".}
proc lv_memmove*(dst: pointer; src: pointer; len: csize_t): pointer {.cdecl,
    importc: "lv_memmove".}
proc lv_memcmp*(p1: pointer; p2: pointer; len: csize_t): cint {.cdecl,
    importc: "lv_memcmp".}
proc lv_memzero*(dst: pointer; len: csize_t): void {.cdecl,
    importc: "lv_memzero".}
proc lv_strlen*(str: cstring): csize_t {.cdecl, importc: "lv_strlen".}
proc lv_strlcpy*(dst: cstring; src: cstring; dst_size: csize_t): csize_t {.
    cdecl, importc: "lv_strlcpy".}
proc lv_strncpy*(dst: cstring; src: cstring; dest_size: csize_t): cstring {.
    cdecl, importc: "lv_strncpy".}
proc lv_strcpy*(dst: cstring; src: cstring): cstring {.cdecl,
    importc: "lv_strcpy".}
proc lv_strcmp*(s1: cstring; s2: cstring): cint {.cdecl, importc: "lv_strcmp".}
proc lv_strdup*(src: cstring): cstring {.cdecl, importc: "lv_strdup".}
proc lv_strcat*(dst: cstring; src: cstring): cstring {.cdecl,
    importc: "lv_strcat".}
proc lv_strncat*(dst: cstring; src: cstring; src_len: csize_t): cstring {.cdecl,
    importc: "lv_strncat".}
proc lv_mem_init*(): void {.cdecl, importc: "lv_mem_init".}
proc lv_mem_deinit*(): void {.cdecl, importc: "lv_mem_deinit".}
proc lv_mem_add_pool*(mem: pointer; bytes: csize_t): lv_mem_pool_t {.cdecl,
    importc: "lv_mem_add_pool".}
proc lv_mem_remove_pool*(pool: lv_mem_pool_t): void {.cdecl,
    importc: "lv_mem_remove_pool".}
proc lv_malloc*(size: csize_t): pointer {.cdecl, importc: "lv_malloc".}
proc lv_malloc_zeroed*(size: csize_t): pointer {.cdecl,
    importc: "lv_malloc_zeroed".}
proc lv_free*(data: pointer): void {.cdecl, importc: "lv_free".}
proc lv_realloc*(data_p: pointer; new_size: csize_t): pointer {.cdecl,
    importc: "lv_realloc".}
proc lv_malloc_core*(size: csize_t): pointer {.cdecl, importc: "lv_malloc_core".}
proc lv_free_core*(p: pointer): void {.cdecl, importc: "lv_free_core".}
proc lv_realloc_core*(p: pointer; new_size: csize_t): pointer {.cdecl,
    importc: "lv_realloc_core".}
proc lv_mem_monitor_core*(mon_p: ptr lv_mem_monitor_t): void {.cdecl,
    importc: "lv_mem_monitor_core".}
proc lv_mem_test_core*(): lv_result_t {.cdecl, importc: "lv_mem_test_core".}
proc lv_mem_test*(): lv_result_t {.cdecl, importc: "lv_mem_test".}
proc lv_mem_monitor*(mon_p: ptr lv_mem_monitor_t): void {.cdecl,
    importc: "lv_mem_monitor".}
proc lv_snprintf*(buffer: cstring; count: csize_t; format: cstring): cint {.
    cdecl, varargs, importc: "lv_snprintf".}
proc lv_vsnprintf*(buffer: cstring; count: csize_t; format: cstring): cint {.
    cdecl, varargs, importc: "lv_vsnprintf".}
proc lv_log_register_print_cb*(print_cb: lv_log_print_g_cb_t): void {.cdecl,
    importc: "lv_log_register_print_cb".}
proc lv_log*(format: cstring): void {.cdecl, varargs, importc: "lv_log".}
proc lv_log_add*(level: lv_log_level_t; file: cstring; line: cint;
                 func_arg: cstring; format: cstring): void {.cdecl, varargs,
    importc: "lv_log_add".}
proc lv_tick_inc*(tick_period: uint32): void {.cdecl, importc: "lv_tick_inc".}
proc lv_tick_get*(): uint32 {.cdecl, importc: "lv_tick_get".}
proc lv_tick_elaps*(prev_tick: uint32): uint32 {.cdecl, importc: "lv_tick_elaps".}
proc lv_delay_ms*(ms: uint32): void {.cdecl, importc: "lv_delay_ms".}
proc lv_tick_set_cb*(cb: lv_tick_get_cb_t): void {.cdecl,
    importc: "lv_tick_set_cb".}
proc lv_delay_set_cb*(cb: lv_delay_cb_t): void {.cdecl,
    importc: "lv_delay_set_cb".}
proc lv_ll_clear_custom*(ll_p: ptr lv_ll_t;
                         cleanup: proc (a0: pointer): void {.cdecl.}): void {.
    cdecl, importc: "lv_ll_clear_custom".}
proc lv_timer_handler*(): uint32 {.cdecl, importc: "lv_timer_handler".}
proc lv_timer_handler_run_in_period*(period: uint32): uint32 {.cdecl,
    importc: "lv_timer_handler_run_in_period".}
proc lv_timer_periodic_handler*(): void {.cdecl,
    importc: "lv_timer_periodic_handler".}
proc lv_timer_handler_set_resume_cb*(cb: lv_timer_handler_resume_cb_t;
                                     data: pointer): void {.cdecl,
    importc: "lv_timer_handler_set_resume_cb".}
proc lv_timer_create_basic*(): ptr lv_timer_t {.cdecl,
    importc: "lv_timer_create_basic".}
proc lv_timer_create*(timer_xcb: lv_timer_cb_t; period: uint32;
                      user_data: pointer): ptr lv_timer_t {.cdecl,
    importc: "lv_timer_create".}
proc lv_timer_pause*(timer: ptr lv_timer_t): void {.cdecl,
    importc: "lv_timer_pause".}
proc lv_timer_resume*(timer: ptr lv_timer_t): void {.cdecl,
    importc: "lv_timer_resume".}
proc lv_timer_set_cb*(timer: ptr lv_timer_t; timer_cb: lv_timer_cb_t): void {.
    cdecl, importc: "lv_timer_set_cb".}
proc lv_timer_set_period*(timer: ptr lv_timer_t; period: uint32): void {.cdecl,
    importc: "lv_timer_set_period".}
proc lv_timer_ready*(timer: ptr lv_timer_t): void {.cdecl,
    importc: "lv_timer_ready".}
proc lv_timer_set_repeat_count*(timer: ptr lv_timer_t; repeat_count: int32): void {.
    cdecl, importc: "lv_timer_set_repeat_count".}
proc lv_timer_set_auto_delete*(timer: ptr lv_timer_t; auto_delete: bool): void {.
    cdecl, importc: "lv_timer_set_auto_delete".}
proc lv_timer_set_user_data*(timer: ptr lv_timer_t; user_data: pointer): void {.
    cdecl, importc: "lv_timer_set_user_data".}
proc lv_timer_reset*(timer: ptr lv_timer_t): void {.cdecl,
    importc: "lv_timer_reset".}
proc lv_timer_enable*(en: bool): void {.cdecl, importc: "lv_timer_enable".}
proc lv_timer_get_time_until_next*(): uint32 {.cdecl,
    importc: "lv_timer_get_time_until_next".}
proc lv_timer_get_next*(timer: ptr lv_timer_t): ptr lv_timer_t {.cdecl,
    importc: "lv_timer_get_next".}
proc lv_timer_get_user_data*(timer: ptr lv_timer_t): pointer {.cdecl,
    importc: "lv_timer_get_user_data".}
proc lv_timer_get_paused*(timer: ptr lv_timer_t): bool {.cdecl,
    importc: "lv_timer_get_paused".}
proc lv_trigo_sin*(angle: int16): int32 {.cdecl, importc: "lv_trigo_sin".}
proc lv_trigo_cos*(angle: int16): int32 {.cdecl, importc: "lv_trigo_cos".}
proc lv_cubic_bezier*(x: int32; x1: int32; y1: int32; x2: int32; y2: int32): int32 {.
    cdecl, importc: "lv_cubic_bezier".}
proc lv_bezier3*(t: int32; u0: int32; u1: uint32; u2: int32; u3: int32): int32 {.
    cdecl, importc: "lv_bezier3".}
proc lv_atan2*(x: cint; y: cint): uint16 {.cdecl, importc: "lv_atan2".}
proc lv_sqrt*(x: uint32; q: ptr lv_sqrt_res_t; mask: uint32): void {.cdecl,
    importc: "lv_sqrt".}
proc lv_sqrt32*(x: uint32): int32 {.cdecl, importc: "lv_sqrt32".}
proc lv_sqr*(x: int32): int32 {.cdecl, importc: "lv_sqr".}
proc lv_pow*(base: int64; exp: int8): int64 {.cdecl, importc: "lv_pow".}
proc lv_map*(x: int32; min_in: int32; max_in: int32; min_out: int32;
             max_out: int32): int32 {.cdecl, importc: "lv_map".}
proc lv_rand_set_seed*(seed: uint32): void {.cdecl, importc: "lv_rand_set_seed".}
proc lv_rand*(min: uint32; max: uint32): uint32 {.cdecl, importc: "lv_rand".}
proc lv_array_init*(array_arg: ptr lv_array_t; capacity: uint32;
                    element_size: uint32): void {.cdecl,
    importc: "lv_array_init".}
proc lv_array_resize*(array_arg: ptr lv_array_t; new_capacity: uint32): void {.
    cdecl, importc: "lv_array_resize".}
proc lv_array_deinit*(array_arg: ptr lv_array_t): void {.cdecl,
    importc: "lv_array_deinit".}
proc lv_array_size*(array_arg: ptr lv_array_t): uint32 {.cdecl,
    importc: "lv_array_size".}
proc lv_array_capacity*(array_arg: ptr lv_array_t): uint32 {.cdecl,
    importc: "lv_array_capacity".}
proc lv_array_is_empty*(array_arg: ptr lv_array_t): bool {.cdecl,
    importc: "lv_array_is_empty".}
proc lv_array_is_full*(array_arg: ptr lv_array_t): bool {.cdecl,
    importc: "lv_array_is_full".}
proc lv_array_copy*(target: ptr lv_array_t; source: ptr lv_array_t): void {.
    cdecl, importc: "lv_array_copy".}
proc lv_array_clear*(array_arg: ptr lv_array_t): void {.cdecl,
    importc: "lv_array_clear".}
proc lv_array_shrink*(array_arg: ptr lv_array_t): void {.cdecl,
    importc: "lv_array_shrink".}
proc lv_array_remove*(array_arg: ptr lv_array_t; index: uint32): lv_result_t {.
    cdecl, importc: "lv_array_remove".}
proc lv_array_erase*(array_arg: ptr lv_array_t; start: uint32; end_arg: uint32): lv_result_t {.
    cdecl, importc: "lv_array_erase".}
proc lv_array_concat*(array_arg: ptr lv_array_t; other: ptr lv_array_t): lv_result_t {.
    cdecl, importc: "lv_array_concat".}
proc lv_array_push_back*(array_arg: ptr lv_array_t; element: pointer): lv_result_t {.
    cdecl, importc: "lv_array_push_back".}
proc lv_array_assign*(array_arg: ptr lv_array_t; index: uint32; value: pointer): lv_result_t {.
    cdecl, importc: "lv_array_assign".}
proc lv_array_at*(array_arg: ptr lv_array_t; index: uint32): pointer {.cdecl,
    importc: "lv_array_at".}
proc lv_array_front*(array_arg: ptr lv_array_t): pointer {.cdecl,
    importc: "lv_array_front".}
proc lv_array_back*(array_arg: ptr lv_array_t): pointer {.cdecl,
    importc: "lv_array_back".}
proc lv_async_call*(async_xcb: lv_async_cb_t; user_data: pointer): lv_result_t {.
    cdecl, importc: "lv_async_call".}
proc lv_async_call_cancel*(async_xcb: lv_async_cb_t; user_data: pointer): lv_result_t {.
    cdecl, importc: "lv_async_call_cancel".}
proc lv_anim_init*(a: ptr lv_anim_t): void {.cdecl, importc: "lv_anim_init".}
proc lv_anim_set_var*(a: ptr lv_anim_t; var_arg: pointer): void {.cdecl,
    importc: "lv_anim_set_var".}
proc lv_anim_set_exec_cb*(a: ptr lv_anim_t; exec_cb: lv_anim_exec_xcb_t): void {.
    cdecl, importc: "lv_anim_set_exec_cb".}
proc lv_anim_set_duration*(a: ptr lv_anim_t; duration: uint32): void {.cdecl,
    importc: "lv_anim_set_duration".}
proc lv_anim_set_time*(a: ptr lv_anim_t; duration: uint32): void {.cdecl,
    importc: "lv_anim_set_time".}
proc lv_anim_set_delay*(a: ptr lv_anim_t; delay: uint32): void {.cdecl,
    importc: "lv_anim_set_delay".}
proc lv_anim_set_values*(a: ptr lv_anim_t; start: int32; end_arg: int32): void {.
    cdecl, importc: "lv_anim_set_values".}
proc lv_anim_set_custom_exec_cb*(a: ptr lv_anim_t;
                                 exec_cb: lv_anim_custom_exec_cb_t): void {.
    cdecl, importc: "lv_anim_set_custom_exec_cb".}
proc lv_anim_set_path_cb*(a: ptr lv_anim_t; path_cb: lv_anim_path_cb_t): void {.
    cdecl, importc: "lv_anim_set_path_cb".}
proc lv_anim_set_start_cb*(a: ptr lv_anim_t; start_cb: lv_anim_start_cb_t): void {.
    cdecl, importc: "lv_anim_set_start_cb".}
proc lv_anim_set_get_value_cb*(a: ptr lv_anim_t;
                               get_value_cb: lv_anim_get_value_cb_t): void {.
    cdecl, importc: "lv_anim_set_get_value_cb".}
proc lv_anim_set_deleted_cb*(a: ptr lv_anim_t; deleted_cb: lv_anim_deleted_cb_t): void {.
    cdecl, importc: "lv_anim_set_deleted_cb".}
proc lv_anim_set_playback_duration*(a: ptr lv_anim_t; duration: uint32): void {.
    cdecl, importc: "lv_anim_set_playback_duration".}
proc lv_anim_set_playback_time*(a: ptr lv_anim_t; duration: uint32): void {.
    cdecl, importc: "lv_anim_set_playback_time".}
proc lv_anim_set_playback_delay*(a: ptr lv_anim_t; delay: uint32): void {.cdecl,
    importc: "lv_anim_set_playback_delay".}
proc lv_anim_set_repeat_count*(a: ptr lv_anim_t; cnt: uint32): void {.cdecl,
    importc: "lv_anim_set_repeat_count".}
proc lv_anim_set_repeat_delay*(a: ptr lv_anim_t; delay: uint32): void {.cdecl,
    importc: "lv_anim_set_repeat_delay".}
proc lv_anim_set_early_apply*(a: ptr lv_anim_t; en: bool): void {.cdecl,
    importc: "lv_anim_set_early_apply".}
proc lv_anim_set_user_data*(a: ptr lv_anim_t; user_data: pointer): void {.cdecl,
    importc: "lv_anim_set_user_data".}
proc lv_anim_set_bezier3_param*(a: ptr lv_anim_t; x1: int16; y1: int16;
                                x2: int16; y2: int16): void {.cdecl,
    importc: "lv_anim_set_bezier3_param".}
proc lv_anim_start*(a: ptr lv_anim_t): ptr lv_anim_t {.cdecl,
    importc: "lv_anim_start".}
proc lv_anim_get_delay*(a: ptr lv_anim_t): uint32 {.cdecl,
    importc: "lv_anim_get_delay".}
proc lv_anim_get_playtime*(a: ptr lv_anim_t): uint32 {.cdecl,
    importc: "lv_anim_get_playtime".}
proc lv_anim_get_time*(a: ptr lv_anim_t): uint32 {.cdecl,
    importc: "lv_anim_get_time".}
proc lv_anim_get_repeat_count*(a: ptr lv_anim_t): uint32 {.cdecl,
    importc: "lv_anim_get_repeat_count".}
proc lv_anim_get_user_data*(a: ptr lv_anim_t): pointer {.cdecl,
    importc: "lv_anim_get_user_data".}
proc lv_anim_get*(var_arg: pointer; exec_cb: lv_anim_exec_xcb_t): ptr lv_anim_t {.
    cdecl, importc: "lv_anim_get".}
proc lv_anim_get_timer*(): ptr lv_timer_t {.cdecl, importc: "lv_anim_get_timer".}
proc lv_anim_custom_delete*(a: ptr lv_anim_t; exec_cb: lv_anim_custom_exec_cb_t): bool {.
    cdecl, importc: "lv_anim_custom_delete".}
proc lv_anim_custom_get*(a: ptr lv_anim_t; exec_cb: lv_anim_custom_exec_cb_t): ptr lv_anim_t {.
    cdecl, importc: "lv_anim_custom_get".}
proc lv_anim_count_running*(): uint16 {.cdecl, importc: "lv_anim_count_running".}
proc lv_anim_speed*(speed: uint32): uint32 {.cdecl, importc: "lv_anim_speed".}
proc lv_anim_speed_clamped*(speed: uint32; min_time: uint32; max_time: uint32): uint32 {.
    cdecl, importc: "lv_anim_speed_clamped".}
proc lv_anim_speed_to_time*(speed: uint32; start: int32; end_arg: int32): uint32 {.
    cdecl, importc: "lv_anim_speed_to_time".}
proc lv_anim_refr_now*(): void {.cdecl, importc: "lv_anim_refr_now".}
proc lv_anim_path_linear*(a: ptr lv_anim_t): int32 {.cdecl,
    importc: "lv_anim_path_linear".}
proc lv_anim_path_ease_in*(a: ptr lv_anim_t): int32 {.cdecl,
    importc: "lv_anim_path_ease_in".}
proc lv_anim_path_ease_out*(a: ptr lv_anim_t): int32 {.cdecl,
    importc: "lv_anim_path_ease_out".}
proc lv_anim_path_ease_in_out*(a: ptr lv_anim_t): int32 {.cdecl,
    importc: "lv_anim_path_ease_in_out".}
proc lv_anim_path_overshoot*(a: ptr lv_anim_t): int32 {.cdecl,
    importc: "lv_anim_path_overshoot".}
proc lv_anim_path_bounce*(a: ptr lv_anim_t): int32 {.cdecl,
    importc: "lv_anim_path_bounce".}
proc lv_anim_path_step*(a: ptr lv_anim_t): int32 {.cdecl,
    importc: "lv_anim_path_step".}
proc lv_anim_path_custom_bezier3*(a: ptr lv_anim_t): int32 {.cdecl,
    importc: "lv_anim_path_custom_bezier3".}
proc lv_anim_timeline_create*(): ptr lv_anim_timeline_t {.cdecl,
    importc: "lv_anim_timeline_create".}
proc lv_anim_timeline_delete*(at: ptr lv_anim_timeline_t): void {.cdecl,
    importc: "lv_anim_timeline_delete".}
proc lv_anim_timeline_add*(at: ptr lv_anim_timeline_t; start_time: uint32;
                           a: ptr lv_anim_t): void {.cdecl,
    importc: "lv_anim_timeline_add".}
proc lv_anim_timeline_start*(at: ptr lv_anim_timeline_t): uint32 {.cdecl,
    importc: "lv_anim_timeline_start".}
proc lv_anim_timeline_pause*(at: ptr lv_anim_timeline_t): void {.cdecl,
    importc: "lv_anim_timeline_pause".}
proc lv_anim_timeline_set_reverse*(at: ptr lv_anim_timeline_t; reverse: bool): void {.
    cdecl, importc: "lv_anim_timeline_set_reverse".}
proc lv_anim_timeline_set_repeat_count*(at: ptr lv_anim_timeline_t; cnt: uint32): void {.
    cdecl, importc: "lv_anim_timeline_set_repeat_count".}
proc lv_anim_timeline_set_repeat_delay*(at: ptr lv_anim_timeline_t;
                                        delay: uint32): void {.cdecl,
    importc: "lv_anim_timeline_set_repeat_delay".}
proc lv_anim_timeline_set_progress*(at: ptr lv_anim_timeline_t; progress: uint16): void {.
    cdecl, importc: "lv_anim_timeline_set_progress".}
proc lv_anim_timeline_get_playtime*(at: ptr lv_anim_timeline_t): uint32 {.cdecl,
    importc: "lv_anim_timeline_get_playtime".}
proc lv_anim_timeline_get_reverse*(at: ptr lv_anim_timeline_t): bool {.cdecl,
    importc: "lv_anim_timeline_get_reverse".}
proc lv_anim_timeline_get_progress*(at: ptr lv_anim_timeline_t): uint16 {.cdecl,
    importc: "lv_anim_timeline_get_progress".}
proc lv_anim_timeline_get_repeat_count*(at: ptr lv_anim_timeline_t): uint32 {.
    cdecl, importc: "lv_anim_timeline_get_repeat_count".}
proc lv_anim_timeline_get_repeat_delay*(at: ptr lv_anim_timeline_t): uint32 {.
    cdecl, importc: "lv_anim_timeline_get_repeat_delay".}
proc lv_rb_init*(tree: ptr lv_rb_t; compare: lv_rb_compare_t; node_size: csize_t): bool {.
    cdecl, importc: "lv_rb_init".}
proc lv_rb_insert*(tree: ptr lv_rb_t; key: pointer): ptr lv_rb_node_t {.cdecl,
    importc: "lv_rb_insert".}
proc lv_rb_find*(tree: ptr lv_rb_t; key: pointer): ptr lv_rb_node_t {.cdecl,
    importc: "lv_rb_find".}
proc lv_rb_remove_node*(tree: ptr lv_rb_t; node: ptr lv_rb_node_t): pointer {.
    cdecl, importc: "lv_rb_remove_node".}
proc lv_rb_remove*(tree: ptr lv_rb_t; key: pointer): pointer {.cdecl,
    importc: "lv_rb_remove".}
proc lv_rb_drop_node*(tree: ptr lv_rb_t; node: ptr lv_rb_node_t): bool {.cdecl,
    importc: "lv_rb_drop_node".}
proc lv_rb_drop*(tree: ptr lv_rb_t; key: pointer): bool {.cdecl,
    importc: "lv_rb_drop".}
proc lv_rb_minimum*(node: ptr lv_rb_t): ptr lv_rb_node_t {.cdecl,
    importc: "lv_rb_minimum".}
proc lv_rb_maximum*(node: ptr lv_rb_t): ptr lv_rb_node_t {.cdecl,
    importc: "lv_rb_maximum".}
proc lv_rb_minimum_from*(node: ptr lv_rb_node_t): ptr lv_rb_node_t {.cdecl,
    importc: "lv_rb_minimum_from".}
proc lv_rb_maximum_from*(node: ptr lv_rb_node_t): ptr lv_rb_node_t {.cdecl,
    importc: "lv_rb_maximum_from".}
proc lv_rb_destroy*(tree: ptr lv_rb_t): void {.cdecl, importc: "lv_rb_destroy".}
proc lv_area_set*(area_p: ptr lv_area_t; x1: int32; y1: int32; x2: int32;
                  y2: int32): void {.cdecl, importc: "lv_area_set".}
proc lv_area_copy*(dest: ptr lv_area_t; src: ptr lv_area_t): void {.cdecl,
    importc: "lv_area_copy".}
proc lv_area_get_width*(area_p: ptr lv_area_t): int32 {.cdecl,
    importc: "lv_area_get_width".}
proc lv_area_get_height*(area_p: ptr lv_area_t): int32 {.cdecl,
    importc: "lv_area_get_height".}
proc lv_area_set_width*(area_p: ptr lv_area_t; w: int32): void {.cdecl,
    importc: "lv_area_set_width".}
proc lv_area_set_height*(area_p: ptr lv_area_t; h: int32): void {.cdecl,
    importc: "lv_area_set_height".}
proc lv_area_get_size*(area_p: ptr lv_area_t): uint32 {.cdecl,
    importc: "lv_area_get_size".}
proc lv_area_increase*(area: ptr lv_area_t; w_extra: int32; h_extra: int32): void {.
    cdecl, importc: "lv_area_increase".}
proc lv_area_move*(area: ptr lv_area_t; x_ofs: int32; y_ofs: int32): void {.
    cdecl, importc: "lv_area_move".}
proc lv_area_align*(base: ptr lv_area_t; to_align: ptr lv_area_t;
                    align: lv_align_t; ofs_x: int32; ofs_y: int32): void {.
    cdecl, importc: "lv_area_align".}
proc lv_point_transform*(point: ptr lv_point_t; angle: int32; scale_x: int32;
                         scale_y: int32; pivot: ptr lv_point_t; zoom_first: bool): void {.
    cdecl, importc: "lv_point_transform".}
proc lv_point_array_transform*(points: ptr lv_point_t; count: csize_t;
                               angle: int32; scale_x: int32; scale_y: int32;
                               pivot: ptr lv_point_t; zoom_first: bool): void {.
    cdecl, importc: "lv_point_array_transform".}
proc lv_point_from_precise*(p: ptr lv_point_precise_t): lv_point_t {.cdecl,
    importc: "lv_point_from_precise".}
proc lv_point_to_precise*(p: ptr lv_point_t): lv_point_precise_t {.cdecl,
    importc: "lv_point_to_precise".}
proc lv_point_set*(p: ptr lv_point_t; x: int32; y: int32): void {.cdecl,
    importc: "lv_point_set".}
proc lv_point_precise_set*(p: ptr lv_point_precise_t; x: lv_value_precise_t;
                           y: lv_value_precise_t): void {.cdecl,
    importc: "lv_point_precise_set".}
proc lv_point_swap*(p1: ptr lv_point_t; p2: ptr lv_point_t): void {.cdecl,
    importc: "lv_point_swap".}
proc lv_point_precise_swap*(p1: ptr lv_point_precise_t;
                            p2: ptr lv_point_precise_t): void {.cdecl,
    importc: "lv_point_precise_swap".}
proc lv_pct*(x: int32): int32 {.cdecl, importc: "lv_pct".}
proc lv_pct_to_px*(v: int32; base: int32): int32 {.cdecl,
    importc: "lv_pct_to_px".}
proc lv_color_format_get_bpp*(cf: lv_color_format_t): uint8 {.cdecl,
    importc: "lv_color_format_get_bpp".}
proc lv_color_format_get_size*(cf: lv_color_format_t): uint8 {.cdecl,
    importc: "lv_color_format_get_size".}
proc lv_color_format_has_alpha*(src_cf: lv_color_format_t): bool {.cdecl,
    importc: "lv_color_format_has_alpha".}
proc lv_color_to_32*(color: lv_color_t; opa: lv_opa_t): lv_color32_t {.cdecl,
    importc: "lv_color_to_32".}
proc lv_color_to_int*(c: lv_color_t): uint32 {.cdecl, importc: "lv_color_to_int".}
proc lv_color_eq*(c1: lv_color_t; c2: lv_color_t): bool {.cdecl,
    importc: "lv_color_eq".}
proc lv_color32_eq*(c1: lv_color32_t; c2: lv_color32_t): bool {.cdecl,
    importc: "lv_color32_eq".}
proc lv_color_hex*(c: uint32): lv_color_t {.cdecl, importc: "lv_color_hex".}
proc lv_color_make*(r: uint8; g: uint8; b: uint8): lv_color_t {.cdecl,
    importc: "lv_color_make".}
proc lv_color32_make*(r: uint8; g: uint8; b: uint8; a: uint8): lv_color32_t {.
    cdecl, importc: "lv_color32_make".}
proc lv_color_hex3*(c: uint32): lv_color_t {.cdecl, importc: "lv_color_hex3".}
proc lv_color_to_u16*(color: lv_color_t): uint16 {.cdecl,
    importc: "lv_color_to_u16".}
proc lv_color_to_u32*(color: lv_color_t): uint32 {.cdecl,
    importc: "lv_color_to_u32".}
proc lv_color_16_16_mix*(c1: uint16; c2: uint16; mix: uint8): uint16 {.cdecl,
    importc: "lv_color_16_16_mix".}
proc lv_color_lighten*(c: lv_color_t; lvl: lv_opa_t): lv_color_t {.cdecl,
    importc: "lv_color_lighten".}
proc lv_color_darken*(c: lv_color_t; lvl: lv_opa_t): lv_color_t {.cdecl,
    importc: "lv_color_darken".}
proc lv_color_hsv_to_rgb*(h: uint16; s: uint8; v: uint8): lv_color_t {.cdecl,
    importc: "lv_color_hsv_to_rgb".}
proc lv_color_rgb_to_hsv*(r8: uint8; g8: uint8; b8: uint8): lv_color_hsv_t {.
    cdecl, importc: "lv_color_rgb_to_hsv".}
proc lv_color_to_hsv*(color: lv_color_t): lv_color_hsv_t {.cdecl,
    importc: "lv_color_to_hsv".}
proc lv_color_white*(): lv_color_t {.cdecl, importc: "lv_color_white".}
proc lv_color_black*(): lv_color_t {.cdecl, importc: "lv_color_black".}
proc lv_color_premultiply*(c: ptr lv_color32_t): void {.cdecl,
    importc: "lv_color_premultiply".}
proc lv_color16_premultiply*(c: ptr lv_color16_t; a: lv_opa_t): void {.cdecl,
    importc: "lv_color16_premultiply".}
proc lv_color_luminance*(c: lv_color_t): uint8 {.cdecl,
    importc: "lv_color_luminance".}
proc lv_color16_luminance*(c: lv_color16_t): uint8 {.cdecl,
    importc: "lv_color16_luminance".}
proc lv_color24_luminance*(c: ptr uint8): uint8 {.cdecl,
    importc: "lv_color24_luminance".}
proc lv_color32_luminance*(c: lv_color32_t): uint8 {.cdecl,
    importc: "lv_color32_luminance".}
proc lv_palette_main*(p: lv_palette_t): lv_color_t {.cdecl,
    importc: "lv_palette_main".}
proc lv_palette_lighten*(p: lv_palette_t; lvl: uint8): lv_color_t {.cdecl,
    importc: "lv_palette_lighten".}
proc lv_palette_darken*(p: lv_palette_t; lvl: uint8): lv_color_t {.cdecl,
    importc: "lv_palette_darken".}
proc lv_color_mix*(c1: lv_color_t; c2: lv_color_t; mix: uint8): lv_color_t {.
    cdecl, importc: "lv_color_mix".}
proc lv_color_mix32*(fg: lv_color32_t; bg: lv_color32_t): lv_color32_t {.cdecl,
    importc: "lv_color_mix32".}
proc lv_color_brightness*(c: lv_color_t): uint8 {.cdecl,
    importc: "lv_color_brightness".}
proc lv_color_filter_dsc_init*(dsc: ptr lv_color_filter_dsc_t;
                               cb: lv_color_filter_cb_t): void {.cdecl,
    importc: "lv_color_filter_dsc_init".}
var lv_color_filter_shade* {.importc: "lv_color_filter_shade".}: lv_color_filter_dsc_t
proc lv_draw_buf_init_with_default_handlers*(
    handlers: ptr lv_draw_buf_handlers_t): void {.cdecl,
    importc: "lv_draw_buf_init_with_default_handlers".}
proc lv_draw_buf_handlers_init*(handlers: ptr lv_draw_buf_handlers_t;
                                buf_malloc_cb: lv_draw_buf_malloc_cb;
                                buf_free_cb: lv_draw_buf_free_cb;
                                align_pointer_cb: lv_draw_buf_align_cb;
    invalidate_cache_cb: lv_draw_buf_cache_operation_cb;
                                flush_cache_cb: lv_draw_buf_cache_operation_cb;
    width_to_stride_cb: lv_draw_buf_width_to_stride_cb): void {.cdecl,
    importc: "lv_draw_buf_handlers_init".}
proc lv_draw_buf_get_handlers*(): ptr lv_draw_buf_handlers_t {.cdecl,
    importc: "lv_draw_buf_get_handlers".}
proc lv_draw_buf_get_font_handlers*(): ptr lv_draw_buf_handlers_t {.cdecl,
    importc: "lv_draw_buf_get_font_handlers".}
proc lv_draw_buf_get_image_handlers*(): ptr lv_draw_buf_handlers_t {.cdecl,
    importc: "lv_draw_buf_get_image_handlers".}
proc lv_draw_buf_align*(buf: pointer; color_format: lv_color_format_t): pointer {.
    cdecl, importc: "lv_draw_buf_align".}
proc lv_draw_buf_invalidate_cache*(draw_buf: ptr lv_draw_buf_t;
                                   area: ptr lv_area_t): void {.cdecl,
    importc: "lv_draw_buf_invalidate_cache".}
proc lv_draw_buf_flush_cache*(draw_buf: ptr lv_draw_buf_t; area: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_buf_flush_cache".}
proc lv_draw_buf_width_to_stride*(w: uint32; color_format: lv_color_format_t): uint32 {.
    cdecl, importc: "lv_draw_buf_width_to_stride".}
proc lv_draw_buf_clear*(draw_buf: ptr lv_draw_buf_t; a: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_buf_clear".}
proc lv_draw_buf_copy*(dest: ptr lv_draw_buf_t; dest_area: ptr lv_area_t;
                       src: ptr lv_draw_buf_t; src_area: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_buf_copy".}
proc lv_draw_buf_create*(w: uint32; h: uint32; cf: lv_color_format_t;
                         stride: uint32): ptr lv_draw_buf_t {.cdecl,
    importc: "lv_draw_buf_create".}
proc lv_draw_buf_dup*(draw_buf: ptr lv_draw_buf_t): ptr lv_draw_buf_t {.cdecl,
    importc: "lv_draw_buf_dup".}
proc lv_draw_buf_init*(draw_buf: ptr lv_draw_buf_t; w: uint32; h: uint32;
                       cf: lv_color_format_t; stride: uint32; data: pointer;
                       data_size: uint32): lv_result_t {.cdecl,
    importc: "lv_draw_buf_init".}
proc lv_draw_buf_reshape*(draw_buf: ptr lv_draw_buf_t; cf: lv_color_format_t;
                          w: uint32; h: uint32; stride: uint32): ptr lv_draw_buf_t {.
    cdecl, importc: "lv_draw_buf_reshape".}
proc lv_draw_buf_destroy*(draw_buf: ptr lv_draw_buf_t): void {.cdecl,
    importc: "lv_draw_buf_destroy".}
proc lv_draw_buf_goto_xy*(buf: ptr lv_draw_buf_t; x: uint32; y: uint32): pointer {.
    cdecl, importc: "lv_draw_buf_goto_xy".}
proc lv_draw_buf_adjust_stride*(src: ptr lv_draw_buf_t; stride: uint32): lv_result_t {.
    cdecl, importc: "lv_draw_buf_adjust_stride".}
proc lv_draw_buf_premultiply*(draw_buf: ptr lv_draw_buf_t): lv_result_t {.cdecl,
    importc: "lv_draw_buf_premultiply".}
proc lv_draw_buf_has_flag*(draw_buf: ptr lv_draw_buf_t; flag: lv_image_flags_t): bool {.
    cdecl, importc: "lv_draw_buf_has_flag".}
proc lv_draw_buf_set_flag*(draw_buf: ptr lv_draw_buf_t; flag: lv_image_flags_t): void {.
    cdecl, importc: "lv_draw_buf_set_flag".}
proc lv_draw_buf_clear_flag*(draw_buf: ptr lv_draw_buf_t; flag: lv_image_flags_t): void {.
    cdecl, importc: "lv_draw_buf_clear_flag".}
proc lv_draw_buf_from_image*(buf: ptr lv_draw_buf_t; img: ptr lv_image_dsc_t): void {.
    cdecl, importc: "lv_draw_buf_from_image".}
proc lv_draw_buf_to_image*(buf: ptr lv_draw_buf_t; img: ptr lv_image_dsc_t): void {.
    cdecl, importc: "lv_draw_buf_to_image".}
proc lv_draw_buf_set_palette*(draw_buf: ptr lv_draw_buf_t; index: uint8;
                              color: lv_color32_t): void {.cdecl,
    importc: "lv_draw_buf_set_palette".}
proc lv_image_buf_set_palette*(dsc: ptr lv_image_dsc_t; id: uint8;
                               c: lv_color32_t): void {.cdecl,
    importc: "lv_image_buf_set_palette".}
proc lv_image_buf_free*(dsc: ptr lv_image_dsc_t): void {.cdecl,
    importc: "lv_image_buf_free".}
proc lv_draw_buf_save_to_file*(draw_buf: ptr lv_draw_buf_t; path: cstring): lv_result_t {.
    cdecl, importc: "lv_draw_buf_save_to_file".}
proc lv_thread_init*(thread: ptr lv_thread_t; prio: lv_thread_prio_t;
                     callback: proc (a0: pointer): void {.cdecl.};
                     stack_size: csize_t; user_data: pointer): lv_result_t {.
    cdecl, importc: "lv_thread_init".}
proc lv_thread_delete*(thread: ptr lv_thread_t): lv_result_t {.cdecl,
    importc: "lv_thread_delete".}
proc lv_mutex_init*(mutex: ptr lv_mutex_t): lv_result_t {.cdecl,
    importc: "lv_mutex_init".}
proc lv_mutex_lock*(mutex: ptr lv_mutex_t): lv_result_t {.cdecl,
    importc: "lv_mutex_lock".}
proc lv_mutex_lock_isr*(mutex: ptr lv_mutex_t): lv_result_t {.cdecl,
    importc: "lv_mutex_lock_isr".}
proc lv_mutex_unlock*(mutex: ptr lv_mutex_t): lv_result_t {.cdecl,
    importc: "lv_mutex_unlock".}
proc lv_mutex_delete*(mutex: ptr lv_mutex_t): lv_result_t {.cdecl,
    importc: "lv_mutex_delete".}
proc lv_thread_sync_init*(sync: ptr lv_thread_sync_t): lv_result_t {.cdecl,
    importc: "lv_thread_sync_init".}
proc lv_thread_sync_wait*(sync: ptr lv_thread_sync_t): lv_result_t {.cdecl,
    importc: "lv_thread_sync_wait".}
proc lv_thread_sync_signal*(sync: ptr lv_thread_sync_t): lv_result_t {.cdecl,
    importc: "lv_thread_sync_signal".}
proc lv_thread_sync_signal_isr*(sync: ptr lv_thread_sync_t): lv_result_t {.
    cdecl, importc: "lv_thread_sync_signal_isr".}
proc lv_thread_sync_delete*(sync: ptr lv_thread_sync_t): lv_result_t {.cdecl,
    importc: "lv_thread_sync_delete".}
proc lv_lock*(): void {.cdecl, importc: "lv_lock".}
proc lv_lock_isr*(): lv_result_t {.cdecl, importc: "lv_lock_isr".}
proc lv_unlock*(): void {.cdecl, importc: "lv_unlock".}
proc lv_cache_entry_get_size*(node_size: uint32): uint32 {.cdecl,
    importc: "lv_cache_entry_get_size".}
proc lv_cache_entry_get_ref*(entry: ptr lv_cache_entry_t): int32 {.cdecl,
    importc: "lv_cache_entry_get_ref".}
proc lv_cache_entry_get_node_size*(entry: ptr lv_cache_entry_t): uint32 {.cdecl,
    importc: "lv_cache_entry_get_node_size".}
proc lv_cache_entry_is_invalid*(entry: ptr lv_cache_entry_t): bool {.cdecl,
    importc: "lv_cache_entry_is_invalid".}
proc lv_cache_entry_get_data*(entry: ptr lv_cache_entry_t): pointer {.cdecl,
    importc: "lv_cache_entry_get_data".}
proc lv_cache_entry_get_cache*(entry: ptr lv_cache_entry_t): ptr lv_cache_t {.
    cdecl, importc: "lv_cache_entry_get_cache".}
proc lv_cache_entry_get_entry*(data: pointer; node_size: uint32): ptr lv_cache_entry_t {.
    cdecl, importc: "lv_cache_entry_get_entry".}
proc lv_cache_entry_alloc*(node_size: uint32; cache: ptr lv_cache_t): ptr lv_cache_entry_t {.
    cdecl, importc: "lv_cache_entry_alloc".}
proc lv_cache_entry_init*(entry: ptr lv_cache_entry_t; cache: ptr lv_cache_t;
                          node_size: uint32): void {.cdecl,
    importc: "lv_cache_entry_init".}
proc lv_cache_entry_delete*(entry: ptr lv_cache_entry_t): void {.cdecl,
    importc: "lv_cache_entry_delete".}
var lv_cache_class_lru_rb_count* {.importc: "lv_cache_class_lru_rb_count".}: lv_cache_class_t
var lv_cache_class_lru_rb_size* {.importc: "lv_cache_class_lru_rb_size".}: lv_cache_class_t
proc lv_image_cache_init*(size: uint32): lv_result_t {.cdecl,
    importc: "lv_image_cache_init".}
proc lv_image_cache_resize*(new_size: uint32; evict_now: bool): void {.cdecl,
    importc: "lv_image_cache_resize".}
proc lv_image_cache_drop*(src: pointer): void {.cdecl,
    importc: "lv_image_cache_drop".}
proc lv_image_cache_is_enabled*(): bool {.cdecl,
    importc: "lv_image_cache_is_enabled".}
proc lv_image_header_cache_init*(count: uint32): lv_result_t {.cdecl,
    importc: "lv_image_header_cache_init".}
proc lv_image_header_cache_resize*(count: uint32; evict_now: bool): void {.
    cdecl, importc: "lv_image_header_cache_resize".}
proc lv_image_header_cache_drop*(src: pointer): void {.cdecl,
    importc: "lv_image_header_cache_drop".}
proc lv_image_header_cache_is_enabled*(): bool {.cdecl,
    importc: "lv_image_header_cache_is_enabled".}
proc lv_cache_create*(cache_class: ptr lv_cache_class_t; node_size: csize_t;
                      max_size: csize_t; ops: lv_cache_ops_t): ptr lv_cache_t {.
    cdecl, importc: "lv_cache_create".}
proc lv_cache_destroy*(cache: ptr lv_cache_t; user_data: pointer): void {.cdecl,
    importc: "lv_cache_destroy".}
proc lv_cache_acquire*(cache: ptr lv_cache_t; key: pointer; user_data: pointer): ptr lv_cache_entry_t {.
    cdecl, importc: "lv_cache_acquire".}
proc lv_cache_acquire_or_create*(cache: ptr lv_cache_t; key: pointer;
                                 user_data: pointer): ptr lv_cache_entry_t {.
    cdecl, importc: "lv_cache_acquire_or_create".}
proc lv_cache_add*(cache: ptr lv_cache_t; key: pointer; user_data: pointer): ptr lv_cache_entry_t {.
    cdecl, importc: "lv_cache_add".}
proc lv_cache_release*(cache: ptr lv_cache_t; entry: ptr lv_cache_entry_t;
                       user_data: pointer): void {.cdecl,
    importc: "lv_cache_release".}
proc lv_cache_reserve*(cache: ptr lv_cache_t; reserved_size: uint32;
                       user_data: pointer): void {.cdecl,
    importc: "lv_cache_reserve".}
proc lv_cache_drop*(cache: ptr lv_cache_t; key: pointer; user_data: pointer): void {.
    cdecl, importc: "lv_cache_drop".}
proc lv_cache_drop_all*(cache: ptr lv_cache_t; user_data: pointer): void {.
    cdecl, importc: "lv_cache_drop_all".}
proc lv_cache_evict_one*(cache: ptr lv_cache_t; user_data: pointer): bool {.
    cdecl, importc: "lv_cache_evict_one".}
proc lv_cache_set_max_size*(cache: ptr lv_cache_t; max_size: csize_t;
                            user_data: pointer): void {.cdecl,
    importc: "lv_cache_set_max_size".}
proc lv_cache_get_max_size*(cache: ptr lv_cache_t; user_data: pointer): csize_t {.
    cdecl, importc: "lv_cache_get_max_size".}
proc lv_cache_get_size*(cache: ptr lv_cache_t; user_data: pointer): csize_t {.
    cdecl, importc: "lv_cache_get_size".}
proc lv_cache_get_free_size*(cache: ptr lv_cache_t; user_data: pointer): csize_t {.
    cdecl, importc: "lv_cache_get_free_size".}
proc lv_cache_is_enabled*(cache: ptr lv_cache_t): bool {.cdecl,
    importc: "lv_cache_is_enabled".}
proc lv_cache_set_compare_cb*(cache: ptr lv_cache_t;
                              compare_cb: lv_cache_compare_cb_t;
                              user_data: pointer): void {.cdecl,
    importc: "lv_cache_set_compare_cb".}
proc lv_cache_set_create_cb*(cache: ptr lv_cache_t;
                             alloc_cb: lv_cache_create_cb_t; user_data: pointer): void {.
    cdecl, importc: "lv_cache_set_create_cb".}
proc lv_cache_set_free_cb*(cache: ptr lv_cache_t; free_cb: lv_cache_free_cb_t;
                           user_data: pointer): void {.cdecl,
    importc: "lv_cache_set_free_cb".}
proc lv_cache_set_name*(cache: ptr lv_cache_t; name: cstring): void {.cdecl,
    importc: "lv_cache_set_name".}
proc lv_cache_get_name*(cache: ptr lv_cache_t): cstring {.cdecl,
    importc: "lv_cache_get_name".}
proc lv_font_get_glyph_bitmap*(g_dsc: ptr lv_font_glyph_dsc_t;
                               draw_buf: ptr lv_draw_buf_t): pointer {.cdecl,
    importc: "lv_font_get_glyph_bitmap".}
proc lv_font_get_glyph_dsc*(font: ptr lv_font_t;
                            dsc_out: ptr lv_font_glyph_dsc_t; letter: uint32;
                            letter_next: uint32): bool {.cdecl,
    importc: "lv_font_get_glyph_dsc".}
proc lv_font_glyph_release_draw_data*(g_dsc: ptr lv_font_glyph_dsc_t): void {.
    cdecl, importc: "lv_font_glyph_release_draw_data".}
proc lv_font_get_glyph_width*(font: ptr lv_font_t; letter: uint32;
                              letter_next: uint32): uint16 {.cdecl,
    importc: "lv_font_get_glyph_width".}
proc lv_font_get_line_height*(font: ptr lv_font_t): int32 {.cdecl,
    importc: "lv_font_get_line_height".}
proc lv_font_set_kerning*(font: ptr lv_font_t; kerning: lv_font_kerning_t): void {.
    cdecl, importc: "lv_font_set_kerning".}
var lv_font_montserrat_8* {.importc: "lv_font_montserrat_8".}: lv_font_t
var lv_font_montserrat_10* {.importc: "lv_font_montserrat_10".}: lv_font_t
var lv_font_montserrat_12* {.importc: "lv_font_montserrat_12".}: lv_font_t
var lv_font_montserrat_14* {.importc: "lv_font_montserrat_14".}: lv_font_t
var lv_font_montserrat_16* {.importc: "lv_font_montserrat_16".}: lv_font_t
var lv_font_montserrat_18* {.importc: "lv_font_montserrat_18".}: lv_font_t
var lv_font_montserrat_20* {.importc: "lv_font_montserrat_20".}: lv_font_t
var lv_font_montserrat_22* {.importc: "lv_font_montserrat_22".}: lv_font_t
var lv_font_montserrat_24* {.importc: "lv_font_montserrat_24".}: lv_font_t
var lv_font_montserrat_26* {.importc: "lv_font_montserrat_26".}: lv_font_t
var lv_font_montserrat_28* {.importc: "lv_font_montserrat_28".}: lv_font_t
var lv_font_montserrat_30* {.importc: "lv_font_montserrat_30".}: lv_font_t
var lv_font_montserrat_32* {.importc: "lv_font_montserrat_32".}: lv_font_t
var lv_font_montserrat_34* {.importc: "lv_font_montserrat_34".}: lv_font_t
var lv_font_montserrat_36* {.importc: "lv_font_montserrat_36".}: lv_font_t
var lv_font_montserrat_38* {.importc: "lv_font_montserrat_38".}: lv_font_t
var lv_font_montserrat_40* {.importc: "lv_font_montserrat_40".}: lv_font_t
var lv_font_montserrat_42* {.importc: "lv_font_montserrat_42".}: lv_font_t
var lv_font_montserrat_44* {.importc: "lv_font_montserrat_44".}: lv_font_t
var lv_font_montserrat_46* {.importc: "lv_font_montserrat_46".}: lv_font_t
var lv_font_montserrat_48* {.importc: "lv_font_montserrat_48".}: lv_font_t
var lv_font_montserrat_28_compressed* {.importc: "lv_font_montserrat_28_compressed".}: lv_font_t
var lv_font_dejavu_16_persian_hebrew* {.importc: "lv_font_dejavu_16_persian_hebrew".}: lv_font_t
var lv_font_simsun_16_cjk* {.importc: "lv_font_simsun_16_cjk".}: lv_font_t
var lv_font_unscii_8* {.importc: "lv_font_unscii_8".}: lv_font_t
var lv_font_unscii_16* {.importc: "lv_font_unscii_16".}: lv_font_t
proc lv_font_default*(): ptr lv_font_t {.cdecl, importc: "lv_font_default".}
proc lv_bidi_calculate_align*(align: ptr lv_text_align_t;
                              base_dir: ptr lv_base_dir_t; txt: cstring): void {.
    cdecl, importc: "lv_bidi_calculate_align".}
proc lv_layout_register*(cb: lv_layout_update_cb_t; user_data: pointer): uint32 {.
    cdecl, importc: "lv_layout_register".}
proc lv_flex_init*(): void {.cdecl, importc: "lv_flex_init".}
proc lv_obj_set_flex_flow*(obj: ptr lv_obj_t; flow: lv_flex_flow_t): void {.
    cdecl, importc: "lv_obj_set_flex_flow".}
proc lv_obj_set_flex_align*(obj: ptr lv_obj_t; main_place: lv_flex_align_t;
                            cross_place: lv_flex_align_t;
                            track_cross_place: lv_flex_align_t): void {.cdecl,
    importc: "lv_obj_set_flex_align".}
proc lv_obj_set_flex_grow*(obj: ptr lv_obj_t; grow: uint8): void {.cdecl,
    importc: "lv_obj_set_flex_grow".}
proc lv_grid_init*(): void {.cdecl, importc: "lv_grid_init".}
proc lv_obj_set_grid_dsc_array*(obj: ptr lv_obj_t;
                                col_dsc: ptr UncheckedArray[int32];
                                row_dsc: ptr UncheckedArray[int32]): void {.
    cdecl, importc: "lv_obj_set_grid_dsc_array".}
proc lv_obj_set_grid_align*(obj: ptr lv_obj_t; column_align: lv_grid_align_t;
                            row_align: lv_grid_align_t): void {.cdecl,
    importc: "lv_obj_set_grid_align".}
proc lv_obj_set_grid_cell*(obj: ptr lv_obj_t; column_align: lv_grid_align_t;
                           col_pos: int32; col_span: int32;
                           row_align: lv_grid_align_t; row_pos: int32;
                           row_span: int32): void {.cdecl,
    importc: "lv_obj_set_grid_cell".}
proc lv_grid_fr*(x: uint8): int32 {.cdecl, importc: "lv_grid_fr".}
proc lv_style_init*(style: ptr lv_style_t): void {.cdecl,
    importc: "lv_style_init".}
proc lv_style_reset*(style: ptr lv_style_t): void {.cdecl,
    importc: "lv_style_reset".}
proc lv_style_is_const*(style: ptr lv_style_t): bool {.cdecl,
    importc: "lv_style_is_const".}
proc lv_style_register_prop*(flag: uint8): lv_style_prop_t {.cdecl,
    importc: "lv_style_register_prop".}
proc lv_style_get_num_custom_props*(): lv_style_prop_t {.cdecl,
    importc: "lv_style_get_num_custom_props".}
proc lv_style_remove_prop*(style: ptr lv_style_t; prop: lv_style_prop_t): bool {.
    cdecl, importc: "lv_style_remove_prop".}
proc lv_style_set_prop*(style: ptr lv_style_t; prop: lv_style_prop_t;
                        value: lv_style_value_t): void {.cdecl,
    importc: "lv_style_set_prop".}
proc lv_style_get_prop*(style: ptr lv_style_t; prop: lv_style_prop_t;
                        value: ptr lv_style_value_t): lv_style_res_t {.cdecl,
    importc: "lv_style_get_prop".}
proc lv_style_transition_dsc_init*(tr: ptr lv_style_transition_dsc_t;
                                   props: ptr UncheckedArray[lv_style_prop_t];
                                   path_cb: lv_anim_path_cb_t; time: uint32;
                                   delay: uint32; user_data: pointer): void {.
    cdecl, importc: "lv_style_transition_dsc_init".}
proc lv_style_prop_get_default*(prop: lv_style_prop_t): lv_style_value_t {.
    cdecl, importc: "lv_style_prop_get_default".}
proc lv_style_get_prop_inlined*(style: ptr lv_style_t; prop: lv_style_prop_t;
                                value: ptr lv_style_value_t): lv_style_res_t {.
    cdecl, importc: "lv_style_get_prop_inlined".}
proc lv_style_is_empty*(style: ptr lv_style_t): bool {.cdecl,
    importc: "lv_style_is_empty".}
proc lv_style_get_prop_group*(prop: lv_style_prop_t): uint32 {.cdecl,
    importc: "lv_style_get_prop_group".}
proc lv_style_prop_lookup_flags*(prop: lv_style_prop_t): uint8 {.cdecl,
    importc: "lv_style_prop_lookup_flags".}
proc lv_style_set_width*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_width".}
proc lv_style_set_min_width*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_min_width".}
proc lv_style_set_max_width*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_max_width".}
proc lv_style_set_height*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_height".}
proc lv_style_set_min_height*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_min_height".}
proc lv_style_set_max_height*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_max_height".}
proc lv_style_set_length*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_length".}
proc lv_style_set_x*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_x".}
proc lv_style_set_y*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_y".}
proc lv_style_set_align*(style: ptr lv_style_t; value: lv_align_t): void {.
    cdecl, importc: "lv_style_set_align".}
proc lv_style_set_transform_width*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_width".}
proc lv_style_set_transform_height*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_height".}
proc lv_style_set_translate_x*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_translate_x".}
proc lv_style_set_translate_y*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_translate_y".}
proc lv_style_set_transform_scale_x*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_scale_x".}
proc lv_style_set_transform_scale_y*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_scale_y".}
proc lv_style_set_transform_pivot_x*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_pivot_x".}
proc lv_style_set_transform_pivot_y*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_pivot_y".}
proc lv_style_set_transform_skew_x*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_skew_x".}
proc lv_style_set_transform_skew_y*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_skew_y".}
proc lv_style_set_pad_top*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_top".}
proc lv_style_set_pad_bottom*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_pad_bottom".}
proc lv_style_set_pad_left*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_left".}
proc lv_style_set_pad_right*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_right".}
proc lv_style_set_pad_row*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_row".}
proc lv_style_set_pad_column*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_pad_column".}
proc lv_style_set_margin_top*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_margin_top".}
proc lv_style_set_margin_bottom*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_margin_bottom".}
proc lv_style_set_margin_left*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_margin_left".}
proc lv_style_set_margin_right*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_margin_right".}
proc lv_style_set_bg_color*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_bg_color".}
proc lv_style_set_bg_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.cdecl,
    importc: "lv_style_set_bg_opa".}
proc lv_style_set_bg_grad_color*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_bg_grad_color".}
proc lv_style_set_bg_grad_dir*(style: ptr lv_style_t; value: lv_grad_dir_t): void {.
    cdecl, importc: "lv_style_set_bg_grad_dir".}
proc lv_style_set_bg_main_stop*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_bg_main_stop".}
proc lv_style_set_bg_grad_stop*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_bg_grad_stop".}
proc lv_style_set_bg_main_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_bg_main_opa".}
proc lv_style_set_bg_grad_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_bg_grad_opa".}
proc lv_style_set_bg_grad*(style: ptr lv_style_t; value: ptr lv_grad_dsc_t): void {.
    cdecl, importc: "lv_style_set_bg_grad".}
proc lv_style_set_bg_image_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_bg_image_opa".}
proc lv_style_set_bg_image_tiled*(style: ptr lv_style_t; value: bool): void {.
    cdecl, importc: "lv_style_set_bg_image_tiled".}
proc lv_style_set_border_color*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_border_color".}
proc lv_style_set_border_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_border_opa".}
proc lv_style_set_border_width*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_border_width".}
proc lv_style_set_border_side*(style: ptr lv_style_t; value: lv_border_side_t): void {.
    cdecl, importc: "lv_style_set_border_side".}
proc lv_style_set_border_post*(style: ptr lv_style_t; value: bool): void {.
    cdecl, importc: "lv_style_set_border_post".}
proc lv_style_set_outline_width*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_outline_width".}
proc lv_style_set_outline_color*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_outline_color".}
proc lv_style_set_outline_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_outline_opa".}
proc lv_style_set_outline_pad*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_outline_pad".}
proc lv_style_set_shadow_width*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_shadow_width".}
proc lv_style_set_shadow_spread*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_shadow_spread".}
proc lv_style_set_shadow_color*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_shadow_color".}
proc lv_style_set_shadow_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_shadow_opa".}
proc lv_style_set_line_width*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_line_width".}
proc lv_style_set_line_dash_width*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_line_dash_width".}
proc lv_style_set_line_dash_gap*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_line_dash_gap".}
proc lv_style_set_line_rounded*(style: ptr lv_style_t; value: bool): void {.
    cdecl, importc: "lv_style_set_line_rounded".}
proc lv_style_set_line_color*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_line_color".}
proc lv_style_set_line_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_line_opa".}
proc lv_style_set_arc_width*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_arc_width".}
proc lv_style_set_arc_rounded*(style: ptr lv_style_t; value: bool): void {.
    cdecl, importc: "lv_style_set_arc_rounded".}
proc lv_style_set_arc_color*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_arc_color".}
proc lv_style_set_arc_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_arc_opa".}
proc lv_style_set_arc_image_src*(style: ptr lv_style_t; value: pointer): void {.
    cdecl, importc: "lv_style_set_arc_image_src".}
proc lv_style_set_text_color*(style: ptr lv_style_t; value: lv_color_t): void {.
    cdecl, importc: "lv_style_set_text_color".}
proc lv_style_set_text_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_text_opa".}
proc lv_style_set_text_font*(style: ptr lv_style_t; value: ptr lv_font_t): void {.
    cdecl, importc: "lv_style_set_text_font".}
proc lv_style_set_text_letter_space*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_text_letter_space".}
proc lv_style_set_text_line_space*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_text_line_space".}
proc lv_style_set_text_decor*(style: ptr lv_style_t; value: lv_text_decor_t): void {.
    cdecl, importc: "lv_style_set_text_decor".}
proc lv_style_set_text_align*(style: ptr lv_style_t; value: lv_text_align_t): void {.
    cdecl, importc: "lv_style_set_text_align".}
proc lv_style_set_radius*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_radius".}
proc lv_style_set_clip_corner*(style: ptr lv_style_t; value: bool): void {.
    cdecl, importc: "lv_style_set_clip_corner".}
proc lv_style_set_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.cdecl,
    importc: "lv_style_set_opa".}
proc lv_style_set_opa_layered*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_opa_layered".}
proc lv_style_set_color_filter_dsc*(style: ptr lv_style_t;
                                    value: ptr lv_color_filter_dsc_t): void {.
    cdecl, importc: "lv_style_set_color_filter_dsc".}
proc lv_style_set_color_filter_opa*(style: ptr lv_style_t; value: lv_opa_t): void {.
    cdecl, importc: "lv_style_set_color_filter_opa".}
proc lv_style_set_anim*(style: ptr lv_style_t; value: ptr lv_anim_t): void {.
    cdecl, importc: "lv_style_set_anim".}
proc lv_style_set_transition*(style: ptr lv_style_t;
                              value: ptr lv_style_transition_dsc_t): void {.
    cdecl, importc: "lv_style_set_transition".}
proc lv_style_set_blend_mode*(style: ptr lv_style_t; value: lv_blend_mode_t): void {.
    cdecl, importc: "lv_style_set_blend_mode".}
proc lv_style_set_layout*(style: ptr lv_style_t; value: uint16): void {.cdecl,
    importc: "lv_style_set_layout".}
proc lv_style_set_base_dir*(style: ptr lv_style_t; value: lv_base_dir_t): void {.
    cdecl, importc: "lv_style_set_base_dir".}
proc lv_style_set_bitmap_mask_src*(style: ptr lv_style_t; value: pointer): void {.
    cdecl, importc: "lv_style_set_bitmap_mask_src".}
proc lv_style_set_rotary_sensitivity*(style: ptr lv_style_t; value: uint32): void {.
    cdecl, importc: "lv_style_set_rotary_sensitivity".}
proc lv_style_set_flex_flow*(style: ptr lv_style_t; value: lv_flex_flow_t): void {.
    cdecl, importc: "lv_style_set_flex_flow".}
proc lv_style_set_flex_main_place*(style: ptr lv_style_t; value: lv_flex_align_t): void {.
    cdecl, importc: "lv_style_set_flex_main_place".}
proc lv_style_set_flex_cross_place*(style: ptr lv_style_t;
                                    value: lv_flex_align_t): void {.cdecl,
    importc: "lv_style_set_flex_cross_place".}
proc lv_style_set_flex_track_place*(style: ptr lv_style_t;
                                    value: lv_flex_align_t): void {.cdecl,
    importc: "lv_style_set_flex_track_place".}
proc lv_style_set_flex_grow*(style: ptr lv_style_t; value: uint8): void {.cdecl,
    importc: "lv_style_set_flex_grow".}
proc lv_style_set_grid_column_dsc_array*(style: ptr lv_style_t; value: ptr int32): void {.
    cdecl, importc: "lv_style_set_grid_column_dsc_array".}
proc lv_style_set_grid_column_align*(style: ptr lv_style_t;
                                     value: lv_grid_align_t): void {.cdecl,
    importc: "lv_style_set_grid_column_align".}
proc lv_style_set_grid_row_dsc_array*(style: ptr lv_style_t; value: ptr int32): void {.
    cdecl, importc: "lv_style_set_grid_row_dsc_array".}
proc lv_style_set_grid_row_align*(style: ptr lv_style_t; value: lv_grid_align_t): void {.
    cdecl, importc: "lv_style_set_grid_row_align".}
proc lv_style_set_grid_cell_column_pos*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_grid_cell_column_pos".}
proc lv_style_set_grid_cell_x_align*(style: ptr lv_style_t;
                                     value: lv_grid_align_t): void {.cdecl,
    importc: "lv_style_set_grid_cell_x_align".}
proc lv_style_set_grid_cell_column_span*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_grid_cell_column_span".}
proc lv_style_set_grid_cell_row_pos*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_grid_cell_row_pos".}
proc lv_style_set_grid_cell_y_align*(style: ptr lv_style_t;
                                     value: lv_grid_align_t): void {.cdecl,
    importc: "lv_style_set_grid_cell_y_align".}
proc lv_style_set_grid_cell_row_span*(style: ptr lv_style_t; value: int32): void {.
    cdecl, importc: "lv_style_set_grid_cell_row_span".}
proc lv_style_set_size*(style: ptr lv_style_t; width: int32; height: int32): void {.
    cdecl, importc: "lv_style_set_size".}
proc lv_style_set_pad_all*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_all".}
proc lv_style_set_pad_hor*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_hor".}
proc lv_style_set_pad_ver*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_ver".}
proc lv_style_set_pad_gap*(style: ptr lv_style_t; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_gap".}
proc lv_style_prop_has_flag*(prop: lv_style_prop_t; flag: uint8): bool {.cdecl,
    importc: "lv_style_prop_has_flag".}
var lv_style_const_prop_id_inv* {.importc: "lv_style_const_prop_id_inv".}: lv_style_prop_t
proc lv_event_send*(list: ptr lv_event_list_t; e: ptr lv_event_t;
                    preprocess: bool): lv_result_t {.cdecl,
    importc: "lv_event_send".}
proc lv_event_add*(list: ptr lv_event_list_t; cb: lv_event_cb_t;
                   filter: lv_event_code_t; user_data: pointer): ptr lv_event_dsc_t {.
    cdecl, importc: "lv_event_add".}
proc lv_event_remove_dsc*(list: ptr lv_event_list_t; dsc: ptr lv_event_dsc_t): bool {.
    cdecl, importc: "lv_event_remove_dsc".}
proc lv_event_get_count*(list: ptr lv_event_list_t): uint32 {.cdecl,
    importc: "lv_event_get_count".}
proc lv_event_get_dsc*(list: ptr lv_event_list_t; index: uint32): ptr lv_event_dsc_t {.
    cdecl, importc: "lv_event_get_dsc".}
proc lv_event_dsc_get_cb*(dsc: ptr lv_event_dsc_t): lv_event_cb_t {.cdecl,
    importc: "lv_event_dsc_get_cb".}
proc lv_event_dsc_get_user_data*(dsc: ptr lv_event_dsc_t): pointer {.cdecl,
    importc: "lv_event_dsc_get_user_data".}
proc lv_event_remove*(list: ptr lv_event_list_t; index: uint32): bool {.cdecl,
    importc: "lv_event_remove".}
proc lv_event_remove_all*(list: ptr lv_event_list_t): void {.cdecl,
    importc: "lv_event_remove_all".}
proc lv_event_get_target*(e: ptr lv_event_t): pointer {.cdecl,
    importc: "lv_event_get_target".}
proc lv_event_get_current_target*(e: ptr lv_event_t): pointer {.cdecl,
    importc: "lv_event_get_current_target".}
proc lv_event_get_code*(e: ptr lv_event_t): lv_event_code_t {.cdecl,
    importc: "lv_event_get_code".}
proc lv_event_get_param*(e: ptr lv_event_t): pointer {.cdecl,
    importc: "lv_event_get_param".}
proc lv_event_get_user_data*(e: ptr lv_event_t): pointer {.cdecl,
    importc: "lv_event_get_user_data".}
proc lv_event_stop_bubbling*(e: ptr lv_event_t): void {.cdecl,
    importc: "lv_event_stop_bubbling".}
proc lv_event_stop_processing*(e: ptr lv_event_t): void {.cdecl,
    importc: "lv_event_stop_processing".}
proc lv_event_register_id*(): uint32 {.cdecl, importc: "lv_event_register_id".}
proc lv_fs_drv_init*(drv: ptr lv_fs_drv_t): void {.cdecl,
    importc: "lv_fs_drv_init".}
proc lv_fs_drv_register*(drv: ptr lv_fs_drv_t): void {.cdecl,
    importc: "lv_fs_drv_register".}
proc lv_fs_get_drv*(letter: cschar): ptr lv_fs_drv_t {.cdecl,
    importc: "lv_fs_get_drv".}
proc lv_fs_is_ready*(letter: cschar): bool {.cdecl, importc: "lv_fs_is_ready".}
proc lv_fs_open*(file_p: ptr lv_fs_file_t; path: cstring; mode: lv_fs_mode_t): lv_fs_res_t {.
    cdecl, importc: "lv_fs_open".}
proc lv_fs_make_path_from_buffer*(path: ptr lv_fs_path_ex_t; letter: cschar;
                                  buf: pointer; size: uint32): void {.cdecl,
    importc: "lv_fs_make_path_from_buffer".}
proc lv_fs_close*(file_p: ptr lv_fs_file_t): lv_fs_res_t {.cdecl,
    importc: "lv_fs_close".}
proc lv_fs_read*(file_p: ptr lv_fs_file_t; buf: pointer; btr: uint32;
                 br: ptr uint32): lv_fs_res_t {.cdecl, importc: "lv_fs_read".}
proc lv_fs_write*(file_p: ptr lv_fs_file_t; buf: pointer; btw: uint32;
                  bw: ptr uint32): lv_fs_res_t {.cdecl, importc: "lv_fs_write".}
proc lv_fs_seek*(file_p: ptr lv_fs_file_t; pos: uint32; whence: lv_fs_whence_t): lv_fs_res_t {.
    cdecl, importc: "lv_fs_seek".}
proc lv_fs_tell*(file_p: ptr lv_fs_file_t; pos: ptr uint32): lv_fs_res_t {.
    cdecl, importc: "lv_fs_tell".}
proc lv_fs_dir_open*(rddir_p: ptr lv_fs_dir_t; path: cstring): lv_fs_res_t {.
    cdecl, importc: "lv_fs_dir_open".}
proc lv_fs_dir_read*(rddir_p: ptr lv_fs_dir_t; fn: cstring; fn_len: uint32): lv_fs_res_t {.
    cdecl, importc: "lv_fs_dir_read".}
proc lv_fs_dir_close*(rddir_p: ptr lv_fs_dir_t): lv_fs_res_t {.cdecl,
    importc: "lv_fs_dir_close".}
proc lv_fs_get_letters*(buf: cstring): cstring {.cdecl,
    importc: "lv_fs_get_letters".}
proc lv_fs_get_ext*(fn: cstring): cstring {.cdecl, importc: "lv_fs_get_ext".}
proc lv_fs_up*(path: cstring): cstring {.cdecl, importc: "lv_fs_up".}
proc lv_fs_get_last*(path: cstring): cstring {.cdecl, importc: "lv_fs_get_last".}
proc lv_image_decoder_get_info*(src: pointer; header: ptr lv_image_header_t): lv_result_t {.
    cdecl, importc: "lv_image_decoder_get_info".}
proc lv_image_decoder_open*(dsc: ptr lv_image_decoder_dsc_t; src: pointer;
                            args: ptr lv_image_decoder_args_t): lv_result_t {.
    cdecl, importc: "lv_image_decoder_open".}
proc lv_image_decoder_get_area*(dsc: ptr lv_image_decoder_dsc_t;
                                full_area: ptr lv_area_t;
                                decoded_area: ptr lv_area_t): lv_result_t {.
    cdecl, importc: "lv_image_decoder_get_area".}
proc lv_image_decoder_close*(dsc: ptr lv_image_decoder_dsc_t): void {.cdecl,
    importc: "lv_image_decoder_close".}
proc lv_image_decoder_create*(): ptr lv_image_decoder_t {.cdecl,
    importc: "lv_image_decoder_create".}
proc lv_image_decoder_delete*(decoder: ptr lv_image_decoder_t): void {.cdecl,
    importc: "lv_image_decoder_delete".}
proc lv_image_decoder_get_next*(decoder: ptr lv_image_decoder_t): ptr lv_image_decoder_t {.
    cdecl, importc: "lv_image_decoder_get_next".}
proc lv_image_decoder_set_info_cb*(decoder: ptr lv_image_decoder_t;
                                   info_cb: lv_image_decoder_info_f_t): void {.
    cdecl, importc: "lv_image_decoder_set_info_cb".}
proc lv_image_decoder_set_open_cb*(decoder: ptr lv_image_decoder_t;
                                   open_cb: lv_image_decoder_open_f_t): void {.
    cdecl, importc: "lv_image_decoder_set_open_cb".}
proc lv_image_decoder_set_get_area_cb*(decoder: ptr lv_image_decoder_t;
    read_line_cb: lv_image_decoder_get_area_cb_t): void {.cdecl,
    importc: "lv_image_decoder_set_get_area_cb".}
proc lv_image_decoder_set_close_cb*(decoder: ptr lv_image_decoder_t;
                                    close_cb: lv_image_decoder_close_f_t): void {.
    cdecl, importc: "lv_image_decoder_set_close_cb".}
proc lv_image_decoder_add_to_cache*(decoder: ptr lv_image_decoder_t;
                                    search_key: ptr lv_image_cache_data_t;
                                    decoded: ptr lv_draw_buf_t;
                                    user_data: pointer): ptr lv_cache_entry_t {.
    cdecl, importc: "lv_image_decoder_add_to_cache".}
proc lv_image_decoder_post_process*(dsc: ptr lv_image_decoder_dsc_t;
                                    decoded: ptr lv_draw_buf_t): ptr lv_draw_buf_t {.
    cdecl, importc: "lv_image_decoder_post_process".}
proc lv_draw_init*(): void {.cdecl, importc: "lv_draw_init".}
proc lv_draw_deinit*(): void {.cdecl, importc: "lv_draw_deinit".}
proc lv_draw_create_unit*(size: csize_t): pointer {.cdecl,
    importc: "lv_draw_create_unit".}
proc lv_draw_add_task*(layer: ptr lv_layer_t; coords: ptr lv_area_t): ptr lv_draw_task_t {.
    cdecl, importc: "lv_draw_add_task".}
proc lv_draw_finalize_task_creation*(layer: ptr lv_layer_t;
                                     t: ptr lv_draw_task_t): void {.cdecl,
    importc: "lv_draw_finalize_task_creation".}
proc lv_draw_dispatch*(): void {.cdecl, importc: "lv_draw_dispatch".}
proc lv_draw_dispatch_layer*(disp: ptr lv_display_t; layer: ptr lv_layer_t): bool {.
    cdecl, importc: "lv_draw_dispatch_layer".}
proc lv_draw_dispatch_wait_for_request*(): void {.cdecl,
    importc: "lv_draw_dispatch_wait_for_request".}
proc lv_draw_wait_for_finish*(): void {.cdecl,
                                        importc: "lv_draw_wait_for_finish".}
proc lv_draw_dispatch_request*(): void {.cdecl,
    importc: "lv_draw_dispatch_request".}
proc lv_draw_get_unit_count*(): uint32 {.cdecl,
    importc: "lv_draw_get_unit_count".}
proc lv_draw_get_next_available_task*(layer: ptr lv_layer_t;
                                      t_prev: ptr lv_draw_task_t;
                                      draw_unit_id: uint8): ptr lv_draw_task_t {.
    cdecl, importc: "lv_draw_get_next_available_task".}
proc lv_draw_get_dependent_count*(t_check: ptr lv_draw_task_t): uint32 {.cdecl,
    importc: "lv_draw_get_dependent_count".}
proc lv_draw_layer_create*(parent_layer: ptr lv_layer_t;
                           color_format: lv_color_format_t; area: ptr lv_area_t): ptr lv_layer_t {.
    cdecl, importc: "lv_draw_layer_create".}
proc lv_draw_layer_alloc_buf*(layer: ptr lv_layer_t): pointer {.cdecl,
    importc: "lv_draw_layer_alloc_buf".}
proc lv_draw_layer_go_to_xy*(layer: ptr lv_layer_t; x: int32; y: int32): pointer {.
    cdecl, importc: "lv_draw_layer_go_to_xy".}
proc lv_draw_task_get_type*(t: ptr lv_draw_task_t): lv_draw_task_type_t {.cdecl,
    importc: "lv_draw_task_get_type".}
proc lv_draw_task_get_draw_dsc*(t: ptr lv_draw_task_t): pointer {.cdecl,
    importc: "lv_draw_task_get_draw_dsc".}
proc lv_draw_task_get_area*(t: ptr lv_draw_task_t; area: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_task_get_area".}
proc lv_display_create*(hor_res: int32; ver_res: int32): ptr lv_display_t {.
    cdecl, importc: "lv_display_create".}
proc lv_display_set_resolution*(disp: ptr lv_display_t; hor_res: int32;
                                ver_res: int32): void {.cdecl,
    importc: "lv_display_set_resolution".}
proc lv_display_set_physical_resolution*(disp: ptr lv_display_t; hor_res: int32;
    ver_res: int32): void {.cdecl, importc: "lv_display_set_physical_resolution".}
proc lv_display_set_offset*(disp: ptr lv_display_t; x: int32; y: int32): void {.
    cdecl, importc: "lv_display_set_offset".}
proc lv_display_set_dpi*(disp: ptr lv_display_t; dpi: int32): void {.cdecl,
    importc: "lv_display_set_dpi".}
proc lv_display_set_buffers*(disp: ptr lv_display_t; buf1: pointer;
                             buf2: pointer; buf_size: uint32;
                             render_mode: lv_display_render_mode_t): void {.
    cdecl, importc: "lv_display_set_buffers".}
proc lv_display_set_draw_buffers*(disp: ptr lv_display_t;
                                  buf1: ptr lv_draw_buf_t;
                                  buf2: ptr lv_draw_buf_t): void {.cdecl,
    importc: "lv_display_set_draw_buffers".}
proc lv_display_set_render_mode*(disp: ptr lv_display_t;
                                 render_mode: lv_display_render_mode_t): void {.
    cdecl, importc: "lv_display_set_render_mode".}
proc lv_display_set_flush_cb*(disp: ptr lv_display_t;
                              flush_cb: lv_display_flush_cb_t): void {.cdecl,
    importc: "lv_display_set_flush_cb".}
proc lv_display_set_flush_wait_cb*(disp: ptr lv_display_t;
                                   wait_cb: lv_display_flush_wait_cb_t): void {.
    cdecl, importc: "lv_display_set_flush_wait_cb".}
proc lv_display_set_color_format*(disp: ptr lv_display_t;
                                  color_format: lv_color_format_t): void {.
    cdecl, importc: "lv_display_set_color_format".}
proc lv_display_get_color_format*(disp: ptr lv_display_t): lv_color_format_t {.
    cdecl, importc: "lv_display_get_color_format".}
proc lv_display_set_antialiasing*(disp: ptr lv_display_t; en: bool): void {.
    cdecl, importc: "lv_display_set_antialiasing".}
proc lv_display_is_double_buffered*(disp: ptr lv_display_t): bool {.cdecl,
    importc: "lv_display_is_double_buffered".}
proc lv_display_get_layer_bottom*(disp: ptr lv_display_t): ptr lv_obj_t {.cdecl,
    importc: "lv_display_get_layer_bottom".}
proc lv_layer_top*(): ptr lv_obj_t {.cdecl, importc: "lv_layer_top".}
proc lv_layer_sys*(): ptr lv_obj_t {.cdecl, importc: "lv_layer_sys".}
proc lv_layer_bottom*(): ptr lv_obj_t {.cdecl, importc: "lv_layer_bottom".}
proc lv_display_add_event_cb*(disp: ptr lv_display_t; event_cb: lv_event_cb_t;
                              filter: lv_event_code_t; user_data: pointer): void {.
    cdecl, importc: "lv_display_add_event_cb".}
proc lv_display_get_event_count*(disp: ptr lv_display_t): uint32 {.cdecl,
    importc: "lv_display_get_event_count".}
proc lv_display_get_event_dsc*(disp: ptr lv_display_t; index: uint32): ptr lv_event_dsc_t {.
    cdecl, importc: "lv_display_get_event_dsc".}
proc lv_display_delete_event*(disp: ptr lv_display_t; index: uint32): bool {.
    cdecl, importc: "lv_display_delete_event".}
proc lv_display_remove_event_cb_with_user_data*(disp: ptr lv_display_t;
    event_cb: lv_event_cb_t; user_data: pointer): uint32 {.cdecl,
    importc: "lv_display_remove_event_cb_with_user_data".}
proc lv_display_delete_refr_timer*(disp: ptr lv_display_t): void {.cdecl,
    importc: "lv_display_delete_refr_timer".}
proc lv_display_set_user_data*(disp: ptr lv_display_t; user_data: pointer): void {.
    cdecl, importc: "lv_display_set_user_data".}
proc lv_display_set_driver_data*(disp: ptr lv_display_t; driver_data: pointer): void {.
    cdecl, importc: "lv_display_set_driver_data".}
proc lv_display_get_user_data*(disp: ptr lv_display_t): pointer {.cdecl,
    importc: "lv_display_get_user_data".}
proc lv_display_get_driver_data*(disp: ptr lv_display_t): pointer {.cdecl,
    importc: "lv_display_get_driver_data".}
proc lv_display_get_buf_active*(disp: ptr lv_display_t): ptr lv_draw_buf_t {.
    cdecl, importc: "lv_display_get_buf_active".}
proc lv_display_rotate_area*(disp: ptr lv_display_t; area: ptr lv_area_t): void {.
    cdecl, importc: "lv_display_rotate_area".}
proc lv_dpx*(n: int32): int32 {.cdecl, importc: "lv_dpx".}
proc lv_display_dpx*(disp: ptr lv_display_t; n: int32): int32 {.cdecl,
    importc: "lv_display_dpx".}
proc lv_obj_clean*(obj: ptr lv_obj_t): void {.cdecl, importc: "lv_obj_clean".}
proc lv_obj_delete_delayed*(obj: ptr lv_obj_t; delay_ms: uint32): void {.cdecl,
    importc: "lv_obj_delete_delayed".}
proc lv_obj_set_parent*(obj: ptr lv_obj_t; parent: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_set_parent".}
proc lv_obj_swap*(obj1: ptr lv_obj_t; obj2: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_swap".}
proc lv_obj_move_to_index*(obj: ptr lv_obj_t; index: int32): void {.cdecl,
    importc: "lv_obj_move_to_index".}
proc lv_obj_get_screen*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_obj_get_screen".}
proc lv_obj_get_parent*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_obj_get_parent".}
proc lv_obj_get_child*(obj: ptr lv_obj_t; idx: int32): ptr lv_obj_t {.cdecl,
    importc: "lv_obj_get_child".}
proc lv_obj_get_child_by_type*(obj: ptr lv_obj_t; idx: int32;
                               class_p: ptr lv_obj_class_t): ptr lv_obj_t {.
    cdecl, importc: "lv_obj_get_child_by_type".}
proc lv_obj_get_sibling*(obj: ptr lv_obj_t; idx: int32): ptr lv_obj_t {.cdecl,
    importc: "lv_obj_get_sibling".}
proc lv_obj_get_sibling_by_type*(obj: ptr lv_obj_t; idx: int32;
                                 class_p: ptr lv_obj_class_t): ptr lv_obj_t {.
    cdecl, importc: "lv_obj_get_sibling_by_type".}
proc lv_obj_get_child_count_by_type*(obj: ptr lv_obj_t;
                                     class_p: ptr lv_obj_class_t): uint32 {.
    cdecl, importc: "lv_obj_get_child_count_by_type".}
proc lv_obj_get_index*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_index".}
proc lv_obj_get_index_by_type*(obj: ptr lv_obj_t; class_p: ptr lv_obj_class_t): int32 {.
    cdecl, importc: "lv_obj_get_index_by_type".}
proc lv_obj_tree_walk*(start_obj: ptr lv_obj_t; cb: lv_obj_tree_walk_cb_t;
                       user_data: pointer): void {.cdecl,
    importc: "lv_obj_tree_walk".}
proc lv_obj_dump_tree*(start_obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_dump_tree".}
proc lv_obj_set_pos*(obj: ptr lv_obj_t; x: int32; y: int32): void {.cdecl,
    importc: "lv_obj_set_pos".}
proc lv_obj_set_x*(obj: ptr lv_obj_t; x: int32): void {.cdecl,
    importc: "lv_obj_set_x".}
proc lv_obj_set_y*(obj: ptr lv_obj_t; y: int32): void {.cdecl,
    importc: "lv_obj_set_y".}
proc lv_obj_set_size*(obj: ptr lv_obj_t; w: int32; h: int32): void {.cdecl,
    importc: "lv_obj_set_size".}
proc lv_obj_refr_size*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_obj_refr_size".}
proc lv_obj_set_width*(obj: ptr lv_obj_t; w: int32): void {.cdecl,
    importc: "lv_obj_set_width".}
proc lv_obj_set_height*(obj: ptr lv_obj_t; h: int32): void {.cdecl,
    importc: "lv_obj_set_height".}
proc lv_obj_set_content_width*(obj: ptr lv_obj_t; w: int32): void {.cdecl,
    importc: "lv_obj_set_content_width".}
proc lv_obj_set_content_height*(obj: ptr lv_obj_t; h: int32): void {.cdecl,
    importc: "lv_obj_set_content_height".}
proc lv_obj_set_layout*(obj: ptr lv_obj_t; layout: uint32): void {.cdecl,
    importc: "lv_obj_set_layout".}
proc lv_obj_is_layout_positioned*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_obj_is_layout_positioned".}
proc lv_obj_mark_layout_as_dirty*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_mark_layout_as_dirty".}
proc lv_obj_update_layout*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_update_layout".}
proc lv_obj_set_align*(obj: ptr lv_obj_t; align: lv_align_t): void {.cdecl,
    importc: "lv_obj_set_align".}
proc lv_obj_align*(obj: ptr lv_obj_t; align: lv_align_t; x_ofs: int32;
                   y_ofs: int32): void {.cdecl, importc: "lv_obj_align".}
proc lv_obj_align_to*(obj: ptr lv_obj_t; base: ptr lv_obj_t; align: lv_align_t;
                      x_ofs: int32; y_ofs: int32): void {.cdecl,
    importc: "lv_obj_align_to".}
proc lv_obj_center*(obj: ptr lv_obj_t): void {.cdecl, importc: "lv_obj_center".}
proc lv_obj_get_coords*(obj: ptr lv_obj_t; coords: ptr lv_area_t): void {.cdecl,
    importc: "lv_obj_get_coords".}
proc lv_obj_get_x*(obj: ptr lv_obj_t): int32 {.cdecl, importc: "lv_obj_get_x".}
proc lv_obj_get_x2*(obj: ptr lv_obj_t): int32 {.cdecl, importc: "lv_obj_get_x2".}
proc lv_obj_get_y*(obj: ptr lv_obj_t): int32 {.cdecl, importc: "lv_obj_get_y".}
proc lv_obj_get_y2*(obj: ptr lv_obj_t): int32 {.cdecl, importc: "lv_obj_get_y2".}
proc lv_obj_get_x_aligned*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_x_aligned".}
proc lv_obj_get_y_aligned*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_y_aligned".}
proc lv_obj_get_width*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_width".}
proc lv_obj_get_height*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_height".}
proc lv_obj_get_content_width*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_content_width".}
proc lv_obj_get_content_height*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_content_height".}
proc lv_obj_get_content_coords*(obj: ptr lv_obj_t; area: ptr lv_area_t): void {.
    cdecl, importc: "lv_obj_get_content_coords".}
proc lv_obj_get_self_width*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_self_width".}
proc lv_obj_get_self_height*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_self_height".}
proc lv_obj_refresh_self_size*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_obj_refresh_self_size".}
proc lv_obj_refr_pos*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_refr_pos".}
proc lv_obj_move_to*(obj: ptr lv_obj_t; x: int32; y: int32): void {.cdecl,
    importc: "lv_obj_move_to".}
proc lv_obj_move_children_by*(obj: ptr lv_obj_t; x_diff: int32; y_diff: int32;
                              ignore_floating: bool): void {.cdecl,
    importc: "lv_obj_move_children_by".}
proc lv_obj_transform_point*(obj: ptr lv_obj_t; p: ptr lv_point_t;
                             flags: lv_obj_point_transform_flag_t): void {.
    cdecl, importc: "lv_obj_transform_point".}
proc lv_obj_transform_point_array*(obj: ptr lv_obj_t;
                                   points: ptr UncheckedArray[lv_point_t];
                                   count: csize_t;
                                   flags: lv_obj_point_transform_flag_t): void {.
    cdecl, importc: "lv_obj_transform_point_array".}
proc lv_obj_get_transformed_area*(obj: ptr lv_obj_t; area: ptr lv_area_t;
                                  flags: lv_obj_point_transform_flag_t): void {.
    cdecl, importc: "lv_obj_get_transformed_area".}
proc lv_obj_invalidate_area*(obj: ptr lv_obj_t; area: ptr lv_area_t): void {.
    cdecl, importc: "lv_obj_invalidate_area".}
proc lv_obj_invalidate*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_invalidate".}
proc lv_obj_area_is_visible*(obj: ptr lv_obj_t; area: ptr lv_area_t): bool {.
    cdecl, importc: "lv_obj_area_is_visible".}
proc lv_obj_is_visible*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_obj_is_visible".}
proc lv_obj_set_ext_click_area*(obj: ptr lv_obj_t; size: int32): void {.cdecl,
    importc: "lv_obj_set_ext_click_area".}
proc lv_obj_get_click_area*(obj: ptr lv_obj_t; area: ptr lv_area_t): void {.
    cdecl, importc: "lv_obj_get_click_area".}
proc lv_obj_hit_test*(obj: ptr lv_obj_t; point: ptr lv_point_t): bool {.cdecl,
    importc: "lv_obj_hit_test".}
proc lv_clamp_width*(width: int32; min_width: int32; max_width: int32;
                     ref_width: int32): int32 {.cdecl, importc: "lv_clamp_width".}
proc lv_clamp_height*(height: int32; min_height: int32; max_height: int32;
                      ref_height: int32): int32 {.cdecl,
    importc: "lv_clamp_height".}
proc lv_obj_set_scrollbar_mode*(obj: ptr lv_obj_t; mode: lv_scrollbar_mode_t): void {.
    cdecl, importc: "lv_obj_set_scrollbar_mode".}
proc lv_obj_set_scroll_dir*(obj: ptr lv_obj_t; dir: lv_dir_t): void {.cdecl,
    importc: "lv_obj_set_scroll_dir".}
proc lv_obj_set_scroll_snap_x*(obj: ptr lv_obj_t; align: lv_scroll_snap_t): void {.
    cdecl, importc: "lv_obj_set_scroll_snap_x".}
proc lv_obj_set_scroll_snap_y*(obj: ptr lv_obj_t; align: lv_scroll_snap_t): void {.
    cdecl, importc: "lv_obj_set_scroll_snap_y".}
proc lv_obj_get_scrollbar_mode*(obj: ptr lv_obj_t): lv_scrollbar_mode_t {.cdecl,
    importc: "lv_obj_get_scrollbar_mode".}
proc lv_obj_get_scroll_dir*(obj: ptr lv_obj_t): lv_dir_t {.cdecl,
    importc: "lv_obj_get_scroll_dir".}
proc lv_obj_get_scroll_snap_x*(obj: ptr lv_obj_t): lv_scroll_snap_t {.cdecl,
    importc: "lv_obj_get_scroll_snap_x".}
proc lv_obj_get_scroll_snap_y*(obj: ptr lv_obj_t): lv_scroll_snap_t {.cdecl,
    importc: "lv_obj_get_scroll_snap_y".}
proc lv_obj_get_scroll_x*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_scroll_x".}
proc lv_obj_get_scroll_y*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_scroll_y".}
proc lv_obj_get_scroll_top*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_scroll_top".}
proc lv_obj_get_scroll_bottom*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_scroll_bottom".}
proc lv_obj_get_scroll_left*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_scroll_left".}
proc lv_obj_get_scroll_right*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_obj_get_scroll_right".}
proc lv_obj_get_scroll_end*(obj: ptr lv_obj_t; end_arg: ptr lv_point_t): void {.
    cdecl, importc: "lv_obj_get_scroll_end".}
proc lv_obj_scroll_by*(obj: ptr lv_obj_t; x: int32; y: int32;
                       anim_en: lv_anim_enable_t): void {.cdecl,
    importc: "lv_obj_scroll_by".}
proc lv_obj_scroll_by_bounded*(obj: ptr lv_obj_t; dx: int32; dy: int32;
                               anim_en: lv_anim_enable_t): void {.cdecl,
    importc: "lv_obj_scroll_by_bounded".}
proc lv_obj_scroll_to*(obj: ptr lv_obj_t; x: int32; y: int32;
                       anim_en: lv_anim_enable_t): void {.cdecl,
    importc: "lv_obj_scroll_to".}
proc lv_obj_scroll_to_x*(obj: ptr lv_obj_t; x: int32; anim_en: lv_anim_enable_t): void {.
    cdecl, importc: "lv_obj_scroll_to_x".}
proc lv_obj_scroll_to_y*(obj: ptr lv_obj_t; y: int32; anim_en: lv_anim_enable_t): void {.
    cdecl, importc: "lv_obj_scroll_to_y".}
proc lv_obj_scroll_to_view*(obj: ptr lv_obj_t; anim_en: lv_anim_enable_t): void {.
    cdecl, importc: "lv_obj_scroll_to_view".}
proc lv_obj_scroll_to_view_recursive*(obj: ptr lv_obj_t;
                                      anim_en: lv_anim_enable_t): void {.cdecl,
    importc: "lv_obj_scroll_to_view_recursive".}
proc lv_obj_is_scrolling*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_obj_is_scrolling".}
proc lv_obj_update_snap*(obj: ptr lv_obj_t; anim_en: lv_anim_enable_t): void {.
    cdecl, importc: "lv_obj_update_snap".}
proc lv_obj_get_scrollbar_area*(obj: ptr lv_obj_t; hor: ptr lv_area_t;
                                ver: ptr lv_area_t): void {.cdecl,
    importc: "lv_obj_get_scrollbar_area".}
proc lv_obj_scrollbar_invalidate*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_scrollbar_invalidate".}
proc lv_obj_readjust_scroll*(obj: ptr lv_obj_t; anim_en: lv_anim_enable_t): void {.
    cdecl, importc: "lv_obj_readjust_scroll".}
proc lv_obj_add_style*(obj: ptr lv_obj_t; style: ptr lv_style_t;
                       selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_add_style".}
proc lv_obj_replace_style*(obj: ptr lv_obj_t; old_style: ptr lv_style_t;
                           new_style: ptr lv_style_t;
                           selector: lv_style_selector_t): bool {.cdecl,
    importc: "lv_obj_replace_style".}
proc lv_obj_remove_style*(obj: ptr lv_obj_t; style: ptr lv_style_t;
                          selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_remove_style".}
proc lv_obj_remove_style_all*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_remove_style_all".}
proc lv_obj_report_style_change*(style: ptr lv_style_t): void {.cdecl,
    importc: "lv_obj_report_style_change".}
proc lv_obj_refresh_style*(obj: ptr lv_obj_t; part: lv_part_t;
                           prop: lv_style_prop_t): void {.cdecl,
    importc: "lv_obj_refresh_style".}
proc lv_obj_enable_style_refresh*(en: bool): void {.cdecl,
    importc: "lv_obj_enable_style_refresh".}
proc lv_obj_get_style_prop*(obj: ptr lv_obj_t; part: lv_part_t;
                            prop: lv_style_prop_t): lv_style_value_t {.cdecl,
    importc: "lv_obj_get_style_prop".}
proc lv_obj_has_style_prop*(obj: ptr lv_obj_t; selector: lv_style_selector_t;
                            prop: lv_style_prop_t): bool {.cdecl,
    importc: "lv_obj_has_style_prop".}
proc lv_obj_set_local_style_prop*(obj: ptr lv_obj_t; prop: lv_style_prop_t;
                                  value: lv_style_value_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_local_style_prop".}
proc lv_obj_get_local_style_prop*(obj: ptr lv_obj_t; prop: lv_style_prop_t;
                                  value: ptr lv_style_value_t;
                                  selector: lv_style_selector_t): lv_style_res_t {.
    cdecl, importc: "lv_obj_get_local_style_prop".}
proc lv_obj_remove_local_style_prop*(obj: ptr lv_obj_t; prop: lv_style_prop_t;
                                     selector: lv_style_selector_t): bool {.
    cdecl, importc: "lv_obj_remove_local_style_prop".}
proc lv_obj_style_apply_color_filter*(obj: ptr lv_obj_t; part: lv_part_t;
                                      v: lv_style_value_t): lv_style_value_t {.
    cdecl, importc: "lv_obj_style_apply_color_filter".}
proc lv_obj_fade_in*(obj: ptr lv_obj_t; time: uint32; delay: uint32): void {.
    cdecl, importc: "lv_obj_fade_in".}
proc lv_obj_fade_out*(obj: ptr lv_obj_t; time: uint32; delay: uint32): void {.
    cdecl, importc: "lv_obj_fade_out".}
proc lv_obj_style_get_selector_state*(selector: lv_style_selector_t): lv_state_t {.
    cdecl, importc: "lv_obj_style_get_selector_state".}
proc lv_obj_style_get_selector_part*(selector: lv_style_selector_t): lv_part_t {.
    cdecl, importc: "lv_obj_style_get_selector_part".}
proc lv_obj_get_style_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.cdecl,
    importc: "lv_obj_get_style_width".}
proc lv_obj_get_style_min_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_min_width".}
proc lv_obj_get_style_max_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_max_width".}
proc lv_obj_get_style_height*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_height".}
proc lv_obj_get_style_min_height*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_min_height".}
proc lv_obj_get_style_max_height*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_max_height".}
proc lv_obj_get_style_length*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_length".}
proc lv_obj_get_style_x*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.cdecl,
    importc: "lv_obj_get_style_x".}
proc lv_obj_get_style_y*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.cdecl,
    importc: "lv_obj_get_style_y".}
proc lv_obj_get_style_align*(obj: ptr lv_obj_t; part: lv_part_t): lv_align_t {.
    cdecl, importc: "lv_obj_get_style_align".}
proc lv_obj_get_style_transform_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_width".}
proc lv_obj_get_style_transform_height*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_height".}
proc lv_obj_get_style_translate_x*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_translate_x".}
proc lv_obj_get_style_translate_y*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_translate_y".}
proc lv_obj_get_style_transform_scale_x*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_scale_x".}
proc lv_obj_get_style_transform_scale_y*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_scale_y".}
proc lv_obj_get_style_transform_pivot_x*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_pivot_x".}
proc lv_obj_get_style_transform_pivot_y*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_pivot_y".}
proc lv_obj_get_style_transform_skew_x*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_skew_x".}
proc lv_obj_get_style_transform_skew_y*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_skew_y".}
proc lv_obj_get_style_pad_top*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_pad_top".}
proc lv_obj_get_style_pad_bottom*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_pad_bottom".}
proc lv_obj_get_style_pad_left*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_pad_left".}
proc lv_obj_get_style_pad_right*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_pad_right".}
proc lv_obj_get_style_pad_row*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_pad_row".}
proc lv_obj_get_style_pad_column*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_pad_column".}
proc lv_obj_get_style_margin_top*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_margin_top".}
proc lv_obj_get_style_margin_bottom*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_margin_bottom".}
proc lv_obj_get_style_margin_left*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_margin_left".}
proc lv_obj_get_style_margin_right*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_margin_right".}
proc lv_obj_get_style_bg_color*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_bg_color".}
proc lv_obj_get_style_bg_color_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_bg_color_filtered".}
proc lv_obj_get_style_bg_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_bg_opa".}
proc lv_obj_get_style_bg_grad_color*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_bg_grad_color".}
proc lv_obj_get_style_bg_grad_color_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_bg_grad_color_filtered".}
proc lv_obj_get_style_bg_grad_dir*(obj: ptr lv_obj_t; part: lv_part_t): lv_grad_dir_t {.
    cdecl, importc: "lv_obj_get_style_bg_grad_dir".}
proc lv_obj_get_style_bg_main_stop*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_bg_main_stop".}
proc lv_obj_get_style_bg_grad_stop*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_bg_grad_stop".}
proc lv_obj_get_style_bg_main_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_bg_main_opa".}
proc lv_obj_get_style_bg_grad_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_bg_grad_opa".}
proc lv_obj_get_style_bg_grad*(obj: ptr lv_obj_t; part: lv_part_t): ptr lv_grad_dsc_t {.
    cdecl, importc: "lv_obj_get_style_bg_grad".}
proc lv_obj_get_style_bg_image_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_bg_image_opa".}
proc lv_obj_get_style_bg_image_recolor_filtered*(obj: ptr lv_obj_t;
    part: lv_part_t): lv_color_t {.cdecl, importc: "lv_obj_get_style_bg_image_recolor_filtered".}
proc lv_obj_get_style_bg_image_tiled*(obj: ptr lv_obj_t; part: lv_part_t): bool {.
    cdecl, importc: "lv_obj_get_style_bg_image_tiled".}
proc lv_obj_get_style_border_color*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_border_color".}
proc lv_obj_get_style_border_color_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_border_color_filtered".}
proc lv_obj_get_style_border_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_border_opa".}
proc lv_obj_get_style_border_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_border_width".}
proc lv_obj_get_style_border_side*(obj: ptr lv_obj_t; part: lv_part_t): lv_border_side_t {.
    cdecl, importc: "lv_obj_get_style_border_side".}
proc lv_obj_get_style_border_post*(obj: ptr lv_obj_t; part: lv_part_t): bool {.
    cdecl, importc: "lv_obj_get_style_border_post".}
proc lv_obj_get_style_outline_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_outline_width".}
proc lv_obj_get_style_outline_color*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_outline_color".}
proc lv_obj_get_style_outline_color_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_outline_color_filtered".}
proc lv_obj_get_style_outline_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_outline_opa".}
proc lv_obj_get_style_outline_pad*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_outline_pad".}
proc lv_obj_get_style_shadow_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_shadow_width".}
proc lv_obj_get_style_shadow_spread*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_shadow_spread".}
proc lv_obj_get_style_shadow_color*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_shadow_color".}
proc lv_obj_get_style_shadow_color_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_shadow_color_filtered".}
proc lv_obj_get_style_shadow_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_shadow_opa".}
proc lv_obj_get_style_line_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_line_width".}
proc lv_obj_get_style_line_dash_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_line_dash_width".}
proc lv_obj_get_style_line_dash_gap*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_line_dash_gap".}
proc lv_obj_get_style_line_rounded*(obj: ptr lv_obj_t; part: lv_part_t): bool {.
    cdecl, importc: "lv_obj_get_style_line_rounded".}
proc lv_obj_get_style_line_color*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_line_color".}
proc lv_obj_get_style_line_color_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_line_color_filtered".}
proc lv_obj_get_style_line_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_line_opa".}
proc lv_obj_get_style_arc_width*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_arc_width".}
proc lv_obj_get_style_arc_rounded*(obj: ptr lv_obj_t; part: lv_part_t): bool {.
    cdecl, importc: "lv_obj_get_style_arc_rounded".}
proc lv_obj_get_style_arc_color*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_arc_color".}
proc lv_obj_get_style_arc_color_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_arc_color_filtered".}
proc lv_obj_get_style_arc_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_arc_opa".}
proc lv_obj_get_style_arc_image_src*(obj: ptr lv_obj_t; part: lv_part_t): pointer {.
    cdecl, importc: "lv_obj_get_style_arc_image_src".}
proc lv_obj_get_style_text_color*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_text_color".}
proc lv_obj_get_style_text_color_filtered*(obj: ptr lv_obj_t; part: lv_part_t): lv_color_t {.
    cdecl, importc: "lv_obj_get_style_text_color_filtered".}
proc lv_obj_get_style_text_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_text_opa".}
proc lv_obj_get_style_text_font*(obj: ptr lv_obj_t; part: lv_part_t): ptr lv_font_t {.
    cdecl, importc: "lv_obj_get_style_text_font".}
proc lv_obj_get_style_text_letter_space*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_text_letter_space".}
proc lv_obj_get_style_text_line_space*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_text_line_space".}
proc lv_obj_get_style_text_decor*(obj: ptr lv_obj_t; part: lv_part_t): lv_text_decor_t {.
    cdecl, importc: "lv_obj_get_style_text_decor".}
proc lv_obj_get_style_text_align*(obj: ptr lv_obj_t; part: lv_part_t): lv_text_align_t {.
    cdecl, importc: "lv_obj_get_style_text_align".}
proc lv_obj_get_style_radius*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_radius".}
proc lv_obj_get_style_clip_corner*(obj: ptr lv_obj_t; part: lv_part_t): bool {.
    cdecl, importc: "lv_obj_get_style_clip_corner".}
proc lv_obj_get_style_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_opa".}
proc lv_obj_get_style_opa_layered*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_opa_layered".}
proc lv_obj_get_style_color_filter_dsc*(obj: ptr lv_obj_t; part: lv_part_t): ptr lv_color_filter_dsc_t {.
    cdecl, importc: "lv_obj_get_style_color_filter_dsc".}
proc lv_obj_get_style_color_filter_opa*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_color_filter_opa".}
proc lv_obj_get_style_anim*(obj: ptr lv_obj_t; part: lv_part_t): ptr lv_anim_t {.
    cdecl, importc: "lv_obj_get_style_anim".}
proc lv_obj_get_style_transition*(obj: ptr lv_obj_t; part: lv_part_t): ptr lv_style_transition_dsc_t {.
    cdecl, importc: "lv_obj_get_style_transition".}
proc lv_obj_get_style_blend_mode*(obj: ptr lv_obj_t; part: lv_part_t): lv_blend_mode_t {.
    cdecl, importc: "lv_obj_get_style_blend_mode".}
proc lv_obj_get_style_layout*(obj: ptr lv_obj_t; part: lv_part_t): uint16 {.
    cdecl, importc: "lv_obj_get_style_layout".}
proc lv_obj_get_style_base_dir*(obj: ptr lv_obj_t; part: lv_part_t): lv_base_dir_t {.
    cdecl, importc: "lv_obj_get_style_base_dir".}
proc lv_obj_get_style_bitmap_mask_src*(obj: ptr lv_obj_t; part: lv_part_t): pointer {.
    cdecl, importc: "lv_obj_get_style_bitmap_mask_src".}
proc lv_obj_get_style_rotary_sensitivity*(obj: ptr lv_obj_t; part: lv_part_t): uint32 {.
    cdecl, importc: "lv_obj_get_style_rotary_sensitivity".}
proc lv_obj_get_style_flex_flow*(obj: ptr lv_obj_t; part: lv_part_t): lv_flex_flow_t {.
    cdecl, importc: "lv_obj_get_style_flex_flow".}
proc lv_obj_get_style_flex_main_place*(obj: ptr lv_obj_t; part: lv_part_t): lv_flex_align_t {.
    cdecl, importc: "lv_obj_get_style_flex_main_place".}
proc lv_obj_get_style_flex_cross_place*(obj: ptr lv_obj_t; part: lv_part_t): lv_flex_align_t {.
    cdecl, importc: "lv_obj_get_style_flex_cross_place".}
proc lv_obj_get_style_flex_track_place*(obj: ptr lv_obj_t; part: lv_part_t): lv_flex_align_t {.
    cdecl, importc: "lv_obj_get_style_flex_track_place".}
proc lv_obj_get_style_flex_grow*(obj: ptr lv_obj_t; part: lv_part_t): uint8 {.
    cdecl, importc: "lv_obj_get_style_flex_grow".}
proc lv_obj_get_style_grid_column_dsc_array*(obj: ptr lv_obj_t; part: lv_part_t): ptr int32 {.
    cdecl, importc: "lv_obj_get_style_grid_column_dsc_array".}
proc lv_obj_get_style_grid_column_align*(obj: ptr lv_obj_t; part: lv_part_t): lv_grid_align_t {.
    cdecl, importc: "lv_obj_get_style_grid_column_align".}
proc lv_obj_get_style_grid_row_dsc_array*(obj: ptr lv_obj_t; part: lv_part_t): ptr int32 {.
    cdecl, importc: "lv_obj_get_style_grid_row_dsc_array".}
proc lv_obj_get_style_grid_row_align*(obj: ptr lv_obj_t; part: lv_part_t): lv_grid_align_t {.
    cdecl, importc: "lv_obj_get_style_grid_row_align".}
proc lv_obj_get_style_grid_cell_column_pos*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_grid_cell_column_pos".}
proc lv_obj_get_style_grid_cell_x_align*(obj: ptr lv_obj_t; part: lv_part_t): lv_grid_align_t {.
    cdecl, importc: "lv_obj_get_style_grid_cell_x_align".}
proc lv_obj_get_style_grid_cell_column_span*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_grid_cell_column_span".}
proc lv_obj_get_style_grid_cell_row_pos*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_grid_cell_row_pos".}
proc lv_obj_get_style_grid_cell_y_align*(obj: ptr lv_obj_t; part: lv_part_t): lv_grid_align_t {.
    cdecl, importc: "lv_obj_get_style_grid_cell_y_align".}
proc lv_obj_get_style_grid_cell_row_span*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_grid_cell_row_span".}
proc lv_obj_set_style_width*(obj: ptr lv_obj_t; value: int32;
                             selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_width".}
proc lv_obj_set_style_min_width*(obj: ptr lv_obj_t; value: int32;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_min_width".}
proc lv_obj_set_style_max_width*(obj: ptr lv_obj_t; value: int32;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_max_width".}
proc lv_obj_set_style_height*(obj: ptr lv_obj_t; value: int32;
                              selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_height".}
proc lv_obj_set_style_min_height*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_min_height".}
proc lv_obj_set_style_max_height*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_max_height".}
proc lv_obj_set_style_length*(obj: ptr lv_obj_t; value: int32;
                              selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_length".}
proc lv_obj_set_style_x*(obj: ptr lv_obj_t; value: int32;
                         selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_x".}
proc lv_obj_set_style_y*(obj: ptr lv_obj_t; value: int32;
                         selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_y".}
proc lv_obj_set_style_align*(obj: ptr lv_obj_t; value: lv_align_t;
                             selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_align".}
proc lv_obj_set_style_transform_width*(obj: ptr lv_obj_t; value: int32;
                                       selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_transform_width".}
proc lv_obj_set_style_transform_height*(obj: ptr lv_obj_t; value: int32;
                                        selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_transform_height".}
proc lv_obj_set_style_translate_x*(obj: ptr lv_obj_t; value: int32;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_translate_x".}
proc lv_obj_set_style_translate_y*(obj: ptr lv_obj_t; value: int32;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_translate_y".}
proc lv_obj_set_style_transform_scale_x*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_transform_scale_x".}
proc lv_obj_set_style_transform_scale_y*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_transform_scale_y".}
proc lv_obj_set_style_transform_pivot_x*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_transform_pivot_x".}
proc lv_obj_set_style_transform_pivot_y*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_transform_pivot_y".}
proc lv_obj_set_style_transform_skew_x*(obj: ptr lv_obj_t; value: int32;
                                        selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_transform_skew_x".}
proc lv_obj_set_style_transform_skew_y*(obj: ptr lv_obj_t; value: int32;
                                        selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_transform_skew_y".}
proc lv_obj_set_style_pad_top*(obj: ptr lv_obj_t; value: int32;
                               selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_top".}
proc lv_obj_set_style_pad_bottom*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_bottom".}
proc lv_obj_set_style_pad_left*(obj: ptr lv_obj_t; value: int32;
                                selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_left".}
proc lv_obj_set_style_pad_right*(obj: ptr lv_obj_t; value: int32;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_right".}
proc lv_obj_set_style_pad_row*(obj: ptr lv_obj_t; value: int32;
                               selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_row".}
proc lv_obj_set_style_pad_column*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_column".}
proc lv_obj_set_style_margin_top*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_margin_top".}
proc lv_obj_set_style_margin_bottom*(obj: ptr lv_obj_t; value: int32;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_margin_bottom".}
proc lv_obj_set_style_margin_left*(obj: ptr lv_obj_t; value: int32;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_margin_left".}
proc lv_obj_set_style_margin_right*(obj: ptr lv_obj_t; value: int32;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_margin_right".}
proc lv_obj_set_style_bg_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_bg_color".}
proc lv_obj_set_style_bg_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                              selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_bg_opa".}
proc lv_obj_set_style_bg_grad_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_bg_grad_color".}
proc lv_obj_set_style_bg_grad_dir*(obj: ptr lv_obj_t; value: lv_grad_dir_t;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_bg_grad_dir".}
proc lv_obj_set_style_bg_main_stop*(obj: ptr lv_obj_t; value: int32;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_bg_main_stop".}
proc lv_obj_set_style_bg_grad_stop*(obj: ptr lv_obj_t; value: int32;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_bg_grad_stop".}
proc lv_obj_set_style_bg_main_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_bg_main_opa".}
proc lv_obj_set_style_bg_grad_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_bg_grad_opa".}
proc lv_obj_set_style_bg_grad*(obj: ptr lv_obj_t; value: ptr lv_grad_dsc_t;
                               selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_bg_grad".}
proc lv_obj_set_style_bg_image_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_bg_image_opa".}
proc lv_obj_set_style_bg_image_tiled*(obj: ptr lv_obj_t; value: bool;
                                      selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_bg_image_tiled".}
proc lv_obj_set_style_border_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_border_color".}
proc lv_obj_set_style_border_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_border_opa".}
proc lv_obj_set_style_border_width*(obj: ptr lv_obj_t; value: int32;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_border_width".}
proc lv_obj_set_style_border_side*(obj: ptr lv_obj_t; value: lv_border_side_t;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_border_side".}
proc lv_obj_set_style_border_post*(obj: ptr lv_obj_t; value: bool;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_border_post".}
proc lv_obj_set_style_outline_width*(obj: ptr lv_obj_t; value: int32;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_outline_width".}
proc lv_obj_set_style_outline_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_outline_color".}
proc lv_obj_set_style_outline_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_outline_opa".}
proc lv_obj_set_style_outline_pad*(obj: ptr lv_obj_t; value: int32;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_outline_pad".}
proc lv_obj_set_style_shadow_width*(obj: ptr lv_obj_t; value: int32;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_shadow_width".}
proc lv_obj_set_style_shadow_spread*(obj: ptr lv_obj_t; value: int32;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_shadow_spread".}
proc lv_obj_set_style_shadow_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_shadow_color".}
proc lv_obj_set_style_shadow_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_shadow_opa".}
proc lv_obj_set_style_line_width*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_line_width".}
proc lv_obj_set_style_line_dash_width*(obj: ptr lv_obj_t; value: int32;
                                       selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_line_dash_width".}
proc lv_obj_set_style_line_dash_gap*(obj: ptr lv_obj_t; value: int32;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_line_dash_gap".}
proc lv_obj_set_style_line_rounded*(obj: ptr lv_obj_t; value: bool;
                                    selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_line_rounded".}
proc lv_obj_set_style_line_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_line_color".}
proc lv_obj_set_style_line_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_line_opa".}
proc lv_obj_set_style_arc_width*(obj: ptr lv_obj_t; value: int32;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_arc_width".}
proc lv_obj_set_style_arc_rounded*(obj: ptr lv_obj_t; value: bool;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_arc_rounded".}
proc lv_obj_set_style_arc_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_arc_color".}
proc lv_obj_set_style_arc_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                               selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_arc_opa".}
proc lv_obj_set_style_arc_image_src*(obj: ptr lv_obj_t; value: pointer;
                                     selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_arc_image_src".}
proc lv_obj_set_style_text_color*(obj: ptr lv_obj_t; value: lv_color_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_text_color".}
proc lv_obj_set_style_text_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_text_opa".}
proc lv_obj_set_style_text_font*(obj: ptr lv_obj_t; value: ptr lv_font_t;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_text_font".}
proc lv_obj_set_style_text_letter_space*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_text_letter_space".}
proc lv_obj_set_style_text_line_space*(obj: ptr lv_obj_t; value: int32;
                                       selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_text_line_space".}
proc lv_obj_set_style_text_decor*(obj: ptr lv_obj_t; value: lv_text_decor_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_text_decor".}
proc lv_obj_set_style_text_align*(obj: ptr lv_obj_t; value: lv_text_align_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_text_align".}
proc lv_obj_set_style_radius*(obj: ptr lv_obj_t; value: int32;
                              selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_radius".}
proc lv_obj_set_style_clip_corner*(obj: ptr lv_obj_t; value: bool;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_clip_corner".}
proc lv_obj_set_style_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                           selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_opa".}
proc lv_obj_set_style_opa_layered*(obj: ptr lv_obj_t; value: lv_opa_t;
                                   selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_opa_layered".}
proc lv_obj_set_style_color_filter_dsc*(obj: ptr lv_obj_t;
                                        value: ptr lv_color_filter_dsc_t;
                                        selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_color_filter_dsc".}
proc lv_obj_set_style_color_filter_opa*(obj: ptr lv_obj_t; value: lv_opa_t;
                                        selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_color_filter_opa".}
proc lv_obj_set_style_anim*(obj: ptr lv_obj_t; value: ptr lv_anim_t;
                            selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_anim".}
proc lv_obj_set_style_transition*(obj: ptr lv_obj_t;
                                  value: ptr lv_style_transition_dsc_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_transition".}
proc lv_obj_set_style_blend_mode*(obj: ptr lv_obj_t; value: lv_blend_mode_t;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_blend_mode".}
proc lv_obj_set_style_layout*(obj: ptr lv_obj_t; value: uint16;
                              selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_layout".}
proc lv_obj_set_style_base_dir*(obj: ptr lv_obj_t; value: lv_base_dir_t;
                                selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_base_dir".}
proc lv_obj_set_style_bitmap_mask_src*(obj: ptr lv_obj_t; value: pointer;
                                       selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_bitmap_mask_src".}
proc lv_obj_set_style_rotary_sensitivity*(obj: ptr lv_obj_t; value: uint32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_rotary_sensitivity".}
proc lv_obj_set_style_flex_flow*(obj: ptr lv_obj_t; value: lv_flex_flow_t;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_flex_flow".}
proc lv_obj_set_style_flex_main_place*(obj: ptr lv_obj_t;
                                       value: lv_flex_align_t;
                                       selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_flex_main_place".}
proc lv_obj_set_style_flex_cross_place*(obj: ptr lv_obj_t;
                                        value: lv_flex_align_t;
                                        selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_flex_cross_place".}
proc lv_obj_set_style_flex_track_place*(obj: ptr lv_obj_t;
                                        value: lv_flex_align_t;
                                        selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_flex_track_place".}
proc lv_obj_set_style_flex_grow*(obj: ptr lv_obj_t; value: uint8;
                                 selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_flex_grow".}
proc lv_obj_set_style_grid_column_dsc_array*(obj: ptr lv_obj_t;
    value: ptr int32; selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_column_dsc_array".}
proc lv_obj_set_style_grid_column_align*(obj: ptr lv_obj_t;
    value: lv_grid_align_t; selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_column_align".}
proc lv_obj_set_style_grid_row_dsc_array*(obj: ptr lv_obj_t; value: ptr int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_row_dsc_array".}
proc lv_obj_set_style_grid_row_align*(obj: ptr lv_obj_t; value: lv_grid_align_t;
                                      selector: lv_style_selector_t): void {.
    cdecl, importc: "lv_obj_set_style_grid_row_align".}
proc lv_obj_set_style_grid_cell_column_pos*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_column_pos".}
proc lv_obj_set_style_grid_cell_x_align*(obj: ptr lv_obj_t;
    value: lv_grid_align_t; selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_x_align".}
proc lv_obj_set_style_grid_cell_column_span*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_column_span".}
proc lv_obj_set_style_grid_cell_row_pos*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_row_pos".}
proc lv_obj_set_style_grid_cell_y_align*(obj: ptr lv_obj_t;
    value: lv_grid_align_t; selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_y_align".}
proc lv_obj_set_style_grid_cell_row_span*(obj: ptr lv_obj_t; value: int32;
    selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_row_span".}
proc lv_obj_set_style_pad_all*(obj: ptr lv_obj_t; value: int32;
                               selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_all".}
proc lv_obj_set_style_pad_hor*(obj: ptr lv_obj_t; value: int32;
                               selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_hor".}
proc lv_obj_set_style_pad_ver*(obj: ptr lv_obj_t; value: int32;
                               selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_ver".}
proc lv_obj_set_style_margin_all*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_margin_all".}
proc lv_obj_set_style_margin_hor*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_margin_hor".}
proc lv_obj_set_style_margin_ver*(obj: ptr lv_obj_t; value: int32;
                                  selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_margin_ver".}
proc lv_obj_set_style_pad_gap*(obj: ptr lv_obj_t; value: int32;
                               selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_pad_gap".}
proc lv_obj_set_style_size*(obj: ptr lv_obj_t; width: int32; height: int32;
                            selector: lv_style_selector_t): void {.cdecl,
    importc: "lv_obj_set_style_size".}
proc lv_obj_get_style_space_left*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_space_left".}
proc lv_obj_get_style_space_right*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_space_right".}
proc lv_obj_get_style_space_top*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_space_top".}
proc lv_obj_get_style_space_bottom*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_space_bottom".}
proc lv_obj_calculate_style_text_align*(obj: ptr lv_obj_t; part: lv_part_t;
                                        txt: cstring): lv_text_align_t {.cdecl,
    importc: "lv_obj_calculate_style_text_align".}
proc lv_obj_get_style_transform_scale_x_safe*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_scale_x_safe".}
proc lv_obj_get_style_transform_scale_y_safe*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_scale_y_safe".}
proc lv_obj_get_style_opa_recursive*(obj: ptr lv_obj_t; part: lv_part_t): lv_opa_t {.
    cdecl, importc: "lv_obj_get_style_opa_recursive".}
proc lv_gradient_color_calculate*(dsc: ptr lv_grad_dsc_t; range_arg: int32;
                                  frac: int32; color_out: ptr lv_grad_color_t;
                                  opa_out: ptr lv_opa_t): void {.cdecl,
    importc: "lv_gradient_color_calculate".}
proc lv_gradient_get*(gradient: ptr lv_grad_dsc_t; w: int32; h: int32): ptr lv_grad_t {.
    cdecl, importc: "lv_gradient_get".}
proc lv_gradient_cleanup*(grad: ptr lv_grad_t): void {.cdecl,
    importc: "lv_gradient_cleanup".}
proc lv_gradient_init_stops*(grad: ptr lv_grad_dsc_t;
                             colors: ptr UncheckedArray[lv_color_t];
                             opa: ptr UncheckedArray[lv_opa_t];
                             fracs: ptr UncheckedArray[uint8]; num_stops: cint): void {.
    cdecl, importc: "lv_gradient_init_stops".}
proc lv_draw_rect_dsc_init*(dsc: ptr lv_draw_rect_dsc_t): void {.cdecl,
    importc: "lv_draw_rect_dsc_init".}
proc lv_draw_fill_dsc_init*(dsc: ptr lv_draw_fill_dsc_t): void {.cdecl,
    importc: "lv_draw_fill_dsc_init".}
proc lv_draw_task_get_fill_dsc*(task: ptr lv_draw_task_t): ptr lv_draw_fill_dsc_t {.
    cdecl, importc: "lv_draw_task_get_fill_dsc".}
proc lv_draw_border_dsc_init*(dsc: ptr lv_draw_border_dsc_t): void {.cdecl,
    importc: "lv_draw_border_dsc_init".}
proc lv_draw_task_get_border_dsc*(task: ptr lv_draw_task_t): ptr lv_draw_border_dsc_t {.
    cdecl, importc: "lv_draw_task_get_border_dsc".}
proc lv_draw_box_shadow_dsc_init*(dsc: ptr lv_draw_box_shadow_dsc_t): void {.
    cdecl, importc: "lv_draw_box_shadow_dsc_init".}
proc lv_draw_task_get_box_shadow_dsc*(task: ptr lv_draw_task_t): ptr lv_draw_box_shadow_dsc_t {.
    cdecl, importc: "lv_draw_task_get_box_shadow_dsc".}
proc lv_draw_rect*(layer: ptr lv_layer_t; dsc: ptr lv_draw_rect_dsc_t;
                   coords: ptr lv_area_t): void {.cdecl, importc: "lv_draw_rect".}
proc lv_draw_label_dsc_init*(dsc: ptr lv_draw_label_dsc_t): void {.cdecl,
    importc: "lv_draw_label_dsc_init".}
proc lv_draw_task_get_label_dsc*(task: ptr lv_draw_task_t): ptr lv_draw_label_dsc_t {.
    cdecl, importc: "lv_draw_task_get_label_dsc".}
proc lv_draw_glyph_dsc_init*(dsc: ptr lv_draw_glyph_dsc_t): void {.cdecl,
    importc: "lv_draw_glyph_dsc_init".}
proc lv_draw_label*(layer: ptr lv_layer_t; dsc: ptr lv_draw_label_dsc_t;
                    coords: ptr lv_area_t): void {.cdecl,
    importc: "lv_draw_label".}
proc lv_draw_character*(layer: ptr lv_layer_t; dsc: ptr lv_draw_label_dsc_t;
                        point: ptr lv_point_t; unicode_letter: uint32): void {.
    cdecl, importc: "lv_draw_character".}
proc lv_draw_label_iterate_characters*(draw_unit: ptr lv_draw_unit_t;
                                       dsc: ptr lv_draw_label_dsc_t;
                                       coords: ptr lv_area_t;
                                       cb: lv_draw_glyph_cb_t): void {.cdecl,
    importc: "lv_draw_label_iterate_characters".}
proc lv_draw_image_dsc_init*(dsc: ptr lv_draw_image_dsc_t): void {.cdecl,
    importc: "lv_draw_image_dsc_init".}
proc lv_draw_task_get_image_dsc*(task: ptr lv_draw_task_t): ptr lv_draw_image_dsc_t {.
    cdecl, importc: "lv_draw_task_get_image_dsc".}
proc lv_draw_image*(layer: ptr lv_layer_t; dsc: ptr lv_draw_image_dsc_t;
                    coords: ptr lv_area_t): void {.cdecl,
    importc: "lv_draw_image".}
proc lv_draw_layer*(layer: ptr lv_layer_t; dsc: ptr lv_draw_image_dsc_t;
                    coords: ptr lv_area_t): void {.cdecl,
    importc: "lv_draw_layer".}
proc lv_image_src_get_type*(src: pointer): lv_image_src_t {.cdecl,
    importc: "lv_image_src_get_type".}
proc lv_draw_line_dsc_init*(dsc: ptr lv_draw_line_dsc_t): void {.cdecl,
    importc: "lv_draw_line_dsc_init".}
proc lv_draw_task_get_line_dsc*(task: ptr lv_draw_task_t): ptr lv_draw_line_dsc_t {.
    cdecl, importc: "lv_draw_task_get_line_dsc".}
proc lv_draw_line*(layer: ptr lv_layer_t; dsc: ptr lv_draw_line_dsc_t): void {.
    cdecl, importc: "lv_draw_line".}
proc lv_draw_arc_dsc_init*(dsc: ptr lv_draw_arc_dsc_t): void {.cdecl,
    importc: "lv_draw_arc_dsc_init".}
proc lv_draw_task_get_arc_dsc*(task: ptr lv_draw_task_t): ptr lv_draw_arc_dsc_t {.
    cdecl, importc: "lv_draw_task_get_arc_dsc".}
proc lv_draw_arc*(layer: ptr lv_layer_t; dsc: ptr lv_draw_arc_dsc_t): void {.
    cdecl, importc: "lv_draw_arc".}
proc lv_draw_arc_get_area*(x: int32; y: int32; radius: uint16;
                           start_angle: lv_value_precise_t;
                           end_angle: lv_value_precise_t; w: int32;
                           rounded: bool; area: ptr lv_area_t): void {.cdecl,
    importc: "lv_draw_arc_get_area".}
proc lv_obj_init_draw_rect_dsc*(obj: ptr lv_obj_t; part: lv_part_t;
                                draw_dsc: ptr lv_draw_rect_dsc_t): void {.cdecl,
    importc: "lv_obj_init_draw_rect_dsc".}
proc lv_obj_init_draw_label_dsc*(obj: ptr lv_obj_t; part: lv_part_t;
                                 draw_dsc: ptr lv_draw_label_dsc_t): void {.
    cdecl, importc: "lv_obj_init_draw_label_dsc".}
proc lv_obj_init_draw_image_dsc*(obj: ptr lv_obj_t; part: lv_part_t;
                                 draw_dsc: ptr lv_draw_image_dsc_t): void {.
    cdecl, importc: "lv_obj_init_draw_image_dsc".}
proc lv_obj_init_draw_line_dsc*(obj: ptr lv_obj_t; part: lv_part_t;
                                draw_dsc: ptr lv_draw_line_dsc_t): void {.cdecl,
    importc: "lv_obj_init_draw_line_dsc".}
proc lv_obj_init_draw_arc_dsc*(obj: ptr lv_obj_t; part: lv_part_t;
                               draw_dsc: ptr lv_draw_arc_dsc_t): void {.cdecl,
    importc: "lv_obj_init_draw_arc_dsc".}
proc lv_obj_calculate_ext_draw_size*(obj: ptr lv_obj_t; part: lv_part_t): int32 {.
    cdecl, importc: "lv_obj_calculate_ext_draw_size".}
proc lv_obj_refresh_ext_draw_size*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_refresh_ext_draw_size".}
proc lv_obj_class_create_obj*(class_p: ptr lv_obj_class_t; parent: ptr lv_obj_t): ptr lv_obj_t {.
    cdecl, importc: "lv_obj_class_create_obj".}
proc lv_obj_class_init_obj*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_class_init_obj".}
proc lv_obj_is_editable*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_obj_is_editable".}
proc lv_obj_is_group_def*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_obj_is_group_def".}
proc lv_group_create*(): ptr lv_group_t {.cdecl, importc: "lv_group_create".}
proc lv_group_set_default*(group: ptr lv_group_t): void {.cdecl,
    importc: "lv_group_set_default".}
proc lv_group_get_default*(): ptr lv_group_t {.cdecl,
    importc: "lv_group_get_default".}
proc lv_group_add_obj*(group: ptr lv_group_t; obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_group_add_obj".}
proc lv_group_swap_obj*(obj1: ptr lv_obj_t; obj2: ptr lv_obj_t): void {.cdecl,
    importc: "lv_group_swap_obj".}
proc lv_group_remove_obj*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_group_remove_obj".}
proc lv_group_remove_all_objs*(group: ptr lv_group_t): void {.cdecl,
    importc: "lv_group_remove_all_objs".}
proc lv_group_focus_obj*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_group_focus_obj".}
proc lv_group_focus_next*(group: ptr lv_group_t): void {.cdecl,
    importc: "lv_group_focus_next".}
proc lv_group_focus_prev*(group: ptr lv_group_t): void {.cdecl,
    importc: "lv_group_focus_prev".}
proc lv_group_focus_freeze*(group: ptr lv_group_t; en: bool): void {.cdecl,
    importc: "lv_group_focus_freeze".}
proc lv_group_send_data*(group: ptr lv_group_t; c: uint32): lv_result_t {.cdecl,
    importc: "lv_group_send_data".}
proc lv_group_set_focus_cb*(group: ptr lv_group_t; focus_cb: lv_group_focus_cb_t): void {.
    cdecl, importc: "lv_group_set_focus_cb".}
proc lv_group_set_edge_cb*(group: ptr lv_group_t; edge_cb: lv_group_edge_cb_t): void {.
    cdecl, importc: "lv_group_set_edge_cb".}
proc lv_group_set_refocus_policy*(group: ptr lv_group_t;
                                  policy: lv_group_refocus_policy_t): void {.
    cdecl, importc: "lv_group_set_refocus_policy".}
proc lv_group_set_editing*(group: ptr lv_group_t; edit: bool): void {.cdecl,
    importc: "lv_group_set_editing".}
proc lv_group_set_wrap*(group: ptr lv_group_t; en: bool): void {.cdecl,
    importc: "lv_group_set_wrap".}
proc lv_group_get_focused*(group: ptr lv_group_t): ptr lv_obj_t {.cdecl,
    importc: "lv_group_get_focused".}
proc lv_group_get_focus_cb*(group: ptr lv_group_t): lv_group_focus_cb_t {.cdecl,
    importc: "lv_group_get_focus_cb".}
proc lv_group_get_edge_cb*(group: ptr lv_group_t): lv_group_edge_cb_t {.cdecl,
    importc: "lv_group_get_edge_cb".}
proc lv_group_get_editing*(group: ptr lv_group_t): bool {.cdecl,
    importc: "lv_group_get_editing".}
proc lv_group_get_wrap*(group: ptr lv_group_t): bool {.cdecl,
    importc: "lv_group_get_wrap".}
proc lv_group_get_obj_count*(group: ptr lv_group_t): uint32 {.cdecl,
    importc: "lv_group_get_obj_count".}
proc lv_group_get_obj_by_index*(group: ptr lv_group_t; index: uint32): ptr lv_obj_t {.
    cdecl, importc: "lv_group_get_obj_by_index".}
proc lv_group_get_count*(): uint32 {.cdecl, importc: "lv_group_get_count".}
proc lv_group_by_index*(index: uint32): ptr lv_group_t {.cdecl,
    importc: "lv_group_by_index".}
proc lv_indev_create*(): ptr lv_indev_t {.cdecl, importc: "lv_indev_create".}
proc lv_indev_delete*(indev: ptr lv_indev_t): void {.cdecl,
    importc: "lv_indev_delete".}
proc lv_indev_get_next*(indev: ptr lv_indev_t): ptr lv_indev_t {.cdecl,
    importc: "lv_indev_get_next".}
proc lv_indev_read*(indev: ptr lv_indev_t): void {.cdecl,
    importc: "lv_indev_read".}
proc lv_indev_read_timer_cb*(timer: ptr lv_timer_t): void {.cdecl,
    importc: "lv_indev_read_timer_cb".}
proc lv_indev_enable*(indev: ptr lv_indev_t; enable: bool): void {.cdecl,
    importc: "lv_indev_enable".}
proc lv_indev_set_type*(indev: ptr lv_indev_t; indev_type: lv_indev_type_t): void {.
    cdecl, importc: "lv_indev_set_type".}
proc lv_indev_set_read_cb*(indev: ptr lv_indev_t; read_cb: lv_indev_read_cb_t): void {.
    cdecl, importc: "lv_indev_set_read_cb".}
proc lv_indev_set_user_data*(indev: ptr lv_indev_t; user_data: pointer): void {.
    cdecl, importc: "lv_indev_set_user_data".}
proc lv_indev_set_driver_data*(indev: ptr lv_indev_t; driver_data: pointer): void {.
    cdecl, importc: "lv_indev_set_driver_data".}
proc lv_indev_set_long_press_time*(indev: ptr lv_indev_t;
                                   long_press_time: uint16): void {.cdecl,
    importc: "lv_indev_set_long_press_time".}
proc lv_indev_set_scroll_limit*(indev: ptr lv_indev_t; scroll_limit: uint8): void {.
    cdecl, importc: "lv_indev_set_scroll_limit".}
proc lv_indev_set_scroll_throw*(indev: ptr lv_indev_t; scroll_throw: uint8): void {.
    cdecl, importc: "lv_indev_set_scroll_throw".}
proc lv_indev_get_type*(indev: ptr lv_indev_t): lv_indev_type_t {.cdecl,
    importc: "lv_indev_get_type".}
proc lv_indev_get_read_cb*(indev: ptr lv_indev_t): lv_indev_read_cb_t {.cdecl,
    importc: "lv_indev_get_read_cb".}
proc lv_indev_get_state*(indev: ptr lv_indev_t): lv_indev_state_t {.cdecl,
    importc: "lv_indev_get_state".}
proc lv_indev_get_group*(indev: ptr lv_indev_t): ptr lv_group_t {.cdecl,
    importc: "lv_indev_get_group".}
proc lv_indev_get_display*(indev: ptr lv_indev_t): ptr lv_display_t {.cdecl,
    importc: "lv_indev_get_display".}
proc lv_indev_get_user_data*(indev: ptr lv_indev_t): pointer {.cdecl,
    importc: "lv_indev_get_user_data".}
proc lv_indev_get_driver_data*(indev: ptr lv_indev_t): pointer {.cdecl,
    importc: "lv_indev_get_driver_data".}
proc lv_indev_get_press_moved*(indev: ptr lv_indev_t): bool {.cdecl,
    importc: "lv_indev_get_press_moved".}
proc lv_indev_reset*(indev: ptr lv_indev_t; obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_indev_reset".}
proc lv_indev_stop_processing*(indev: ptr lv_indev_t): void {.cdecl,
    importc: "lv_indev_stop_processing".}
proc lv_indev_reset_long_press*(indev: ptr lv_indev_t): void {.cdecl,
    importc: "lv_indev_reset_long_press".}
proc lv_indev_set_cursor*(indev: ptr lv_indev_t; cur_obj: ptr lv_obj_t): void {.
    cdecl, importc: "lv_indev_set_cursor".}
proc lv_indev_set_group*(indev: ptr lv_indev_t; group: ptr lv_group_t): void {.
    cdecl, importc: "lv_indev_set_group".}
proc lv_indev_set_button_points*(indev: ptr lv_indev_t;
                                 points: ptr UncheckedArray[lv_point_t]): void {.
    cdecl, importc: "lv_indev_set_button_points".}
proc lv_indev_get_point*(indev: ptr lv_indev_t; point: ptr lv_point_t): void {.
    cdecl, importc: "lv_indev_get_point".}
proc lv_indev_get_gesture_dir*(indev: ptr lv_indev_t): lv_dir_t {.cdecl,
    importc: "lv_indev_get_gesture_dir".}
proc lv_indev_get_key*(indev: ptr lv_indev_t): uint32 {.cdecl,
    importc: "lv_indev_get_key".}
proc lv_indev_get_scroll_dir*(indev: ptr lv_indev_t): lv_dir_t {.cdecl,
    importc: "lv_indev_get_scroll_dir".}
proc lv_indev_get_scroll_obj*(indev: ptr lv_indev_t): ptr lv_obj_t {.cdecl,
    importc: "lv_indev_get_scroll_obj".}
proc lv_indev_get_vect*(indev: ptr lv_indev_t; point: ptr lv_point_t): void {.
    cdecl, importc: "lv_indev_get_vect".}
proc lv_indev_wait_release*(indev: ptr lv_indev_t): void {.cdecl,
    importc: "lv_indev_wait_release".}
proc lv_indev_get_active_obj*(): ptr lv_obj_t {.cdecl,
    importc: "lv_indev_get_active_obj".}
proc lv_indev_get_read_timer*(indev: ptr lv_indev_t): ptr lv_timer_t {.cdecl,
    importc: "lv_indev_get_read_timer".}
proc lv_indev_set_mode*(indev: ptr lv_indev_t; mode: lv_indev_mode_t): void {.
    cdecl, importc: "lv_indev_set_mode".}
proc lv_indev_get_mode*(indev: ptr lv_indev_t): lv_indev_mode_t {.cdecl,
    importc: "lv_indev_get_mode".}
proc lv_indev_search_obj*(obj: ptr lv_obj_t; point: ptr lv_point_t): ptr lv_obj_t {.
    cdecl, importc: "lv_indev_search_obj".}
proc lv_indev_add_event_cb*(indev: ptr lv_indev_t; event_cb: lv_event_cb_t;
                            filter: lv_event_code_t; user_data: pointer): void {.
    cdecl, importc: "lv_indev_add_event_cb".}
proc lv_indev_get_event_count*(indev: ptr lv_indev_t): uint32 {.cdecl,
    importc: "lv_indev_get_event_count".}
proc lv_indev_get_event_dsc*(indev: ptr lv_indev_t; index: uint32): ptr lv_event_dsc_t {.
    cdecl, importc: "lv_indev_get_event_dsc".}
proc lv_indev_remove_event*(indev: ptr lv_indev_t; index: uint32): bool {.cdecl,
    importc: "lv_indev_remove_event".}
proc lv_indev_remove_event_cb_with_user_data*(indev: ptr lv_indev_t;
    event_cb: lv_event_cb_t; user_data: pointer): uint32 {.cdecl,
    importc: "lv_indev_remove_event_cb_with_user_data".}
proc lv_indev_send_event*(indev: ptr lv_indev_t; code: lv_event_code_t;
                          param: pointer): lv_result_t {.cdecl,
    importc: "lv_indev_send_event".}
proc lv_obj_send_event*(obj: ptr lv_obj_t; event_code: lv_event_code_t;
                        param: pointer): lv_result_t {.cdecl,
    importc: "lv_obj_send_event".}
proc lv_obj_event_base*(class_p: ptr lv_obj_class_t; e: ptr lv_event_t): lv_result_t {.
    cdecl, importc: "lv_obj_event_base".}
proc lv_event_get_current_target_obj*(e: ptr lv_event_t): ptr lv_obj_t {.cdecl,
    importc: "lv_event_get_current_target_obj".}
proc lv_event_get_target_obj*(e: ptr lv_event_t): ptr lv_obj_t {.cdecl,
    importc: "lv_event_get_target_obj".}
proc lv_obj_get_event_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_obj_get_event_count".}
proc lv_obj_get_event_dsc*(obj: ptr lv_obj_t; index: uint32): ptr lv_event_dsc_t {.
    cdecl, importc: "lv_obj_get_event_dsc".}
proc lv_obj_remove_event*(obj: ptr lv_obj_t; index: uint32): bool {.cdecl,
    importc: "lv_obj_remove_event".}
proc lv_obj_remove_event_cb*(obj: ptr lv_obj_t; event_cb: lv_event_cb_t): bool {.
    cdecl, importc: "lv_obj_remove_event_cb".}
proc lv_obj_remove_event_dsc*(obj: ptr lv_obj_t; dsc: ptr lv_event_dsc_t): bool {.
    cdecl, importc: "lv_obj_remove_event_dsc".}
proc lv_obj_remove_event_cb_with_user_data*(obj: ptr lv_obj_t;
    event_cb: lv_event_cb_t; user_data: pointer): uint32 {.cdecl,
    importc: "lv_obj_remove_event_cb_with_user_data".}
proc lv_event_get_indev*(e: ptr lv_event_t): ptr lv_indev_t {.cdecl,
    importc: "lv_event_get_indev".}
proc lv_event_get_layer*(e: ptr lv_event_t): ptr lv_layer_t {.cdecl,
    importc: "lv_event_get_layer".}
proc lv_event_get_old_size*(e: ptr lv_event_t): ptr lv_area_t {.cdecl,
    importc: "lv_event_get_old_size".}
proc lv_event_get_key*(e: ptr lv_event_t): uint32 {.cdecl,
    importc: "lv_event_get_key".}
proc lv_event_get_rotary_diff*(e: ptr lv_event_t): int32 {.cdecl,
    importc: "lv_event_get_rotary_diff".}
proc lv_event_get_scroll_anim*(e: ptr lv_event_t): ptr lv_anim_t {.cdecl,
    importc: "lv_event_get_scroll_anim".}
proc lv_event_set_ext_draw_size*(e: ptr lv_event_t; size: int32): void {.cdecl,
    importc: "lv_event_set_ext_draw_size".}
proc lv_event_get_self_size_info*(e: ptr lv_event_t): ptr lv_point_t {.cdecl,
    importc: "lv_event_get_self_size_info".}
proc lv_event_get_hit_test_info*(e: ptr lv_event_t): ptr lv_hit_test_info_t {.
    cdecl, importc: "lv_event_get_hit_test_info".}
proc lv_event_get_cover_area*(e: ptr lv_event_t): ptr lv_area_t {.cdecl,
    importc: "lv_event_get_cover_area".}
proc lv_event_set_cover_res*(e: ptr lv_event_t; res: lv_cover_res_t): void {.
    cdecl, importc: "lv_event_set_cover_res".}
proc lv_event_get_draw_task*(e: ptr lv_event_t): ptr lv_draw_task_t {.cdecl,
    importc: "lv_event_get_draw_task".}
var lv_obj_class* {.importc: "lv_obj_class".}: lv_obj_class_t
proc lv_obj_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_obj_create".}
proc lv_obj_add_flag*(obj: ptr lv_obj_t; f: lv_obj_flag_t): void {.cdecl,
    importc: "lv_obj_add_flag".}
proc lv_obj_update_flag*(obj: ptr lv_obj_t; f: lv_obj_flag_t; v: bool): void {.
    cdecl, importc: "lv_obj_update_flag".}
proc lv_obj_add_state*(obj: ptr lv_obj_t; state: lv_state_t): void {.cdecl,
    importc: "lv_obj_add_state".}
proc lv_obj_set_state*(obj: ptr lv_obj_t; state: lv_state_t; v: bool): void {.
    cdecl, importc: "lv_obj_set_state".}
proc lv_obj_set_user_data*(obj: ptr lv_obj_t; user_data: pointer): void {.cdecl,
    importc: "lv_obj_set_user_data".}
proc lv_obj_has_flag*(obj: ptr lv_obj_t; f: lv_obj_flag_t): bool {.cdecl,
    importc: "lv_obj_has_flag".}
proc lv_obj_has_flag_any*(obj: ptr lv_obj_t; f: lv_obj_flag_t): bool {.cdecl,
    importc: "lv_obj_has_flag_any".}
proc lv_obj_get_state*(obj: ptr lv_obj_t): lv_state_t {.cdecl,
    importc: "lv_obj_get_state".}
proc lv_obj_has_state*(obj: ptr lv_obj_t; state: lv_state_t): bool {.cdecl,
    importc: "lv_obj_has_state".}
proc lv_obj_get_group*(obj: ptr lv_obj_t): ptr lv_group_t {.cdecl,
    importc: "lv_obj_get_group".}
proc lv_obj_get_user_data*(obj: ptr lv_obj_t): pointer {.cdecl,
    importc: "lv_obj_get_user_data".}
proc lv_obj_allocate_spec_attr*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_allocate_spec_attr".}
proc lv_obj_check_type*(obj: ptr lv_obj_t; class_p: ptr lv_obj_class_t): bool {.
    cdecl, importc: "lv_obj_check_type".}
proc lv_obj_has_class*(obj: ptr lv_obj_t; class_p: ptr lv_obj_class_t): bool {.
    cdecl, importc: "lv_obj_has_class".}
proc lv_obj_get_class*(obj: ptr lv_obj_t): ptr lv_obj_class_t {.cdecl,
    importc: "lv_obj_get_class".}
proc lv_obj_is_valid*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_obj_is_valid".}
proc lv_obj_null_on_delete*(obj_ptr: ptr ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_null_on_delete".}
proc lv_refr_now*(disp: ptr lv_display_t): void {.cdecl, importc: "lv_refr_now".}
proc lv_obj_redraw*(layer: ptr lv_layer_t; obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_redraw".}
proc lv_binfont_create*(path: cstring): ptr lv_font_t {.cdecl,
    importc: "lv_binfont_create".}
proc lv_binfont_create_from_buffer*(buffer: pointer; size: uint32): ptr lv_font_t {.
    cdecl, importc: "lv_binfont_create_from_buffer".}
proc lv_binfont_destroy*(font: ptr lv_font_t): void {.cdecl,
    importc: "lv_binfont_destroy".}
proc lv_font_get_bitmap_fmt_txt*(g_dsc: ptr lv_font_glyph_dsc_t;
                                 draw_buf: ptr lv_draw_buf_t): pointer {.cdecl,
    importc: "lv_font_get_bitmap_fmt_txt".}
proc lv_font_get_glyph_dsc_fmt_txt*(font: ptr lv_font_t;
                                    dsc_out: ptr lv_font_glyph_dsc_t;
                                    unicode_letter: uint32;
                                    unicode_letter_next: uint32): bool {.cdecl,
    importc: "lv_font_get_glyph_dsc_fmt_txt".}
var lv_image_class* {.importc: "lv_image_class".}: lv_obj_class_t
proc lv_image_set_scale_x*(obj: ptr lv_obj_t; zoom: uint32): void {.cdecl,
    importc: "lv_image_set_scale_x".}
proc lv_image_set_scale_y*(obj: ptr lv_obj_t; zoom: uint32): void {.cdecl,
    importc: "lv_image_set_scale_y".}
proc lv_image_set_blend_mode*(obj: ptr lv_obj_t; blend_mode: lv_blend_mode_t): void {.
    cdecl, importc: "lv_image_set_blend_mode".}
proc lv_image_set_bitmap_map_src*(obj: ptr lv_obj_t; src: ptr lv_image_dsc_t): void {.
    cdecl, importc: "lv_image_set_bitmap_map_src".}
proc lv_image_get_scale_x*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_image_get_scale_x".}
proc lv_image_get_scale_y*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_image_get_scale_y".}
proc lv_image_get_blend_mode*(obj: ptr lv_obj_t): lv_blend_mode_t {.cdecl,
    importc: "lv_image_get_blend_mode".}
proc lv_image_get_bitmap_map_src*(obj: ptr lv_obj_t): ptr lv_image_dsc_t {.
    cdecl, importc: "lv_image_get_bitmap_map_src".}
var lv_animimg_class* {.importc: "lv_animimg_class".}: lv_obj_class_t
proc lv_animimg_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_animimg_create".}
proc lv_animimg_set_src*(img: ptr lv_obj_t; dsc: ptr UncheckedArray[pointer];
                         num: csize_t): void {.cdecl,
    importc: "lv_animimg_set_src".}
proc lv_animimg_start*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_animimg_start".}
proc lv_animimg_set_duration*(img: ptr lv_obj_t; duration: uint32): void {.
    cdecl, importc: "lv_animimg_set_duration".}
proc lv_animimg_set_repeat_count*(img: ptr lv_obj_t; count: uint32): void {.
    cdecl, importc: "lv_animimg_set_repeat_count".}
proc lv_animimg_get_src*(img: ptr lv_obj_t): ptr pointer {.cdecl,
    importc: "lv_animimg_get_src".}
proc lv_animimg_get_src_count*(img: ptr lv_obj_t): uint8 {.cdecl,
    importc: "lv_animimg_get_src_count".}
proc lv_animimg_get_duration*(img: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_animimg_get_duration".}
proc lv_animimg_get_repeat_count*(img: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_animimg_get_repeat_count".}
proc lv_animimg_get_anim*(img: ptr lv_obj_t): ptr lv_anim_t {.cdecl,
    importc: "lv_animimg_get_anim".}
var lv_arc_class* {.importc: "lv_arc_class".}: lv_obj_class_t
proc lv_arc_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_arc_create".}
proc lv_arc_set_start_angle*(obj: ptr lv_obj_t; start: lv_value_precise_t): void {.
    cdecl, importc: "lv_arc_set_start_angle".}
proc lv_arc_set_end_angle*(obj: ptr lv_obj_t; end_arg: lv_value_precise_t): void {.
    cdecl, importc: "lv_arc_set_end_angle".}
proc lv_arc_set_angles*(obj: ptr lv_obj_t; start: lv_value_precise_t;
                        end_arg: lv_value_precise_t): void {.cdecl,
    importc: "lv_arc_set_angles".}
proc lv_arc_set_bg_start_angle*(obj: ptr lv_obj_t; start: lv_value_precise_t): void {.
    cdecl, importc: "lv_arc_set_bg_start_angle".}
proc lv_arc_set_bg_end_angle*(obj: ptr lv_obj_t; end_arg: lv_value_precise_t): void {.
    cdecl, importc: "lv_arc_set_bg_end_angle".}
proc lv_arc_set_bg_angles*(obj: ptr lv_obj_t; start: lv_value_precise_t;
                           end_arg: lv_value_precise_t): void {.cdecl,
    importc: "lv_arc_set_bg_angles".}
proc lv_arc_set_rotation*(obj: ptr lv_obj_t; rotation: int32): void {.cdecl,
    importc: "lv_arc_set_rotation".}
proc lv_arc_set_mode*(obj: ptr lv_obj_t; type_arg: lv_arc_mode_t): void {.cdecl,
    importc: "lv_arc_set_mode".}
proc lv_arc_set_value*(obj: ptr lv_obj_t; value: int32): void {.cdecl,
    importc: "lv_arc_set_value".}
proc lv_arc_set_range*(obj: ptr lv_obj_t; min: int32; max: int32): void {.cdecl,
    importc: "lv_arc_set_range".}
proc lv_arc_set_change_rate*(obj: ptr lv_obj_t; rate: uint32): void {.cdecl,
    importc: "lv_arc_set_change_rate".}
proc lv_arc_set_knob_offset*(obj: ptr lv_obj_t; offset: int32): void {.cdecl,
    importc: "lv_arc_set_knob_offset".}
proc lv_arc_get_angle_start*(obj: ptr lv_obj_t): lv_value_precise_t {.cdecl,
    importc: "lv_arc_get_angle_start".}
proc lv_arc_get_angle_end*(obj: ptr lv_obj_t): lv_value_precise_t {.cdecl,
    importc: "lv_arc_get_angle_end".}
proc lv_arc_get_bg_angle_start*(obj: ptr lv_obj_t): lv_value_precise_t {.cdecl,
    importc: "lv_arc_get_bg_angle_start".}
proc lv_arc_get_bg_angle_end*(obj: ptr lv_obj_t): lv_value_precise_t {.cdecl,
    importc: "lv_arc_get_bg_angle_end".}
proc lv_arc_get_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_arc_get_value".}
proc lv_arc_get_min_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_arc_get_min_value".}
proc lv_arc_get_max_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_arc_get_max_value".}
proc lv_arc_get_mode*(obj: ptr lv_obj_t): lv_arc_mode_t {.cdecl,
    importc: "lv_arc_get_mode".}
proc lv_arc_get_rotation*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_arc_get_rotation".}
proc lv_arc_get_knob_offset*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_arc_get_knob_offset".}
proc lv_arc_align_obj_to_angle*(obj: ptr lv_obj_t; obj_to_align: ptr lv_obj_t;
                                r_offset: int32): void {.cdecl,
    importc: "lv_arc_align_obj_to_angle".}
proc lv_arc_rotate_obj_to_angle*(obj: ptr lv_obj_t; obj_to_rotate: ptr lv_obj_t;
                                 r_offset: int32): void {.cdecl,
    importc: "lv_arc_rotate_obj_to_angle".}
var lv_label_class* {.importc: "lv_label_class".}: lv_obj_class_t
proc lv_label_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_label_create".}
proc lv_label_set_text*(obj: ptr lv_obj_t; text: cstring): void {.cdecl,
    importc: "lv_label_set_text".}
proc lv_label_set_text_fmt*(obj: ptr lv_obj_t; fmt: cstring): void {.cdecl,
    varargs, importc: "lv_label_set_text_fmt".}
proc lv_label_set_text_static*(obj: ptr lv_obj_t; text: cstring): void {.cdecl,
    importc: "lv_label_set_text_static".}
proc lv_label_set_long_mode*(obj: ptr lv_obj_t; long_mode: lv_label_long_mode_t): void {.
    cdecl, importc: "lv_label_set_long_mode".}
proc lv_label_set_text_selection_start*(obj: ptr lv_obj_t; index: uint32): void {.
    cdecl, importc: "lv_label_set_text_selection_start".}
proc lv_label_set_text_selection_end*(obj: ptr lv_obj_t; index: uint32): void {.
    cdecl, importc: "lv_label_set_text_selection_end".}
proc lv_label_get_text*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_label_get_text".}
proc lv_label_get_long_mode*(obj: ptr lv_obj_t): lv_label_long_mode_t {.cdecl,
    importc: "lv_label_get_long_mode".}
proc lv_label_get_letter_pos*(obj: ptr lv_obj_t; char_id: uint32;
                              pos: ptr lv_point_t): void {.cdecl,
    importc: "lv_label_get_letter_pos".}
proc lv_label_get_letter_on*(obj: ptr lv_obj_t; pos_in: ptr lv_point_t;
                             bidi: bool): uint32 {.cdecl,
    importc: "lv_label_get_letter_on".}
proc lv_label_is_char_under_pos*(obj: ptr lv_obj_t; pos: ptr lv_point_t): bool {.
    cdecl, importc: "lv_label_is_char_under_pos".}
proc lv_label_get_text_selection_start*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_label_get_text_selection_start".}
proc lv_label_get_text_selection_end*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_label_get_text_selection_end".}
proc lv_label_ins_text*(obj: ptr lv_obj_t; pos: uint32; txt: cstring): void {.
    cdecl, importc: "lv_label_ins_text".}
proc lv_label_cut_text*(obj: ptr lv_obj_t; pos: uint32; cnt: uint32): void {.
    cdecl, importc: "lv_label_cut_text".}
var lv_bar_class* {.importc: "lv_bar_class".}: lv_obj_class_t
proc lv_bar_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_bar_create".}
proc lv_bar_set_value*(obj: ptr lv_obj_t; value: int32; anim: lv_anim_enable_t): void {.
    cdecl, importc: "lv_bar_set_value".}
proc lv_bar_set_start_value*(obj: ptr lv_obj_t; start_value: int32;
                             anim: lv_anim_enable_t): void {.cdecl,
    importc: "lv_bar_set_start_value".}
proc lv_bar_set_range*(obj: ptr lv_obj_t; min: int32; max: int32): void {.cdecl,
    importc: "lv_bar_set_range".}
proc lv_bar_set_mode*(obj: ptr lv_obj_t; mode: lv_bar_mode_t): void {.cdecl,
    importc: "lv_bar_set_mode".}
proc lv_bar_set_orientation*(obj: ptr lv_obj_t;
                             orientation: lv_bar_orientation_t): void {.cdecl,
    importc: "lv_bar_set_orientation".}
proc lv_bar_get_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_bar_get_value".}
proc lv_bar_get_start_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_bar_get_start_value".}
proc lv_bar_get_min_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_bar_get_min_value".}
proc lv_bar_get_max_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_bar_get_max_value".}
proc lv_bar_get_mode*(obj: ptr lv_obj_t): lv_bar_mode_t {.cdecl,
    importc: "lv_bar_get_mode".}
proc lv_bar_get_orientation*(obj: ptr lv_obj_t): lv_bar_orientation_t {.cdecl,
    importc: "lv_bar_get_orientation".}
proc lv_bar_is_symmetrical*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_bar_is_symmetrical".}
var lv_button_class* {.importc: "lv_button_class".}: lv_obj_class_t
var lv_buttonmatrix_class* {.importc: "lv_buttonmatrix_class".}: lv_obj_class_t
var lv_calendar_class* {.importc: "lv_calendar_class".}: lv_obj_class_t
proc lv_calendar_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_calendar_create".}
proc lv_calendar_set_today_date*(obj: ptr lv_obj_t; year: uint32; month: uint32;
                                 day: uint32): void {.cdecl,
    importc: "lv_calendar_set_today_date".}
proc lv_calendar_set_showed_date*(obj: ptr lv_obj_t; year: uint32; month: uint32): void {.
    cdecl, importc: "lv_calendar_set_showed_date".}
proc lv_calendar_set_highlighted_dates*(obj: ptr lv_obj_t; highlighted: ptr UncheckedArray[
    lv_calendar_date_t]; date_num: csize_t): void {.cdecl,
    importc: "lv_calendar_set_highlighted_dates".}
proc lv_calendar_set_day_names*(obj: ptr lv_obj_t; day_names: ptr cstring): void {.
    cdecl, importc: "lv_calendar_set_day_names".}
proc lv_calendar_get_btnmatrix*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_calendar_get_btnmatrix".}
proc lv_calendar_get_today_date*(calendar: ptr lv_obj_t): ptr lv_calendar_date_t {.
    cdecl, importc: "lv_calendar_get_today_date".}
proc lv_calendar_get_showed_date*(calendar: ptr lv_obj_t): ptr lv_calendar_date_t {.
    cdecl, importc: "lv_calendar_get_showed_date".}
proc lv_calendar_get_highlighted_dates*(calendar: ptr lv_obj_t): ptr lv_calendar_date_t {.
    cdecl, importc: "lv_calendar_get_highlighted_dates".}
proc lv_calendar_get_highlighted_dates_num*(calendar: ptr lv_obj_t): csize_t {.
    cdecl, importc: "lv_calendar_get_highlighted_dates_num".}
proc lv_calendar_get_pressed_date*(calendar: ptr lv_obj_t;
                                   date: ptr lv_calendar_date_t): lv_result_t {.
    cdecl, importc: "lv_calendar_get_pressed_date".}
var lv_calendar_header_arrow_class* {.importc: "lv_calendar_header_arrow_class".}: lv_obj_class_t
proc lv_calendar_header_arrow_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.
    cdecl, importc: "lv_calendar_header_arrow_create".}
var lv_calendar_header_dropdown_class* {.
    importc: "lv_calendar_header_dropdown_class".}: lv_obj_class_t
proc lv_calendar_header_dropdown_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.
    cdecl, importc: "lv_calendar_header_dropdown_create".}
proc lv_calendar_header_dropdown_set_year_list*(parent: ptr lv_obj_t;
    years_list: cstring): void {.cdecl, importc: "lv_calendar_header_dropdown_set_year_list".}
var lv_canvas_class* {.importc: "lv_canvas_class".}: lv_obj_class_t
proc lv_canvas_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_canvas_create".}
proc lv_canvas_set_buffer*(obj: ptr lv_obj_t; buf: pointer; w: int32; h: int32;
                           cf: lv_color_format_t): void {.cdecl,
    importc: "lv_canvas_set_buffer".}
proc lv_canvas_set_draw_buf*(obj: ptr lv_obj_t; draw_buf: ptr lv_draw_buf_t): void {.
    cdecl, importc: "lv_canvas_set_draw_buf".}
proc lv_canvas_set_px*(obj: ptr lv_obj_t; x: int32; y: int32; color: lv_color_t;
                       opa: lv_opa_t): void {.cdecl, importc: "lv_canvas_set_px".}
proc lv_canvas_set_palette*(obj: ptr lv_obj_t; index: uint8; color: lv_color32_t): void {.
    cdecl, importc: "lv_canvas_set_palette".}
proc lv_canvas_get_draw_buf*(obj: ptr lv_obj_t): ptr lv_draw_buf_t {.cdecl,
    importc: "lv_canvas_get_draw_buf".}
proc lv_canvas_get_px*(obj: ptr lv_obj_t; x: int32; y: int32): lv_color32_t {.
    cdecl, importc: "lv_canvas_get_px".}
proc lv_canvas_get_image*(canvas: ptr lv_obj_t): ptr lv_image_dsc_t {.cdecl,
    importc: "lv_canvas_get_image".}
proc lv_canvas_get_buf*(canvas: ptr lv_obj_t): pointer {.cdecl,
    importc: "lv_canvas_get_buf".}
proc lv_canvas_copy_buf*(obj: ptr lv_obj_t; canvas_area: ptr lv_area_t;
                         dest_buf: ptr lv_draw_buf_t; dest_area: ptr lv_area_t): void {.
    cdecl, importc: "lv_canvas_copy_buf".}
proc lv_canvas_fill_bg*(obj: ptr lv_obj_t; color: lv_color_t; opa: lv_opa_t): void {.
    cdecl, importc: "lv_canvas_fill_bg".}
proc lv_canvas_init_layer*(canvas: ptr lv_obj_t; layer: ptr lv_layer_t): void {.
    cdecl, importc: "lv_canvas_init_layer".}
proc lv_canvas_finish_layer*(canvas: ptr lv_obj_t; layer: ptr lv_layer_t): void {.
    cdecl, importc: "lv_canvas_finish_layer".}
proc lv_canvas_buf_size*(w: int32; h: int32; bpp: uint8; stride: uint8): uint32 {.
    cdecl, importc: "lv_canvas_buf_size".}
var lv_chart_class* {.importc: "lv_chart_class".}: lv_obj_class_t
proc lv_chart_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_chart_create".}
proc lv_chart_set_type*(obj: ptr lv_obj_t; type_arg: lv_chart_type_t): void {.
    cdecl, importc: "lv_chart_set_type".}
proc lv_chart_set_point_count*(obj: ptr lv_obj_t; cnt: uint32): void {.cdecl,
    importc: "lv_chart_set_point_count".}
proc lv_chart_set_range*(obj: ptr lv_obj_t; axis: lv_chart_axis_t; min: int32;
                         max: int32): void {.cdecl,
    importc: "lv_chart_set_range".}
proc lv_chart_set_update_mode*(obj: ptr lv_obj_t;
                               update_mode: lv_chart_update_mode_t): void {.
    cdecl, importc: "lv_chart_set_update_mode".}
proc lv_chart_set_div_line_count*(obj: ptr lv_obj_t; hdiv: uint8; vdiv: uint8): void {.
    cdecl, importc: "lv_chart_set_div_line_count".}
proc lv_chart_get_type*(obj: ptr lv_obj_t): lv_chart_type_t {.cdecl,
    importc: "lv_chart_get_type".}
proc lv_chart_get_point_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_chart_get_point_count".}
proc lv_chart_get_x_start_point*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t): uint32 {.
    cdecl, importc: "lv_chart_get_x_start_point".}
proc lv_chart_get_point_pos_by_id*(obj: ptr lv_obj_t;
                                   ser: ptr lv_chart_series_t; id: uint32;
                                   p_out: ptr lv_point_t): void {.cdecl,
    importc: "lv_chart_get_point_pos_by_id".}
proc lv_chart_refresh*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_chart_refresh".}
proc lv_chart_add_series*(obj: ptr lv_obj_t; color: lv_color_t;
                          axis: lv_chart_axis_t): ptr lv_chart_series_t {.cdecl,
    importc: "lv_chart_add_series".}
proc lv_chart_remove_series*(obj: ptr lv_obj_t; series: ptr lv_chart_series_t): void {.
    cdecl, importc: "lv_chart_remove_series".}
proc lv_chart_hide_series*(chart: ptr lv_obj_t; series: ptr lv_chart_series_t;
                           hide: bool): void {.cdecl,
    importc: "lv_chart_hide_series".}
proc lv_chart_set_series_color*(chart: ptr lv_obj_t;
                                series: ptr lv_chart_series_t; color: lv_color_t): void {.
    cdecl, importc: "lv_chart_set_series_color".}
proc lv_chart_get_series_color*(chart: ptr lv_obj_t;
                                series: ptr lv_chart_series_t): lv_color_t {.
    cdecl, importc: "lv_chart_get_series_color".}
proc lv_chart_set_x_start_point*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                                 id: uint32): void {.cdecl,
    importc: "lv_chart_set_x_start_point".}
proc lv_chart_get_series_next*(chart: ptr lv_obj_t; ser: ptr lv_chart_series_t): ptr lv_chart_series_t {.
    cdecl, importc: "lv_chart_get_series_next".}
proc lv_chart_add_cursor*(obj: ptr lv_obj_t; color: lv_color_t; dir: lv_dir_t): ptr lv_chart_cursor_t {.
    cdecl, importc: "lv_chart_add_cursor".}
proc lv_chart_set_cursor_pos*(chart: ptr lv_obj_t;
                              cursor: ptr lv_chart_cursor_t; pos: ptr lv_point_t): void {.
    cdecl, importc: "lv_chart_set_cursor_pos".}
proc lv_chart_set_cursor_point*(chart: ptr lv_obj_t;
                                cursor: ptr lv_chart_cursor_t;
                                ser: ptr lv_chart_series_t; point_id: uint32): void {.
    cdecl, importc: "lv_chart_set_cursor_point".}
proc lv_chart_get_cursor_point*(chart: ptr lv_obj_t;
                                cursor: ptr lv_chart_cursor_t): lv_point_t {.
    cdecl, importc: "lv_chart_get_cursor_point".}
proc lv_chart_set_all_value*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                             value: int32): void {.cdecl,
    importc: "lv_chart_set_all_value".}
proc lv_chart_set_next_value*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                              value: int32): void {.cdecl,
    importc: "lv_chart_set_next_value".}
proc lv_chart_set_next_value2*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                               x_value: int32; y_value: int32): void {.cdecl,
    importc: "lv_chart_set_next_value2".}
proc lv_chart_set_value_by_id*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                               id: uint32; value: int32): void {.cdecl,
    importc: "lv_chart_set_value_by_id".}
proc lv_chart_set_value_by_id2*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                                id: uint32; x_value: int32; y_value: int32): void {.
    cdecl, importc: "lv_chart_set_value_by_id2".}
proc lv_chart_set_ext_y_array*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                               array_arg: ptr UncheckedArray[int32]): void {.
    cdecl, importc: "lv_chart_set_ext_y_array".}
proc lv_chart_set_ext_x_array*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t;
                               array_arg: ptr UncheckedArray[int32]): void {.
    cdecl, importc: "lv_chart_set_ext_x_array".}
proc lv_chart_get_y_array*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t): ptr int32 {.
    cdecl, importc: "lv_chart_get_y_array".}
proc lv_chart_get_x_array*(obj: ptr lv_obj_t; ser: ptr lv_chart_series_t): ptr int32 {.
    cdecl, importc: "lv_chart_get_x_array".}
proc lv_chart_get_pressed_point*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_chart_get_pressed_point".}
proc lv_chart_get_first_point_center_offset*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_chart_get_first_point_center_offset".}
var lv_checkbox_class* {.importc: "lv_checkbox_class".}: lv_obj_class_t
proc lv_checkbox_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_checkbox_create".}
proc lv_checkbox_set_text*(obj: ptr lv_obj_t; txt: cstring): void {.cdecl,
    importc: "lv_checkbox_set_text".}
proc lv_checkbox_set_text_static*(obj: ptr lv_obj_t; txt: cstring): void {.
    cdecl, importc: "lv_checkbox_set_text_static".}
proc lv_checkbox_get_text*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_checkbox_get_text".}
var lv_dropdown_class* {.importc: "lv_dropdown_class".}: lv_obj_class_t
var lv_dropdownlist_class* {.importc: "lv_dropdownlist_class".}: lv_obj_class_t
proc lv_dropdown_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_dropdown_create".}
proc lv_dropdown_set_text*(obj: ptr lv_obj_t; txt: cstring): void {.cdecl,
    importc: "lv_dropdown_set_text".}
proc lv_dropdown_set_options*(obj: ptr lv_obj_t; options: cstring): void {.
    cdecl, importc: "lv_dropdown_set_options".}
proc lv_dropdown_set_options_static*(obj: ptr lv_obj_t; options: cstring): void {.
    cdecl, importc: "lv_dropdown_set_options_static".}
proc lv_dropdown_add_option*(obj: ptr lv_obj_t; option: cstring; pos: uint32): void {.
    cdecl, importc: "lv_dropdown_add_option".}
proc lv_dropdown_clear_options*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_dropdown_clear_options".}
proc lv_dropdown_set_selected*(obj: ptr lv_obj_t; sel_opt: uint32): void {.
    cdecl, importc: "lv_dropdown_set_selected".}
proc lv_dropdown_set_dir*(obj: ptr lv_obj_t; dir: lv_dir_t): void {.cdecl,
    importc: "lv_dropdown_set_dir".}
proc lv_dropdown_set_symbol*(obj: ptr lv_obj_t; symbol: pointer): void {.cdecl,
    importc: "lv_dropdown_set_symbol".}
proc lv_dropdown_set_selected_highlight*(obj: ptr lv_obj_t; en: bool): void {.
    cdecl, importc: "lv_dropdown_set_selected_highlight".}
proc lv_dropdown_get_list*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_dropdown_get_list".}
proc lv_dropdown_get_text*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_dropdown_get_text".}
proc lv_dropdown_get_options*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_dropdown_get_options".}
proc lv_dropdown_get_selected*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_dropdown_get_selected".}
proc lv_dropdown_get_selected_str*(obj: ptr lv_obj_t; buf: cstring;
                                   buf_size: uint32): void {.cdecl,
    importc: "lv_dropdown_get_selected_str".}
proc lv_dropdown_get_option_index*(obj: ptr lv_obj_t; option: cstring): int32 {.
    cdecl, importc: "lv_dropdown_get_option_index".}
proc lv_dropdown_get_symbol*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_dropdown_get_symbol".}
proc lv_dropdown_get_selected_highlight*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_dropdown_get_selected_highlight".}
proc lv_dropdown_get_dir*(obj: ptr lv_obj_t): lv_dir_t {.cdecl,
    importc: "lv_dropdown_get_dir".}
proc lv_dropdown_open*(dropdown_obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_dropdown_open".}
proc lv_dropdown_close*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_dropdown_close".}
proc lv_dropdown_is_open*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_dropdown_is_open".}
var lv_imagebutton_class* {.importc: "lv_imagebutton_class".}: lv_obj_class_t
var lv_keyboard_class* {.importc: "lv_keyboard_class".}: lv_obj_class_t
proc lv_keyboard_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_keyboard_create".}
proc lv_keyboard_set_textarea*(kb: ptr lv_obj_t; ta: ptr lv_obj_t): void {.
    cdecl, importc: "lv_keyboard_set_textarea".}
proc lv_keyboard_set_mode*(kb: ptr lv_obj_t; mode: lv_keyboard_mode_t): void {.
    cdecl, importc: "lv_keyboard_set_mode".}
proc lv_keyboard_set_popovers*(kb: ptr lv_obj_t; en: bool): void {.cdecl,
    importc: "lv_keyboard_set_popovers".}
proc lv_keyboard_set_map*(kb: ptr lv_obj_t; mode: lv_keyboard_mode_t;
                          map: ptr UncheckedArray[cstring];
                          ctrl_map: ptr UncheckedArray[lv_buttonmatrix_ctrl_t]): void {.
    cdecl, importc: "lv_keyboard_set_map".}
proc lv_keyboard_get_textarea*(kb: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_keyboard_get_textarea".}
proc lv_keyboard_get_mode*(kb: ptr lv_obj_t): lv_keyboard_mode_t {.cdecl,
    importc: "lv_keyboard_get_mode".}
proc lv_keyboard_get_popovers*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_keyboard_get_popovers".}
proc lv_keyboard_get_map_array*(kb: ptr lv_obj_t): ptr cstring {.cdecl,
    importc: "lv_keyboard_get_map_array".}
proc lv_keyboard_def_event_cb*(e: ptr lv_event_t): void {.cdecl,
    importc: "lv_keyboard_def_event_cb".}
var lv_led_class* {.importc: "lv_led_class".}: lv_obj_class_t
proc lv_led_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_led_create".}
proc lv_led_set_color*(led: ptr lv_obj_t; color: lv_color_t): void {.cdecl,
    importc: "lv_led_set_color".}
proc lv_led_set_brightness*(led: ptr lv_obj_t; bright: uint8): void {.cdecl,
    importc: "lv_led_set_brightness".}
proc lv_led_on*(led: ptr lv_obj_t): void {.cdecl, importc: "lv_led_on".}
proc lv_led_off*(led: ptr lv_obj_t): void {.cdecl, importc: "lv_led_off".}
proc lv_led_toggle*(led: ptr lv_obj_t): void {.cdecl, importc: "lv_led_toggle".}
proc lv_led_get_brightness*(obj: ptr lv_obj_t): uint8 {.cdecl,
    importc: "lv_led_get_brightness".}
var lv_line_class* {.importc: "lv_line_class".}: lv_obj_class_t
proc lv_line_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_line_create".}
proc lv_line_set_points*(obj: ptr lv_obj_t;
                         points: ptr UncheckedArray[lv_point_precise_t];
                         point_num: uint32): void {.cdecl,
    importc: "lv_line_set_points".}
proc lv_line_set_points_mutable*(obj: ptr lv_obj_t; points: ptr UncheckedArray[
    lv_point_precise_t]; point_num: uint32): void {.cdecl,
    importc: "lv_line_set_points_mutable".}
proc lv_line_set_y_invert*(obj: ptr lv_obj_t; en: bool): void {.cdecl,
    importc: "lv_line_set_y_invert".}
proc lv_line_get_points*(obj: ptr lv_obj_t): ptr lv_point_precise_t {.cdecl,
    importc: "lv_line_get_points".}
proc lv_line_get_point_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_line_get_point_count".}
proc lv_line_is_point_array_mutable*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_line_is_point_array_mutable".}
proc lv_line_get_points_mutable*(obj: ptr lv_obj_t): ptr lv_point_precise_t {.
    cdecl, importc: "lv_line_get_points_mutable".}
proc lv_line_get_y_invert*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_line_get_y_invert".}
var lv_list_class* {.importc: "lv_list_class".}: lv_obj_class_t
var lv_list_text_class* {.importc: "lv_list_text_class".}: lv_obj_class_t
var lv_list_button_class* {.importc: "lv_list_button_class".}: lv_obj_class_t
proc lv_list_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_list_create".}
proc lv_list_add_text*(list: ptr lv_obj_t; txt: cstring): ptr lv_obj_t {.cdecl,
    importc: "lv_list_add_text".}
var lv_menu_class* {.importc: "lv_menu_class".}: lv_obj_class_t
var lv_menu_page_class* {.importc: "lv_menu_page_class".}: lv_obj_class_t
var lv_menu_cont_class* {.importc: "lv_menu_cont_class".}: lv_obj_class_t
var lv_menu_section_class* {.importc: "lv_menu_section_class".}: lv_obj_class_t
var lv_menu_separator_class* {.importc: "lv_menu_separator_class".}: lv_obj_class_t
var lv_menu_sidebar_cont_class* {.importc: "lv_menu_sidebar_cont_class".}: lv_obj_class_t
var lv_menu_main_cont_class* {.importc: "lv_menu_main_cont_class".}: lv_obj_class_t
var lv_menu_sidebar_header_cont_class* {.
    importc: "lv_menu_sidebar_header_cont_class".}: lv_obj_class_t
var lv_menu_main_header_cont_class* {.importc: "lv_menu_main_header_cont_class".}: lv_obj_class_t
proc lv_menu_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_menu_create".}
proc lv_menu_page_create*(parent: ptr lv_obj_t; title: cstring): ptr lv_obj_t {.
    cdecl, importc: "lv_menu_page_create".}
proc lv_menu_cont_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_menu_cont_create".}
proc lv_menu_section_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_menu_section_create".}
proc lv_menu_separator_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_menu_separator_create".}
proc lv_menu_set_page*(obj: ptr lv_obj_t; page: ptr lv_obj_t): void {.cdecl,
    importc: "lv_menu_set_page".}
proc lv_menu_set_page_title*(page: ptr lv_obj_t; title: cstring): void {.cdecl,
    importc: "lv_menu_set_page_title".}
proc lv_menu_set_page_title_static*(page: ptr lv_obj_t; title: cstring): void {.
    cdecl, importc: "lv_menu_set_page_title_static".}
proc lv_menu_set_sidebar_page*(obj: ptr lv_obj_t; page: ptr lv_obj_t): void {.
    cdecl, importc: "lv_menu_set_sidebar_page".}
proc lv_menu_set_mode_header*(obj: ptr lv_obj_t; mode: lv_menu_mode_header_t): void {.
    cdecl, importc: "lv_menu_set_mode_header".}
proc lv_menu_set_mode_root_back_button*(obj: ptr lv_obj_t;
                                        mode: lv_menu_mode_root_back_button_t): void {.
    cdecl, importc: "lv_menu_set_mode_root_back_button".}
proc lv_menu_set_load_page_event*(menu: ptr lv_obj_t; obj: ptr lv_obj_t;
                                  page: ptr lv_obj_t): void {.cdecl,
    importc: "lv_menu_set_load_page_event".}
proc lv_menu_get_cur_main_page*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_menu_get_cur_main_page".}
proc lv_menu_get_cur_sidebar_page*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_menu_get_cur_sidebar_page".}
proc lv_menu_get_main_header*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_menu_get_main_header".}
proc lv_menu_get_main_header_back_button*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    cdecl, importc: "lv_menu_get_main_header_back_button".}
proc lv_menu_get_sidebar_header*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_menu_get_sidebar_header".}
proc lv_menu_get_sidebar_header_back_button*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    cdecl, importc: "lv_menu_get_sidebar_header_back_button".}
proc lv_menu_back_button_is_root*(menu: ptr lv_obj_t; obj: ptr lv_obj_t): bool {.
    cdecl, importc: "lv_menu_back_button_is_root".}
proc lv_menu_clear_history*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_menu_clear_history".}
var lv_msgbox_class* {.importc: "lv_msgbox_class".}: lv_obj_class_t
var lv_msgbox_header_class* {.importc: "lv_msgbox_header_class".}: lv_obj_class_t
var lv_msgbox_content_class* {.importc: "lv_msgbox_content_class".}: lv_obj_class_t
var lv_msgbox_footer_class* {.importc: "lv_msgbox_footer_class".}: lv_obj_class_t
var lv_msgbox_header_button_class* {.importc: "lv_msgbox_header_button_class".}: lv_obj_class_t
var lv_msgbox_footer_button_class* {.importc: "lv_msgbox_footer_button_class".}: lv_obj_class_t
var lv_msgbox_backdrop_class* {.importc: "lv_msgbox_backdrop_class".}: lv_obj_class_t
proc lv_msgbox_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_msgbox_create".}
proc lv_msgbox_add_title*(obj: ptr lv_obj_t; title: cstring): ptr lv_obj_t {.
    cdecl, importc: "lv_msgbox_add_title".}
proc lv_msgbox_add_header_button*(obj: ptr lv_obj_t; icon: pointer): ptr lv_obj_t {.
    cdecl, importc: "lv_msgbox_add_header_button".}
proc lv_msgbox_add_text*(obj: ptr lv_obj_t; text: cstring): ptr lv_obj_t {.
    cdecl, importc: "lv_msgbox_add_text".}
proc lv_msgbox_add_footer_button*(obj: ptr lv_obj_t; text: cstring): ptr lv_obj_t {.
    cdecl, importc: "lv_msgbox_add_footer_button".}
proc lv_msgbox_add_close_button*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_msgbox_add_close_button".}
proc lv_msgbox_get_header*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_msgbox_get_header".}
proc lv_msgbox_get_footer*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_msgbox_get_footer".}
proc lv_msgbox_get_content*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_msgbox_get_content".}
proc lv_msgbox_get_title*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_msgbox_get_title".}
proc lv_msgbox_close*(mbox: ptr lv_obj_t): void {.cdecl,
    importc: "lv_msgbox_close".}
proc lv_msgbox_close_async*(mbox: ptr lv_obj_t): void {.cdecl,
    importc: "lv_msgbox_close_async".}
var lv_roller_class* {.importc: "lv_roller_class".}: lv_obj_class_t
proc lv_roller_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_roller_create".}
proc lv_roller_set_options*(obj: ptr lv_obj_t; options: cstring;
                            mode: lv_roller_mode_t): void {.cdecl,
    importc: "lv_roller_set_options".}
proc lv_roller_set_selected*(obj: ptr lv_obj_t; sel_opt: uint32;
                             anim: lv_anim_enable_t): void {.cdecl,
    importc: "lv_roller_set_selected".}
proc lv_roller_get_selected*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_roller_get_selected".}
proc lv_roller_get_selected_str*(obj: ptr lv_obj_t; buf: cstring;
                                 buf_size: uint32): void {.cdecl,
    importc: "lv_roller_get_selected_str".}
proc lv_roller_get_options*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_roller_get_options".}
var lv_scale_class* {.importc: "lv_scale_class".}: lv_obj_class_t
proc lv_scale_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_scale_create".}
proc lv_scale_set_mode*(obj: ptr lv_obj_t; mode: lv_scale_mode_t): void {.cdecl,
    importc: "lv_scale_set_mode".}
proc lv_scale_set_total_tick_count*(obj: ptr lv_obj_t; total_tick_count: uint32): void {.
    cdecl, importc: "lv_scale_set_total_tick_count".}
proc lv_scale_set_major_tick_every*(obj: ptr lv_obj_t; major_tick_every: uint32): void {.
    cdecl, importc: "lv_scale_set_major_tick_every".}
proc lv_scale_set_label_show*(obj: ptr lv_obj_t; show_label: bool): void {.
    cdecl, importc: "lv_scale_set_label_show".}
proc lv_scale_set_range*(obj: ptr lv_obj_t; min: int32; max: int32): void {.
    cdecl, importc: "lv_scale_set_range".}
proc lv_scale_set_angle_range*(obj: ptr lv_obj_t; angle_range: uint32): void {.
    cdecl, importc: "lv_scale_set_angle_range".}
proc lv_scale_set_rotation*(obj: ptr lv_obj_t; rotation: int32): void {.cdecl,
    importc: "lv_scale_set_rotation".}
proc lv_scale_set_line_needle_value*(obj: ptr lv_obj_t;
                                     needle_line: ptr lv_obj_t;
                                     needle_length: int32; value: int32): void {.
    cdecl, importc: "lv_scale_set_line_needle_value".}
proc lv_scale_set_image_needle_value*(obj: ptr lv_obj_t;
                                      needle_img: ptr lv_obj_t; value: int32): void {.
    cdecl, importc: "lv_scale_set_image_needle_value".}
proc lv_scale_set_text_src*(obj: ptr lv_obj_t;
                            txt_src: ptr UncheckedArray[cstring]): void {.cdecl,
    importc: "lv_scale_set_text_src".}
proc lv_scale_set_post_draw*(obj: ptr lv_obj_t; en: bool): void {.cdecl,
    importc: "lv_scale_set_post_draw".}
proc lv_scale_set_draw_ticks_on_top*(obj: ptr lv_obj_t; en: bool): void {.cdecl,
    importc: "lv_scale_set_draw_ticks_on_top".}
proc lv_scale_add_section*(obj: ptr lv_obj_t): ptr lv_scale_section_t {.cdecl,
    importc: "lv_scale_add_section".}
proc lv_scale_section_set_range*(section: ptr lv_scale_section_t;
                                 minor_range: int32; major_range: int32): void {.
    cdecl, importc: "lv_scale_section_set_range".}
proc lv_scale_section_set_style*(section: ptr lv_scale_section_t;
                                 part: lv_part_t;
                                 section_part_style: ptr lv_style_t): void {.
    cdecl, importc: "lv_scale_section_set_style".}
proc lv_scale_get_mode*(obj: ptr lv_obj_t): lv_scale_mode_t {.cdecl,
    importc: "lv_scale_get_mode".}
proc lv_scale_get_total_tick_count*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_scale_get_total_tick_count".}
proc lv_scale_get_major_tick_every*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_scale_get_major_tick_every".}
proc lv_scale_get_label_show*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_scale_get_label_show".}
proc lv_scale_get_angle_range*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_scale_get_angle_range".}
proc lv_scale_get_range_min_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_scale_get_range_min_value".}
proc lv_scale_get_range_max_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_scale_get_range_max_value".}
var lv_slider_class* {.importc: "lv_slider_class".}: lv_obj_class_t
proc lv_slider_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_slider_create".}
proc lv_slider_set_value*(obj: ptr lv_obj_t; value: int32;
                          anim: lv_anim_enable_t): void {.cdecl,
    importc: "lv_slider_set_value".}
proc lv_slider_set_left_value*(obj: ptr lv_obj_t; value: int32;
                               anim: lv_anim_enable_t): void {.cdecl,
    importc: "lv_slider_set_left_value".}
proc lv_slider_set_range*(obj: ptr lv_obj_t; min: int32; max: int32): void {.
    cdecl, importc: "lv_slider_set_range".}
proc lv_slider_set_mode*(obj: ptr lv_obj_t; mode: lv_slider_mode_t): void {.
    cdecl, importc: "lv_slider_set_mode".}
proc lv_slider_get_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_slider_get_value".}
proc lv_slider_get_left_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_slider_get_left_value".}
proc lv_slider_get_min_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_slider_get_min_value".}
proc lv_slider_get_max_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_slider_get_max_value".}
proc lv_slider_is_dragged*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_slider_is_dragged".}
proc lv_slider_get_mode*(slider: ptr lv_obj_t): lv_slider_mode_t {.cdecl,
    importc: "lv_slider_get_mode".}
proc lv_slider_is_symmetrical*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_slider_is_symmetrical".}
var lv_spangroup_class* {.importc: "lv_spangroup_class".}: lv_obj_class_t
proc lv_span_stack_init*(): void {.cdecl, importc: "lv_span_stack_init".}
proc lv_span_stack_deinit*(): void {.cdecl, importc: "lv_span_stack_deinit".}
proc lv_spangroup_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_spangroup_create".}
proc lv_spangroup_new_span*(obj: ptr lv_obj_t): ptr lv_span_t {.cdecl,
    importc: "lv_spangroup_new_span".}
proc lv_spangroup_delete_span*(obj: ptr lv_obj_t; span: ptr lv_span_t): void {.
    cdecl, importc: "lv_spangroup_delete_span".}
proc lv_span_set_text*(span: ptr lv_span_t; text: cstring): void {.cdecl,
    importc: "lv_span_set_text".}
proc lv_span_set_text_static*(span: ptr lv_span_t; text: cstring): void {.cdecl,
    importc: "lv_span_set_text_static".}
proc lv_spangroup_set_align*(obj: ptr lv_obj_t; align: lv_text_align_t): void {.
    cdecl, importc: "lv_spangroup_set_align".}
proc lv_spangroup_set_overflow*(obj: ptr lv_obj_t; overflow: lv_span_overflow_t): void {.
    cdecl, importc: "lv_spangroup_set_overflow".}
proc lv_spangroup_set_indent*(obj: ptr lv_obj_t; indent: int32): void {.cdecl,
    importc: "lv_spangroup_set_indent".}
proc lv_spangroup_set_mode*(obj: ptr lv_obj_t; mode: lv_span_mode_t): void {.
    cdecl, importc: "lv_spangroup_set_mode".}
proc lv_spangroup_set_max_lines*(obj: ptr lv_obj_t; lines: int32): void {.cdecl,
    importc: "lv_spangroup_set_max_lines".}
proc lv_span_get_style*(span: ptr lv_span_t): ptr lv_style_t {.cdecl,
    importc: "lv_span_get_style".}
proc lv_spangroup_get_child*(obj: ptr lv_obj_t; id: int32): ptr lv_span_t {.
    cdecl, importc: "lv_spangroup_get_child".}
proc lv_spangroup_get_span_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_spangroup_get_span_count".}
proc lv_spangroup_get_align*(obj: ptr lv_obj_t): lv_text_align_t {.cdecl,
    importc: "lv_spangroup_get_align".}
proc lv_spangroup_get_overflow*(obj: ptr lv_obj_t): lv_span_overflow_t {.cdecl,
    importc: "lv_spangroup_get_overflow".}
proc lv_spangroup_get_indent*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_spangroup_get_indent".}
proc lv_spangroup_get_mode*(obj: ptr lv_obj_t): lv_span_mode_t {.cdecl,
    importc: "lv_spangroup_get_mode".}
proc lv_spangroup_get_max_lines*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_spangroup_get_max_lines".}
proc lv_spangroup_get_max_line_height*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_spangroup_get_max_line_height".}
proc lv_spangroup_get_expand_width*(obj: ptr lv_obj_t; max_width: uint32): uint32 {.
    cdecl, importc: "lv_spangroup_get_expand_width".}
proc lv_spangroup_get_expand_height*(obj: ptr lv_obj_t; width: int32): int32 {.
    cdecl, importc: "lv_spangroup_get_expand_height".}
proc lv_spangroup_refr_mode*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_spangroup_refr_mode".}
var lv_textarea_class* {.importc: "lv_textarea_class".}: lv_obj_class_t
proc lv_textarea_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_textarea_create".}
proc lv_textarea_add_char*(obj: ptr lv_obj_t; c: uint32): void {.cdecl,
    importc: "lv_textarea_add_char".}
proc lv_textarea_add_text*(obj: ptr lv_obj_t; txt: cstring): void {.cdecl,
    importc: "lv_textarea_add_text".}
proc lv_textarea_delete_char*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_textarea_delete_char".}
proc lv_textarea_delete_char_forward*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_textarea_delete_char_forward".}
proc lv_textarea_set_text*(obj: ptr lv_obj_t; txt: cstring): void {.cdecl,
    importc: "lv_textarea_set_text".}
proc lv_textarea_set_placeholder_text*(obj: ptr lv_obj_t; txt: cstring): void {.
    cdecl, importc: "lv_textarea_set_placeholder_text".}
proc lv_textarea_set_cursor_pos*(obj: ptr lv_obj_t; pos: int32): void {.cdecl,
    importc: "lv_textarea_set_cursor_pos".}
proc lv_textarea_set_cursor_click_pos*(obj: ptr lv_obj_t; en: bool): void {.
    cdecl, importc: "lv_textarea_set_cursor_click_pos".}
proc lv_textarea_set_password_mode*(obj: ptr lv_obj_t; en: bool): void {.cdecl,
    importc: "lv_textarea_set_password_mode".}
proc lv_textarea_set_password_bullet*(obj: ptr lv_obj_t; bullet: cstring): void {.
    cdecl, importc: "lv_textarea_set_password_bullet".}
proc lv_textarea_set_one_line*(obj: ptr lv_obj_t; en: bool): void {.cdecl,
    importc: "lv_textarea_set_one_line".}
proc lv_textarea_set_accepted_chars*(obj: ptr lv_obj_t; list: cstring): void {.
    cdecl, importc: "lv_textarea_set_accepted_chars".}
proc lv_textarea_set_max_length*(obj: ptr lv_obj_t; num: uint32): void {.cdecl,
    importc: "lv_textarea_set_max_length".}
proc lv_textarea_set_insert_replace*(obj: ptr lv_obj_t; txt: cstring): void {.
    cdecl, importc: "lv_textarea_set_insert_replace".}
proc lv_textarea_set_text_selection*(obj: ptr lv_obj_t; en: bool): void {.cdecl,
    importc: "lv_textarea_set_text_selection".}
proc lv_textarea_set_password_show_time*(obj: ptr lv_obj_t; time: uint32): void {.
    cdecl, importc: "lv_textarea_set_password_show_time".}
proc lv_textarea_set_align*(obj: ptr lv_obj_t; align: lv_text_align_t): void {.
    cdecl, importc: "lv_textarea_set_align".}
proc lv_textarea_get_text*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_textarea_get_text".}
proc lv_textarea_get_placeholder_text*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_textarea_get_placeholder_text".}
proc lv_textarea_get_label*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_textarea_get_label".}
proc lv_textarea_get_cursor_pos*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_textarea_get_cursor_pos".}
proc lv_textarea_get_cursor_click_pos*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_textarea_get_cursor_click_pos".}
proc lv_textarea_get_password_mode*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_textarea_get_password_mode".}
proc lv_textarea_get_password_bullet*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_textarea_get_password_bullet".}
proc lv_textarea_get_one_line*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_textarea_get_one_line".}
proc lv_textarea_get_accepted_chars*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_textarea_get_accepted_chars".}
proc lv_textarea_get_max_length*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_textarea_get_max_length".}
proc lv_textarea_text_is_selected*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_textarea_text_is_selected".}
proc lv_textarea_get_text_selection*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_textarea_get_text_selection".}
proc lv_textarea_get_password_show_time*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_textarea_get_password_show_time".}
proc lv_textarea_get_current_char*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_textarea_get_current_char".}
proc lv_textarea_clear_selection*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_textarea_clear_selection".}
proc lv_textarea_cursor_right*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_textarea_cursor_right".}
proc lv_textarea_cursor_left*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_textarea_cursor_left".}
proc lv_textarea_cursor_down*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_textarea_cursor_down".}
proc lv_textarea_cursor_up*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_textarea_cursor_up".}
var lv_spinbox_class* {.importc: "lv_spinbox_class".}: lv_obj_class_t
proc lv_spinbox_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_spinbox_create".}
proc lv_spinbox_set_value*(obj: ptr lv_obj_t; v: int32): void {.cdecl,
    importc: "lv_spinbox_set_value".}
proc lv_spinbox_set_rollover*(obj: ptr lv_obj_t; rollover: bool): void {.cdecl,
    importc: "lv_spinbox_set_rollover".}
proc lv_spinbox_set_digit_format*(obj: ptr lv_obj_t; digit_count: uint32;
                                  sep_pos: uint32): void {.cdecl,
    importc: "lv_spinbox_set_digit_format".}
proc lv_spinbox_set_step*(obj: ptr lv_obj_t; step: uint32): void {.cdecl,
    importc: "lv_spinbox_set_step".}
proc lv_spinbox_set_range*(obj: ptr lv_obj_t; range_min: int32; range_max: int32): void {.
    cdecl, importc: "lv_spinbox_set_range".}
proc lv_spinbox_set_cursor_pos*(obj: ptr lv_obj_t; pos: uint32): void {.cdecl,
    importc: "lv_spinbox_set_cursor_pos".}
proc lv_spinbox_set_digit_step_direction*(obj: ptr lv_obj_t; direction: lv_dir_t): void {.
    cdecl, importc: "lv_spinbox_set_digit_step_direction".}
proc lv_spinbox_get_rollover*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_spinbox_get_rollover".}
proc lv_spinbox_get_value*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_spinbox_get_value".}
proc lv_spinbox_get_step*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_spinbox_get_step".}
proc lv_spinbox_step_next*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_spinbox_step_next".}
proc lv_spinbox_step_prev*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_spinbox_step_prev".}
proc lv_spinbox_increment*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_spinbox_increment".}
proc lv_spinbox_decrement*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_spinbox_decrement".}
var lv_spinner_class* {.importc: "lv_spinner_class".}: lv_obj_class_t
proc lv_spinner_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_spinner_create".}
proc lv_spinner_set_anim_params*(obj: ptr lv_obj_t; t: uint32; angle: uint32): void {.
    cdecl, importc: "lv_spinner_set_anim_params".}
var lv_switch_class* {.importc: "lv_switch_class".}: lv_obj_class_t
proc lv_switch_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_switch_create".}
var lv_table_class* {.importc: "lv_table_class".}: lv_obj_class_t
proc lv_table_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_table_create".}
proc lv_table_set_cell_value*(obj: ptr lv_obj_t; row: uint32; col: uint32;
                              txt: cstring): void {.cdecl,
    importc: "lv_table_set_cell_value".}
proc lv_table_set_cell_value_fmt*(obj: ptr lv_obj_t; row: uint32; col: uint32;
                                  fmt: cstring): void {.cdecl, varargs,
    importc: "lv_table_set_cell_value_fmt".}
proc lv_table_add_cell_ctrl*(obj: ptr lv_obj_t; row: uint32; col: uint32;
                             ctrl: lv_table_cell_ctrl_t): void {.cdecl,
    importc: "lv_table_add_cell_ctrl".}
proc lv_table_clear_cell_ctrl*(obj: ptr lv_obj_t; row: uint32; col: uint32;
                               ctrl: lv_table_cell_ctrl_t): void {.cdecl,
    importc: "lv_table_clear_cell_ctrl".}
proc lv_table_set_cell_user_data*(obj: ptr lv_obj_t; row: uint16; col: uint16;
                                  user_data: pointer): void {.cdecl,
    importc: "lv_table_set_cell_user_data".}
proc lv_table_set_selected_cell*(obj: ptr lv_obj_t; row: uint16; col: uint16): void {.
    cdecl, importc: "lv_table_set_selected_cell".}
proc lv_table_get_cell_value*(obj: ptr lv_obj_t; row: uint32; col: uint32): cstring {.
    cdecl, importc: "lv_table_get_cell_value".}
proc lv_table_has_cell_ctrl*(obj: ptr lv_obj_t; row: uint32; col: uint32;
                             ctrl: lv_table_cell_ctrl_t): bool {.cdecl,
    importc: "lv_table_has_cell_ctrl".}
proc lv_table_get_selected_cell*(obj: ptr lv_obj_t; row: ptr uint32;
                                 col: ptr uint32): void {.cdecl,
    importc: "lv_table_get_selected_cell".}
proc lv_table_get_cell_user_data*(obj: ptr lv_obj_t; row: uint16; col: uint16): pointer {.
    cdecl, importc: "lv_table_get_cell_user_data".}
var lv_tabview_class* {.importc: "lv_tabview_class".}: lv_obj_class_t
proc lv_tabview_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_tabview_create".}
proc lv_tabview_add_tab*(obj: ptr lv_obj_t; name: cstring): ptr lv_obj_t {.
    cdecl, importc: "lv_tabview_add_tab".}
proc lv_tabview_rename_tab*(obj: ptr lv_obj_t; idx: uint32; new_name: cstring): void {.
    cdecl, importc: "lv_tabview_rename_tab".}
proc lv_tabview_set_tab_bar_position*(obj: ptr lv_obj_t; dir: lv_dir_t): void {.
    cdecl, importc: "lv_tabview_set_tab_bar_position".}
proc lv_tabview_set_tab_bar_size*(obj: ptr lv_obj_t; size: int32): void {.cdecl,
    importc: "lv_tabview_set_tab_bar_size".}
proc lv_tabview_get_tab_count*(obj: ptr lv_obj_t): uint32 {.cdecl,
    importc: "lv_tabview_get_tab_count".}
proc lv_tabview_get_content*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_tabview_get_content".}
var lv_tileview_class* {.importc: "lv_tileview_class".}: lv_obj_class_t
var lv_tileview_tile_class* {.importc: "lv_tileview_tile_class".}: lv_obj_class_t
proc lv_tileview_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_tileview_create".}
proc lv_tileview_add_tile*(tv: ptr lv_obj_t; col_id: uint8; row_id: uint8;
                           dir: lv_dir_t): ptr lv_obj_t {.cdecl,
    importc: "lv_tileview_add_tile".}
var lv_win_class* {.importc: "lv_win_class".}: lv_obj_class_t
proc lv_win_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_win_create".}
proc lv_win_add_title*(win: ptr lv_obj_t; txt: cstring): ptr lv_obj_t {.cdecl,
    importc: "lv_win_add_title".}
proc lv_win_add_button*(win: ptr lv_obj_t; icon: pointer; btn_w: int32): ptr lv_obj_t {.
    cdecl, importc: "lv_win_add_button".}
proc lv_win_get_header*(win: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_win_get_header".}
proc lv_win_get_content*(win: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_win_get_content".}
proc lv_snapshot_take*(obj: ptr lv_obj_t; cf: lv_color_format_t): ptr lv_draw_buf_t {.
    cdecl, importc: "lv_snapshot_take".}
proc lv_snapshot_create_draw_buf*(obj: ptr lv_obj_t; cf: lv_color_format_t): ptr lv_draw_buf_t {.
    cdecl, importc: "lv_snapshot_create_draw_buf".}
proc lv_snapshot_reshape_draw_buf*(obj: ptr lv_obj_t;
                                   draw_buf: ptr lv_draw_buf_t): lv_result_t {.
    cdecl, importc: "lv_snapshot_reshape_draw_buf".}
proc lv_snapshot_take_to_draw_buf*(obj: ptr lv_obj_t; cf: lv_color_format_t;
                                   draw_buf: ptr lv_draw_buf_t): lv_result_t {.
    cdecl, importc: "lv_snapshot_take_to_draw_buf".}
proc lv_snapshot_free*(dsc: ptr lv_image_dsc_t): void {.cdecl,
    importc: "lv_snapshot_free".}
proc lv_snapshot_take_to_buf*(obj: ptr lv_obj_t; cf: lv_color_format_t;
                              dsc: ptr lv_image_dsc_t; buf: pointer;
                              buf_size: uint32): lv_result_t {.cdecl,
    importc: "lv_snapshot_take_to_buf".}
proc lv_subject_init_int*(subject: ptr lv_subject_t; value: int32): void {.
    cdecl, importc: "lv_subject_init_int".}
proc lv_subject_set_int*(subject: ptr lv_subject_t; value: int32): void {.cdecl,
    importc: "lv_subject_set_int".}
proc lv_subject_get_int*(subject: ptr lv_subject_t): int32 {.cdecl,
    importc: "lv_subject_get_int".}
proc lv_subject_get_previous_int*(subject: ptr lv_subject_t): int32 {.cdecl,
    importc: "lv_subject_get_previous_int".}
proc lv_subject_init_string*(subject: ptr lv_subject_t; buf: cstring;
                             prev_buf: cstring; size: csize_t; value: cstring): void {.
    cdecl, importc: "lv_subject_init_string".}
proc lv_subject_copy_string*(subject: ptr lv_subject_t; buf: cstring): void {.
    cdecl, importc: "lv_subject_copy_string".}
proc lv_subject_get_string*(subject: ptr lv_subject_t): cstring {.cdecl,
    importc: "lv_subject_get_string".}
proc lv_subject_get_previous_string*(subject: ptr lv_subject_t): cstring {.
    cdecl, importc: "lv_subject_get_previous_string".}
proc lv_subject_init_pointer*(subject: ptr lv_subject_t; value: pointer): void {.
    cdecl, importc: "lv_subject_init_pointer".}
proc lv_subject_set_pointer*(subject: ptr lv_subject_t; ptr_arg: pointer): void {.
    cdecl, importc: "lv_subject_set_pointer".}
proc lv_subject_get_pointer*(subject: ptr lv_subject_t): pointer {.cdecl,
    importc: "lv_subject_get_pointer".}
proc lv_subject_get_previous_pointer*(subject: ptr lv_subject_t): pointer {.
    cdecl, importc: "lv_subject_get_previous_pointer".}
proc lv_subject_init_color*(subject: ptr lv_subject_t; color: lv_color_t): void {.
    cdecl, importc: "lv_subject_init_color".}
proc lv_subject_set_color*(subject: ptr lv_subject_t; color: lv_color_t): void {.
    cdecl, importc: "lv_subject_set_color".}
proc lv_subject_get_color*(subject: ptr lv_subject_t): lv_color_t {.cdecl,
    importc: "lv_subject_get_color".}
proc lv_subject_get_previous_color*(subject: ptr lv_subject_t): lv_color_t {.
    cdecl, importc: "lv_subject_get_previous_color".}
proc lv_subject_init_group*(subject: ptr lv_subject_t;
                            list: ptr UncheckedArray[ptr lv_subject_t];
                            list_len: uint32): void {.cdecl,
    importc: "lv_subject_init_group".}
proc lv_subject_deinit*(subject: ptr lv_subject_t): void {.cdecl,
    importc: "lv_subject_deinit".}
proc lv_subject_get_group_element*(subject: ptr lv_subject_t; index: int32): ptr lv_subject_t {.
    cdecl, importc: "lv_subject_get_group_element".}
proc lv_subject_add_observer*(subject: ptr lv_subject_t;
                              observer_cb: lv_observer_cb_t; user_data: pointer): ptr lv_observer_t {.
    cdecl, importc: "lv_subject_add_observer".}
proc lv_subject_add_observer_obj*(subject: ptr lv_subject_t;
                                  observer_cb: lv_observer_cb_t;
                                  obj: ptr lv_obj_t; user_data: pointer): ptr lv_observer_t {.
    cdecl, importc: "lv_subject_add_observer_obj".}
proc lv_subject_add_observer_with_target*(subject: ptr lv_subject_t;
    observer_cb: lv_observer_cb_t; target: pointer; user_data: pointer): ptr lv_observer_t {.
    cdecl, importc: "lv_subject_add_observer_with_target".}
proc lv_observer_remove*(observer: ptr lv_observer_t): void {.cdecl,
    importc: "lv_observer_remove".}
proc lv_obj_remove_from_subject*(obj: ptr lv_obj_t; subject: ptr lv_subject_t): void {.
    cdecl, importc: "lv_obj_remove_from_subject".}
proc lv_observer_get_target*(observer: ptr lv_observer_t): pointer {.cdecl,
    importc: "lv_observer_get_target".}
proc lv_observer_get_target_obj*(observer: ptr lv_observer_t): ptr lv_obj_t {.
    cdecl, importc: "lv_observer_get_target_obj".}
proc lv_observer_get_user_data*(observer: ptr lv_observer_t): pointer {.cdecl,
    importc: "lv_observer_get_user_data".}
proc lv_subject_notify*(subject: ptr lv_subject_t): void {.cdecl,
    importc: "lv_subject_notify".}
proc lv_obj_bind_flag_if_eq*(obj: ptr lv_obj_t; subject: ptr lv_subject_t;
                             flag: lv_obj_flag_t; ref_value: int32): ptr lv_observer_t {.
    cdecl, importc: "lv_obj_bind_flag_if_eq".}
proc lv_obj_bind_flag_if_not_eq*(obj: ptr lv_obj_t; subject: ptr lv_subject_t;
                                 flag: lv_obj_flag_t; ref_value: int32): ptr lv_observer_t {.
    cdecl, importc: "lv_obj_bind_flag_if_not_eq".}
proc lv_obj_bind_state_if_eq*(obj: ptr lv_obj_t; subject: ptr lv_subject_t;
                              state: lv_state_t; ref_value: int32): ptr lv_observer_t {.
    cdecl, importc: "lv_obj_bind_state_if_eq".}
proc lv_obj_bind_state_if_not_eq*(obj: ptr lv_obj_t; subject: ptr lv_subject_t;
                                  state: lv_state_t; ref_value: int32): ptr lv_observer_t {.
    cdecl, importc: "lv_obj_bind_state_if_not_eq".}
proc lv_label_bind_text*(obj: ptr lv_obj_t; subject: ptr lv_subject_t;
                         fmt: cstring): ptr lv_observer_t {.cdecl,
    importc: "lv_label_bind_text".}
proc lv_arc_bind_value*(obj: ptr lv_obj_t; subject: ptr lv_subject_t): ptr lv_observer_t {.
    cdecl, importc: "lv_arc_bind_value".}
proc lv_slider_bind_value*(obj: ptr lv_obj_t; subject: ptr lv_subject_t): ptr lv_observer_t {.
    cdecl, importc: "lv_slider_bind_value".}
proc lv_roller_bind_value*(obj: ptr lv_obj_t; subject: ptr lv_subject_t): ptr lv_observer_t {.
    cdecl, importc: "lv_roller_bind_value".}
proc lv_dropdown_bind_value*(obj: ptr lv_obj_t; subject: ptr lv_subject_t): ptr lv_observer_t {.
    cdecl, importc: "lv_dropdown_bind_value".}
proc lv_sysmon_create*(disp: ptr lv_display_t): ptr lv_obj_t {.cdecl,
    importc: "lv_sysmon_create".}
proc lv_monkey_config_init*(config: ptr lv_monkey_config_t): void {.cdecl,
    importc: "lv_monkey_config_init".}
proc lv_monkey_create*(config: ptr lv_monkey_config_t): ptr lv_monkey_t {.cdecl,
    importc: "lv_monkey_create".}
proc lv_monkey_get_indev*(monkey: ptr lv_monkey_t): ptr lv_indev_t {.cdecl,
    importc: "lv_monkey_get_indev".}
proc lv_monkey_set_enable*(monkey: ptr lv_monkey_t; en: bool): void {.cdecl,
    importc: "lv_monkey_set_enable".}
proc lv_monkey_get_enable*(monkey: ptr lv_monkey_t): bool {.cdecl,
    importc: "lv_monkey_get_enable".}
proc lv_monkey_set_user_data*(monkey: ptr lv_monkey_t; user_data: pointer): void {.
    cdecl, importc: "lv_monkey_set_user_data".}
proc lv_monkey_get_user_data*(monkey: ptr lv_monkey_t): pointer {.cdecl,
    importc: "lv_monkey_get_user_data".}
proc lv_monkey_delete*(monkey: ptr lv_monkey_t): void {.cdecl,
    importc: "lv_monkey_delete".}
proc lv_gridnav_add*(obj: ptr lv_obj_t; ctrl: lv_gridnav_ctrl_t): void {.cdecl,
    importc: "lv_gridnav_add".}
proc lv_gridnav_remove*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_gridnav_remove".}
proc lv_gridnav_set_focused*(cont: ptr lv_obj_t; to_focus: ptr lv_obj_t;
                             anim_en: lv_anim_enable_t): void {.cdecl,
    importc: "lv_gridnav_set_focused".}
proc lv_fragment_manager_create*(parent: ptr lv_fragment_t): ptr lv_fragment_manager_t {.
    cdecl, importc: "lv_fragment_manager_create".}
proc lv_fragment_manager_delete*(manager: ptr lv_fragment_manager_t): void {.
    cdecl, importc: "lv_fragment_manager_delete".}
proc lv_fragment_manager_create_obj*(manager: ptr lv_fragment_manager_t): void {.
    cdecl, importc: "lv_fragment_manager_create_obj".}
proc lv_fragment_manager_delete_obj*(manager: ptr lv_fragment_manager_t): void {.
    cdecl, importc: "lv_fragment_manager_delete_obj".}
proc lv_fragment_manager_add*(manager: ptr lv_fragment_manager_t;
                              fragment: ptr lv_fragment_t;
                              container: ptr ptr lv_obj_t): void {.cdecl,
    importc: "lv_fragment_manager_add".}
proc lv_fragment_manager_remove*(manager: ptr lv_fragment_manager_t;
                                 fragment: ptr lv_fragment_t): void {.cdecl,
    importc: "lv_fragment_manager_remove".}
proc lv_fragment_manager_push*(manager: ptr lv_fragment_manager_t;
                               fragment: ptr lv_fragment_t;
                               container: ptr ptr lv_obj_t): void {.cdecl,
    importc: "lv_fragment_manager_push".}
proc lv_fragment_manager_pop*(manager: ptr lv_fragment_manager_t): bool {.cdecl,
    importc: "lv_fragment_manager_pop".}
proc lv_fragment_manager_replace*(manager: ptr lv_fragment_manager_t;
                                  fragment: ptr lv_fragment_t;
                                  container: ptr ptr lv_obj_t): void {.cdecl,
    importc: "lv_fragment_manager_replace".}
proc lv_fragment_manager_send_event*(manager: ptr lv_fragment_manager_t;
                                     code: cint; userdata: pointer): bool {.
    cdecl, importc: "lv_fragment_manager_send_event".}
proc lv_fragment_manager_get_stack_size*(manager: ptr lv_fragment_manager_t): csize_t {.
    cdecl, importc: "lv_fragment_manager_get_stack_size".}
proc lv_fragment_manager_get_top*(manager: ptr lv_fragment_manager_t): ptr lv_fragment_t {.
    cdecl, importc: "lv_fragment_manager_get_top".}
proc lv_fragment_manager_find_by_container*(manager: ptr lv_fragment_manager_t;
    container: ptr lv_obj_t): ptr lv_fragment_t {.cdecl,
    importc: "lv_fragment_manager_find_by_container".}
proc lv_fragment_manager_get_parent_fragment*(manager: ptr lv_fragment_manager_t): ptr lv_fragment_t {.
    cdecl, importc: "lv_fragment_manager_get_parent_fragment".}
proc lv_fragment_create*(cls: ptr lv_fragment_class_t; args: pointer): ptr lv_fragment_t {.
    cdecl, importc: "lv_fragment_create".}
proc lv_fragment_delete*(fragment: ptr lv_fragment_t): void {.cdecl,
    importc: "lv_fragment_delete".}
proc lv_fragment_get_manager*(fragment: ptr lv_fragment_t): ptr lv_fragment_manager_t {.
    cdecl, importc: "lv_fragment_get_manager".}
proc lv_fragment_get_container*(fragment: ptr lv_fragment_t): ptr ptr lv_obj_t {.
    cdecl, importc: "lv_fragment_get_container".}
proc lv_fragment_get_parent*(fragment: ptr lv_fragment_t): ptr lv_fragment_t {.
    cdecl, importc: "lv_fragment_get_parent".}
proc lv_fragment_create_obj*(fragment: ptr lv_fragment_t;
                             container: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_fragment_create_obj".}
proc lv_fragment_delete_obj*(fragment: ptr lv_fragment_t): void {.cdecl,
    importc: "lv_fragment_delete_obj".}
proc lv_fragment_recreate_obj*(fragment: ptr lv_fragment_t): void {.cdecl,
    importc: "lv_fragment_recreate_obj".}
proc lv_imgfont_create*(height: uint16; path_cb: lv_imgfont_get_path_cb_t;
                        user_data: pointer): ptr lv_font_t {.cdecl,
    importc: "lv_imgfont_create".}
proc lv_imgfont_destroy*(font: ptr lv_font_t): void {.cdecl,
    importc: "lv_imgfont_destroy".}
var lv_ime_pinyin_class* {.importc: "lv_ime_pinyin_class".}: lv_obj_class_t
proc lv_ime_pinyin_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_ime_pinyin_create".}
proc lv_ime_pinyin_set_keyboard*(obj: ptr lv_obj_t; kb: ptr lv_obj_t): void {.
    cdecl, importc: "lv_ime_pinyin_set_keyboard".}
proc lv_ime_pinyin_set_dict*(obj: ptr lv_obj_t; dict: ptr lv_pinyin_dict_t): void {.
    cdecl, importc: "lv_ime_pinyin_set_dict".}
proc lv_ime_pinyin_set_mode*(obj: ptr lv_obj_t; mode: lv_ime_pinyin_mode_t): void {.
    cdecl, importc: "lv_ime_pinyin_set_mode".}
proc lv_ime_pinyin_get_kb*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_ime_pinyin_get_kb".}
proc lv_ime_pinyin_get_cand_panel*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_ime_pinyin_get_cand_panel".}
proc lv_ime_pinyin_get_dict*(obj: ptr lv_obj_t): ptr lv_pinyin_dict_t {.cdecl,
    importc: "lv_ime_pinyin_get_dict".}
var lv_file_explorer_class* {.importc: "lv_file_explorer_class".}: lv_obj_class_t
proc lv_file_explorer_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_file_explorer_create".}
proc lv_file_explorer_set_quick_access_path*(obj: ptr lv_obj_t;
    dir: lv_file_explorer_dir_t; path: cstring): void {.cdecl,
    importc: "lv_file_explorer_set_quick_access_path".}
proc lv_file_explorer_set_sort*(obj: ptr lv_obj_t; sort: lv_file_explorer_sort_t): void {.
    cdecl, importc: "lv_file_explorer_set_sort".}
proc lv_file_explorer_get_selected_file_name*(obj: ptr lv_obj_t): cstring {.
    cdecl, importc: "lv_file_explorer_get_selected_file_name".}
proc lv_file_explorer_get_current_path*(obj: ptr lv_obj_t): cstring {.cdecl,
    importc: "lv_file_explorer_get_current_path".}
proc lv_file_explorer_get_header*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_file_explorer_get_header".}
proc lv_file_explorer_get_quick_access_area*(obj: ptr lv_obj_t): ptr lv_obj_t {.
    cdecl, importc: "lv_file_explorer_get_quick_access_area".}
proc lv_file_explorer_get_path_label*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_file_explorer_get_path_label".}
proc lv_file_explorer_get_places_list*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_file_explorer_get_places_list".}
proc lv_file_explorer_get_device_list*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_file_explorer_get_device_list".}
proc lv_file_explorer_get_file_table*(obj: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_file_explorer_get_file_table".}
proc lv_file_explorer_get_sort*(obj: ptr lv_obj_t): lv_file_explorer_sort_t {.
    cdecl, importc: "lv_file_explorer_get_sort".}
proc lv_file_explorer_open_dir*(obj: ptr lv_obj_t; dir: cstring): void {.cdecl,
    importc: "lv_file_explorer_open_dir".}
var lv_barcode_class* {.importc: "lv_barcode_class".}: lv_obj_class_t
proc lv_barcode_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_barcode_create".}
proc lv_barcode_set_dark_color*(obj: ptr lv_obj_t; color: lv_color_t): void {.
    cdecl, importc: "lv_barcode_set_dark_color".}
proc lv_barcode_set_light_color*(obj: ptr lv_obj_t; color: lv_color_t): void {.
    cdecl, importc: "lv_barcode_set_light_color".}
proc lv_barcode_set_scale*(obj: ptr lv_obj_t; scale: uint16): void {.cdecl,
    importc: "lv_barcode_set_scale".}
proc lv_barcode_set_direction*(obj: ptr lv_obj_t; direction: lv_dir_t): void {.
    cdecl, importc: "lv_barcode_set_direction".}
proc lv_barcode_set_tiled*(obj: ptr lv_obj_t; tiled: bool): void {.cdecl,
    importc: "lv_barcode_set_tiled".}
proc lv_barcode_update*(obj: ptr lv_obj_t; data: cstring): lv_result_t {.cdecl,
    importc: "lv_barcode_update".}
proc lv_barcode_get_dark_color*(obj: ptr lv_obj_t): lv_color_t {.cdecl,
    importc: "lv_barcode_get_dark_color".}
proc lv_barcode_get_light_color*(obj: ptr lv_obj_t): lv_color_t {.cdecl,
    importc: "lv_barcode_get_light_color".}
proc lv_barcode_get_scale*(obj: ptr lv_obj_t): uint16 {.cdecl,
    importc: "lv_barcode_get_scale".}
proc lv_bin_decoder_init*(): void {.cdecl, importc: "lv_bin_decoder_init".}
proc lv_bin_decoder_info*(decoder: ptr lv_image_decoder_t;
                          dsc: ptr lv_image_decoder_dsc_t;
                          header: ptr lv_image_header_t): lv_result_t {.cdecl,
    importc: "lv_bin_decoder_info".}
proc lv_bin_decoder_get_area*(decoder: ptr lv_image_decoder_t;
                              dsc: ptr lv_image_decoder_dsc_t;
                              full_area: ptr lv_area_t;
                              decoded_area: ptr lv_area_t): lv_result_t {.cdecl,
    importc: "lv_bin_decoder_get_area".}
proc lv_bmp_init*(): void {.cdecl, importc: "lv_bmp_init".}
proc lv_bmp_deinit*(): void {.cdecl, importc: "lv_bmp_deinit".}
proc lv_rle_decompress*(input: ptr uint8; input_buff_len: uint32;
                        output: ptr uint8; output_buff_len: uint32;
                        blk_size: uint8): uint32 {.cdecl,
    importc: "lv_rle_decompress".}
proc lv_fs_stdio_init*(): void {.cdecl, importc: "lv_fs_stdio_init".}
proc lv_fs_memfs_init*(): void {.cdecl, importc: "lv_fs_memfs_init".}
proc lv_lodepng_init*(): void {.cdecl, importc: "lv_lodepng_init".}
proc lv_lodepng_deinit*(): void {.cdecl, importc: "lv_lodepng_deinit".}
proc gd_open_gif_file*(fname: cstring): ptr gd_GIF {.cdecl,
    importc: "gd_open_gif_file".}
proc gd_open_gif_data*(data: pointer): ptr gd_GIF {.cdecl,
    importc: "gd_open_gif_data".}
proc gd_render_frame*(gif: ptr gd_GIF; buffer: ptr uint8): void {.cdecl,
    importc: "gd_render_frame".}
proc gd_get_frame*(gif: ptr gd_GIF): cint {.cdecl, importc: "gd_get_frame".}
proc gd_rewind*(gif: ptr gd_GIF): void {.cdecl, importc: "gd_rewind".}
proc gd_close_gif*(gif: ptr gd_GIF): void {.cdecl, importc: "gd_close_gif".}
var lv_gif_class* {.importc: "lv_gif_class".}: lv_obj_class_t
proc lv_gif_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_gif_create".}
proc lv_gif_set_src*(obj: ptr lv_obj_t; src: pointer): void {.cdecl,
    importc: "lv_gif_set_src".}
proc lv_gif_restart*(obj: ptr lv_obj_t): void {.cdecl, importc: "lv_gif_restart".}
proc lv_gif_pause*(obj: ptr lv_obj_t): void {.cdecl, importc: "lv_gif_pause".}
proc lv_gif_resume*(obj: ptr lv_obj_t): void {.cdecl, importc: "lv_gif_resume".}
proc lv_gif_is_loaded*(obj: ptr lv_obj_t): bool {.cdecl,
    importc: "lv_gif_is_loaded".}
proc lv_gif_get_loop_count*(obj: ptr lv_obj_t): int32 {.cdecl,
    importc: "lv_gif_get_loop_count".}
proc lv_gif_set_loop_count*(obj: ptr lv_obj_t; count: int32): void {.cdecl,
    importc: "lv_gif_set_loop_count".}
var lv_qrcode_class* {.importc: "lv_qrcode_class".}: lv_obj_class_t
proc lv_qrcode_create*(parent: ptr lv_obj_t): ptr lv_obj_t {.cdecl,
    importc: "lv_qrcode_create".}
proc lv_qrcode_set_size*(obj: ptr lv_obj_t; size: int32): void {.cdecl,
    importc: "lv_qrcode_set_size".}
proc lv_qrcode_set_dark_color*(obj: ptr lv_obj_t; color: lv_color_t): void {.
    cdecl, importc: "lv_qrcode_set_dark_color".}
proc lv_qrcode_set_light_color*(obj: ptr lv_obj_t; color: lv_color_t): void {.
    cdecl, importc: "lv_qrcode_set_light_color".}
proc lv_qrcode_update*(obj: ptr lv_obj_t; data: pointer; data_len: uint32): lv_result_t {.
    cdecl, importc: "lv_qrcode_update".}
proc lv_tjpgd_init*(): void {.cdecl, importc: "lv_tjpgd_init".}
proc lv_tjpgd_deinit*(): void {.cdecl, importc: "lv_tjpgd_deinit".}
proc lv_tiny_ttf_create_data*(data: pointer; data_size: csize_t;
                              font_size: int32): ptr lv_font_t {.cdecl,
    importc: "lv_tiny_ttf_create_data".}
proc lv_tiny_ttf_create_data_ex*(data: pointer; data_size: csize_t;
                                 font_size: int32; kerning: lv_font_kerning_t;
                                 cache_size: csize_t): ptr lv_font_t {.cdecl,
    importc: "lv_tiny_ttf_create_data_ex".}
proc lv_tiny_ttf_set_size*(font: ptr lv_font_t; font_size: int32): void {.cdecl,
    importc: "lv_tiny_ttf_set_size".}
proc lv_tiny_ttf_destroy*(font: ptr lv_font_t): void {.cdecl,
    importc: "lv_tiny_ttf_destroy".}
proc lv_matrix_transform_point*(matrix: ptr lv_matrix_t; point: ptr lv_fpoint_t): void {.
    cdecl, importc: "lv_matrix_transform_point".}
proc lv_matrix_transform_path*(matrix: ptr lv_matrix_t;
                               path: ptr lv_vector_path_t): void {.cdecl,
    importc: "lv_matrix_transform_path".}
proc lv_vector_path_create*(quality: lv_vector_path_quality_t): ptr lv_vector_path_t {.
    cdecl, importc: "lv_vector_path_create".}
proc lv_vector_path_copy*(target_path: ptr lv_vector_path_t;
                          path: ptr lv_vector_path_t): void {.cdecl,
    importc: "lv_vector_path_copy".}
proc lv_vector_path_clear*(path: ptr lv_vector_path_t): void {.cdecl,
    importc: "lv_vector_path_clear".}
proc lv_vector_path_delete*(path: ptr lv_vector_path_t): void {.cdecl,
    importc: "lv_vector_path_delete".}
proc lv_vector_path_move_to*(path: ptr lv_vector_path_t; p: ptr lv_fpoint_t): void {.
    cdecl, importc: "lv_vector_path_move_to".}
proc lv_vector_path_line_to*(path: ptr lv_vector_path_t; p: ptr lv_fpoint_t): void {.
    cdecl, importc: "lv_vector_path_line_to".}
proc lv_vector_path_quad_to*(path: ptr lv_vector_path_t; p1: ptr lv_fpoint_t;
                             p2: ptr lv_fpoint_t): void {.cdecl,
    importc: "lv_vector_path_quad_to".}
proc lv_vector_path_cubic_to*(path: ptr lv_vector_path_t; p1: ptr lv_fpoint_t;
                              p2: ptr lv_fpoint_t; p3: ptr lv_fpoint_t): void {.
    cdecl, importc: "lv_vector_path_cubic_to".}
proc lv_vector_path_close*(path: ptr lv_vector_path_t): void {.cdecl,
    importc: "lv_vector_path_close".}
proc lv_vector_path_get_bounding*(path: ptr lv_vector_path_t;
                                  area: ptr lv_area_t): void {.cdecl,
    importc: "lv_vector_path_get_bounding".}
proc lv_vector_path_append_rect*(path: ptr lv_vector_path_t;
                                 rect: ptr lv_area_t; rx: cfloat; ry: cfloat): void {.
    cdecl, importc: "lv_vector_path_append_rect".}
proc lv_vector_path_append_circle*(path: ptr lv_vector_path_t;
                                   c: ptr lv_fpoint_t; rx: cfloat; ry: cfloat): void {.
    cdecl, importc: "lv_vector_path_append_circle".}
proc lv_vector_path_append_arc*(path: ptr lv_vector_path_t; c: ptr lv_fpoint_t;
                                radius: cfloat; start_angle: cfloat;
                                sweep: cfloat; pie: bool): void {.cdecl,
    importc: "lv_vector_path_append_arc".}
proc lv_vector_path_append_path*(path: ptr lv_vector_path_t;
                                 subpath: ptr lv_vector_path_t): void {.cdecl,
    importc: "lv_vector_path_append_path".}
proc lv_vector_dsc_create*(layer: ptr lv_layer_t): ptr lv_vector_dsc_t {.cdecl,
    importc: "lv_vector_dsc_create".}
proc lv_vector_dsc_delete*(dsc: ptr lv_vector_dsc_t): void {.cdecl,
    importc: "lv_vector_dsc_delete".}
proc lv_vector_dsc_set_transform*(dsc: ptr lv_vector_dsc_t;
                                  matrix: ptr lv_matrix_t): void {.cdecl,
    importc: "lv_vector_dsc_set_transform".}
proc lv_vector_dsc_set_blend_mode*(dsc: ptr lv_vector_dsc_t;
                                   blend: lv_vector_blend_t): void {.cdecl,
    importc: "lv_vector_dsc_set_blend_mode".}
proc lv_vector_dsc_set_fill_color32*(dsc: ptr lv_vector_dsc_t;
                                     color: lv_color32_t): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_color32".}
proc lv_vector_dsc_set_fill_color*(dsc: ptr lv_vector_dsc_t; color: lv_color_t): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_color".}
proc lv_vector_dsc_set_fill_opa*(dsc: ptr lv_vector_dsc_t; opa: lv_opa_t): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_opa".}
proc lv_vector_dsc_set_fill_rule*(dsc: ptr lv_vector_dsc_t;
                                  rule: lv_vector_fill_t): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_rule".}
proc lv_vector_dsc_set_fill_image*(dsc: ptr lv_vector_dsc_t;
                                   img_dsc: ptr lv_draw_image_dsc_t): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_image".}
proc lv_vector_dsc_set_fill_linear_gradient*(dsc: ptr lv_vector_dsc_t;
    x1: cfloat; y1: cfloat; x2: cfloat; y2: cfloat): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_linear_gradient".}
proc lv_vector_dsc_set_fill_radial_gradient*(dsc: ptr lv_vector_dsc_t;
    cx: cfloat; cy: cfloat; radius: cfloat): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_radial_gradient".}
proc lv_vector_dsc_set_fill_gradient_spread*(dsc: ptr lv_vector_dsc_t;
    spread: lv_vector_gradient_spread_t): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_gradient_spread".}
proc lv_vector_dsc_set_fill_gradient_color_stops*(dsc: ptr lv_vector_dsc_t;
    stops: ptr lv_gradient_stop_t; count: uint16): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_gradient_color_stops".}
proc lv_vector_dsc_set_fill_transform*(dsc: ptr lv_vector_dsc_t;
                                       matrix: ptr lv_matrix_t): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_transform".}
proc lv_vector_dsc_set_stroke_color32*(dsc: ptr lv_vector_dsc_t;
                                       color: lv_color32_t): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_color32".}
proc lv_vector_dsc_set_stroke_color*(dsc: ptr lv_vector_dsc_t; color: lv_color_t): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_color".}
proc lv_vector_dsc_set_stroke_opa*(dsc: ptr lv_vector_dsc_t; opa: lv_opa_t): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_opa".}
proc lv_vector_dsc_set_stroke_width*(dsc: ptr lv_vector_dsc_t; width: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_width".}
proc lv_vector_dsc_set_stroke_dash*(dsc: ptr lv_vector_dsc_t;
                                    dash_pattern: ptr cfloat; dash_count: uint16): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_dash".}
proc lv_vector_dsc_set_stroke_cap*(dsc: ptr lv_vector_dsc_t;
                                   cap: lv_vector_stroke_cap_t): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_cap".}
proc lv_vector_dsc_set_stroke_join*(dsc: ptr lv_vector_dsc_t;
                                    join: lv_vector_stroke_join_t): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_join".}
proc lv_vector_dsc_set_stroke_miter_limit*(dsc: ptr lv_vector_dsc_t;
    miter_limit: uint16): void {.cdecl, importc: "lv_vector_dsc_set_stroke_miter_limit".}
proc lv_vector_dsc_set_stroke_linear_gradient*(dsc: ptr lv_vector_dsc_t;
    x1: cfloat; y1: cfloat; x2: cfloat; y2: cfloat): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_linear_gradient".}
proc lv_vector_dsc_set_stroke_radial_gradient*(dsc: ptr lv_vector_dsc_t;
    cx: cfloat; cy: cfloat; radius: cfloat): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_radial_gradient".}
proc lv_vector_dsc_set_stroke_gradient_spread*(dsc: ptr lv_vector_dsc_t;
    spread: lv_vector_gradient_spread_t): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_gradient_spread".}
proc lv_vector_dsc_set_stroke_gradient_color_stops*(dsc: ptr lv_vector_dsc_t;
    stops: ptr lv_gradient_stop_t; count: uint16): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_gradient_color_stops".}
proc lv_vector_dsc_set_stroke_transform*(dsc: ptr lv_vector_dsc_t;
    matrix: ptr lv_matrix_t): void {.cdecl, importc: "lv_vector_dsc_set_stroke_transform".}
proc lv_vector_dsc_identity*(dsc: ptr lv_vector_dsc_t): void {.cdecl,
    importc: "lv_vector_dsc_identity".}
proc lv_vector_dsc_scale*(dsc: ptr lv_vector_dsc_t; scale_x: cfloat;
                          scale_y: cfloat): void {.cdecl,
    importc: "lv_vector_dsc_scale".}
proc lv_vector_dsc_rotate*(dsc: ptr lv_vector_dsc_t; degree: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_rotate".}
proc lv_vector_dsc_translate*(dsc: ptr lv_vector_dsc_t; tx: cfloat; ty: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_translate".}
proc lv_vector_dsc_skew*(dsc: ptr lv_vector_dsc_t; skew_x: cfloat;
                         skew_y: cfloat): void {.cdecl,
    importc: "lv_vector_dsc_skew".}
proc lv_vector_dsc_add_path*(dsc: ptr lv_vector_dsc_t;
                             path: ptr lv_vector_path_t): void {.cdecl,
    importc: "lv_vector_dsc_add_path".}
proc lv_vector_clear_area*(dsc: ptr lv_vector_dsc_t; rect: ptr lv_area_t): void {.
    cdecl, importc: "lv_vector_clear_area".}
proc lv_draw_vector*(dsc: ptr lv_vector_dsc_t): void {.cdecl,
    importc: "lv_draw_vector".}
proc lv_draw_triangle_dsc_init*(draw_dsc: ptr lv_draw_triangle_dsc_t): void {.
    cdecl, importc: "lv_draw_triangle_dsc_init".}
proc lv_draw_task_get_triangle_dsc*(task: ptr lv_draw_task_t): ptr lv_draw_triangle_dsc_t {.
    cdecl, importc: "lv_draw_task_get_triangle_dsc".}
proc lv_draw_triangle*(layer: ptr lv_layer_t;
                       draw_dsc: ptr lv_draw_triangle_dsc_t): void {.cdecl,
    importc: "lv_draw_triangle".}
proc lv_draw_sw_init*(): void {.cdecl, importc: "lv_draw_sw_init".}
proc lv_draw_sw_deinit*(): void {.cdecl, importc: "lv_draw_sw_deinit".}
proc lv_draw_sw_fill*(draw_unit: ptr lv_draw_unit_t;
                      dsc: ptr lv_draw_fill_dsc_t; coords: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_sw_fill".}
proc lv_draw_sw_border*(draw_unit: ptr lv_draw_unit_t;
                        dsc: ptr lv_draw_border_dsc_t; coords: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_sw_border".}
proc lv_draw_sw_box_shadow*(draw_unit: ptr lv_draw_unit_t;
                            dsc: ptr lv_draw_box_shadow_dsc_t;
                            coords: ptr lv_area_t): void {.cdecl,
    importc: "lv_draw_sw_box_shadow".}
proc lv_draw_sw_image*(draw_unit: ptr lv_draw_unit_t;
                       draw_dsc: ptr lv_draw_image_dsc_t; coords: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_sw_image".}
proc lv_draw_sw_label*(draw_unit: ptr lv_draw_unit_t;
                       dsc: ptr lv_draw_label_dsc_t; coords: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_sw_label".}
proc lv_draw_sw_arc*(draw_unit: ptr lv_draw_unit_t; dsc: ptr lv_draw_arc_dsc_t;
                     coords: ptr lv_area_t): void {.cdecl,
    importc: "lv_draw_sw_arc".}
proc lv_draw_sw_line*(draw_unit: ptr lv_draw_unit_t; dsc: ptr lv_draw_line_dsc_t): void {.
    cdecl, importc: "lv_draw_sw_line".}
proc lv_draw_sw_layer*(draw_unit: ptr lv_draw_unit_t;
                       draw_dsc: ptr lv_draw_image_dsc_t; coords: ptr lv_area_t): void {.
    cdecl, importc: "lv_draw_sw_layer".}
proc lv_draw_sw_triangle*(draw_unit: ptr lv_draw_unit_t;
                          dsc: ptr lv_draw_triangle_dsc_t): void {.cdecl,
    importc: "lv_draw_sw_triangle".}
proc lv_draw_sw_mask_rect*(draw_unit: ptr lv_draw_unit_t;
                           dsc: ptr lv_draw_mask_rect_dsc_t;
                           coords: ptr lv_area_t): void {.cdecl,
    importc: "lv_draw_sw_mask_rect".}
proc lv_draw_sw_transform*(draw_unit: ptr lv_draw_unit_t;
                           dest_area: ptr lv_area_t; src_buf: pointer;
                           src_w: int32; src_h: int32; src_stride: int32;
                           draw_dsc: ptr lv_draw_image_dsc_t;
                           sup: ptr lv_draw_image_sup_t; cf: lv_color_format_t;
                           dest_buf: pointer): void {.cdecl,
    importc: "lv_draw_sw_transform".}
proc lv_draw_sw_vector*(draw_unit: ptr lv_draw_unit_t;
                        dsc: ptr lv_draw_vector_task_dsc_t): void {.cdecl,
    importc: "lv_draw_sw_vector".}
proc lv_draw_sw_rgb565_swap*(buf: pointer; buf_size_px: uint32): void {.cdecl,
    importc: "lv_draw_sw_rgb565_swap".}
proc lv_draw_sw_i1_invert*(buf: pointer; buf_size: uint32): void {.cdecl,
    importc: "lv_draw_sw_i1_invert".}
proc lv_draw_sw_rotate*(src: pointer; dest: pointer; src_width: int32;
                        src_height: int32; src_stride: int32;
                        dest_stride: int32; rotation: lv_display_rotation_t;
                        color_format: lv_color_format_t): void {.cdecl,
    importc: "lv_draw_sw_rotate".}
proc lv_draw_sw_mask_init*(): void {.cdecl, importc: "lv_draw_sw_mask_init".}
proc lv_draw_sw_mask_deinit*(): void {.cdecl, importc: "lv_draw_sw_mask_deinit".}
proc lv_draw_sw_mask_apply*(masks: ptr UncheckedArray[pointer];
                            mask_buf: ptr lv_opa_t; abs_x: int32; abs_y: int32;
                            len: int32): lv_draw_sw_mask_res_t {.cdecl,
    importc: "lv_draw_sw_mask_apply".}
proc lv_draw_sw_mask_free_param*(p: pointer): void {.cdecl,
    importc: "lv_draw_sw_mask_free_param".}
proc lv_draw_sw_mask_line_points_init*(param: ptr lv_draw_sw_mask_line_param_t;
                                       p1x: int32; p1y: int32; p2x: int32;
                                       p2y: int32;
                                       side: lv_draw_sw_mask_line_side_t): void {.
    cdecl, importc: "lv_draw_sw_mask_line_points_init".}
proc lv_draw_sw_mask_line_angle_init*(param: ptr lv_draw_sw_mask_line_param_t;
                                      px: int32; py: int32; angle: int16;
                                      side: lv_draw_sw_mask_line_side_t): void {.
    cdecl, importc: "lv_draw_sw_mask_line_angle_init".}
proc lv_draw_sw_mask_angle_init*(param: ptr lv_draw_sw_mask_angle_param_t;
                                 vertex_x: int32; vertex_y: int32;
                                 start_angle: int32; end_angle: int32): void {.
    cdecl, importc: "lv_draw_sw_mask_angle_init".}
proc lv_draw_sw_mask_radius_init*(param: ptr lv_draw_sw_mask_radius_param_t;
                                  rect: ptr lv_area_t; radius: int32; inv: bool): void {.
    cdecl, importc: "lv_draw_sw_mask_radius_init".}
proc lv_draw_sw_mask_fade_init*(param: ptr lv_draw_sw_mask_fade_param_t;
                                coords: ptr lv_area_t; opa_top: lv_opa_t;
                                y_top: int32; opa_bottom: lv_opa_t;
                                y_bottom: int32): void {.cdecl,
    importc: "lv_draw_sw_mask_fade_init".}
proc lv_draw_sw_mask_map_init*(param: ptr lv_draw_sw_mask_map_param_t;
                               coords: ptr lv_area_t; map: ptr lv_opa_t): void {.
    cdecl, importc: "lv_draw_sw_mask_map_init".}
proc lv_draw_sw_blend*(draw_unit: ptr lv_draw_unit_t;
                       dsc: ptr lv_draw_sw_blend_dsc_t): void {.cdecl,
    importc: "lv_draw_sw_blend".}
proc lv_theme_get_from_obj*(obj: ptr lv_obj_t): ptr lv_theme_t {.cdecl,
    importc: "lv_theme_get_from_obj".}
proc lv_theme_apply*(obj: ptr lv_obj_t): void {.cdecl, importc: "lv_theme_apply".}
proc lv_theme_set_parent*(new_theme: ptr lv_theme_t; parent: ptr lv_theme_t): void {.
    cdecl, importc: "lv_theme_set_parent".}
proc lv_theme_set_apply_cb*(theme: ptr lv_theme_t; apply_cb: lv_theme_apply_cb_t): void {.
    cdecl, importc: "lv_theme_set_apply_cb".}
proc lv_theme_get_font_small*(obj: ptr lv_obj_t): ptr lv_font_t {.cdecl,
    importc: "lv_theme_get_font_small".}
proc lv_theme_get_font_normal*(obj: ptr lv_obj_t): ptr lv_font_t {.cdecl,
    importc: "lv_theme_get_font_normal".}
proc lv_theme_get_font_large*(obj: ptr lv_obj_t): ptr lv_font_t {.cdecl,
    importc: "lv_theme_get_font_large".}
proc lv_theme_get_color_primary*(obj: ptr lv_obj_t): lv_color_t {.cdecl,
    importc: "lv_theme_get_color_primary".}
proc lv_theme_get_color_secondary*(obj: ptr lv_obj_t): lv_color_t {.cdecl,
    importc: "lv_theme_get_color_secondary".}
proc lv_theme_default_init*(disp: ptr lv_display_t; color_primary: lv_color_t;
                            color_secondary: lv_color_t; dark: bool;
                            font: ptr lv_font_t): ptr lv_theme_t {.cdecl,
    importc: "lv_theme_default_init".}
proc lv_theme_default_get*(): ptr lv_theme_t {.cdecl,
    importc: "lv_theme_default_get".}
proc lv_theme_default_is_inited*(): bool {.cdecl,
    importc: "lv_theme_default_is_inited".}
proc lv_theme_default_deinit*(): void {.cdecl,
                                        importc: "lv_theme_default_deinit".}
proc lv_theme_mono_init*(disp: ptr lv_display_t; dark_bg: bool;
                         font: ptr lv_font_t): ptr lv_theme_t {.cdecl,
    importc: "lv_theme_mono_init".}
proc lv_theme_mono_is_inited*(): bool {.cdecl,
                                        importc: "lv_theme_mono_is_inited".}
proc lv_theme_mono_deinit*(): void {.cdecl, importc: "lv_theme_mono_deinit".}
proc lv_theme_simple_init*(disp: ptr lv_display_t): ptr lv_theme_t {.cdecl,
    importc: "lv_theme_simple_init".}
proc lv_theme_simple_is_inited*(): bool {.cdecl,
    importc: "lv_theme_simple_is_inited".}
proc lv_theme_simple_get*(): ptr lv_theme_t {.cdecl,
    importc: "lv_theme_simple_get".}
proc lv_theme_simple_deinit*(): void {.cdecl, importc: "lv_theme_simple_deinit".}
proc lv_sdl_window_create*(hor_res: int32; ver_res: int32): ptr lv_display_t {.
    cdecl, importc: "lv_sdl_window_create".}
proc lv_sdl_window_set_resizeable*(disp: ptr lv_display_t; value: bool): void {.
    cdecl, importc: "lv_sdl_window_set_resizeable".}
proc lv_sdl_window_set_zoom*(disp: ptr lv_display_t; zoom: uint8): void {.cdecl,
    importc: "lv_sdl_window_set_zoom".}
proc lv_sdl_window_get_zoom*(disp: ptr lv_display_t): uint8 {.cdecl,
    importc: "lv_sdl_window_get_zoom".}
proc lv_sdl_window_set_title*(disp: ptr lv_display_t; title: cstring): void {.
    cdecl, importc: "lv_sdl_window_set_title".}
proc lv_sdl_window_get_renderer*(disp: ptr lv_display_t): pointer {.cdecl,
    importc: "lv_sdl_window_get_renderer".}
proc lv_sdl_quit*(): void {.cdecl, importc: "lv_sdl_quit".}
proc lv_sdl_mouse_create*(): ptr lv_indev_t {.cdecl,
    importc: "lv_sdl_mouse_create".}
proc lv_sdl_mousewheel_create*(): ptr lv_indev_t {.cdecl,
    importc: "lv_sdl_mousewheel_create".}
proc lv_sdl_keyboard_create*(): ptr lv_indev_t {.cdecl,
    importc: "lv_sdl_keyboard_create".}
proc lv_task_handler*(): uint32 {.cdecl, importc: "lv_task_handler".}
proc lv_obj_move_foreground*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_move_foreground".}
proc lv_obj_move_background*(obj: ptr lv_obj_t): void {.cdecl,
    importc: "lv_obj_move_background".}
proc lv_version_major*(): cint {.cdecl, importc: "lv_version_major".}
proc lv_version_minor*(): cint {.cdecl, importc: "lv_version_minor".}
proc lv_version_patch*(): cint {.cdecl, importc: "lv_version_patch".}
proc lv_version_info*(): cstring {.cdecl, importc: "lv_version_info".}