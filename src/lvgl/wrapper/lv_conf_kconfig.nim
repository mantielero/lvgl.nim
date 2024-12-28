##  * @file lv_conf_kconfig.h * Configs that need special handling when LVGL is used with Kconfig

when defined(LV_CONF_KCONFIG_EXTERNAL_INCLUDE):
  discard
else:
  when defined(ESP_PLATFORM):
    import
      sdkconfig, esp_attr

  when defined(__NuttX__):
    discard
  elif defined(__RTTHREAD__):
## *****************
##  LV_USE_STDLIB_MALLOC
## *****************

when defined(CONFIG_LV_USE_BUILTIN_MALLOC):
  const
    CONFIG_LV_USE_STDLIB_MALLOC* = LV_STDLIB_BUILTIN
elif defined(CONFIG_LV_USE_CLIB_MALLOC):
  const
    CONFIG_LV_USE_STDLIB_MALLOC* = LV_STDLIB_CLIB
elif defined(CONFIG_LV_USE_MICROPYTHON_MALLOC):
  const
    CONFIG_LV_USE_STDLIB_MALLOC* = LV_STDLIB_MICROPYTHON
elif defined(CONFIG_LV_USE_RTTHREAD_MALLOC):
  const
    CONFIG_LV_USE_STDLIB_MALLOC* = LV_STDLIB_RTTHREAD
elif defined(CONFIG_LV_USE_CUSTOM_MALLOC):
  const
    CONFIG_LV_USE_STDLIB_MALLOC* = LV_STDLIB_CUSTOM
## *****************
##  LV_USE_STDLIB_STRING
## *****************

when defined(CONFIG_LV_USE_BUILTIN_STRING):
  const
    CONFIG_LV_USE_STDLIB_STRING* = LV_STDLIB_BUILTIN
elif defined(CONFIG_LV_USE_CLIB_STRING):
  const
    CONFIG_LV_USE_STDLIB_STRING* = LV_STDLIB_CLIB
elif defined(CONFIG_LV_USE_MICROPYTHON_STRING):
  const
    CONFIG_LV_USE_STDLIB_STRING* = LV_STDLIB_MICROPYTHON
elif defined(CONFIG_LV_USE_RTTHREAD_STRING):
  const
    CONFIG_LV_USE_STDLIB_STRING* = LV_STDLIB_RTTHREAD
elif defined(CONFIG_LV_USE_CUSTOM_STRING):
  const
    CONFIG_LV_USE_STDLIB_STRING* = LV_STDLIB_CUSTOM
## *****************
##  LV_USE_STDLIB_SPRINTF
## *****************

when defined(CONFIG_LV_USE_BUILTIN_SPRINTF):
  const
    CONFIG_LV_USE_STDLIB_SPRINTF* = LV_STDLIB_BUILTIN
elif defined(CONFIG_LV_USE_CLIB_SPRINTF):
  const
    CONFIG_LV_USE_STDLIB_SPRINTF* = LV_STDLIB_CLIB
elif defined(CONFIG_LV_USE_MICROPYTHON_SPRINTF):
  const
    CONFIG_LV_USE_STDLIB_SPRINTF* = LV_STDLIB_MICROPYTHON
elif defined(CONFIG_LV_USE_RTTHREAD_SPRINTF):
  const
    CONFIG_LV_USE_STDLIB_SPRINTF* = LV_STDLIB_RTTHREAD
elif defined(CONFIG_LV_USE_CUSTOM_SPRINTF):
  const
    CONFIG_LV_USE_STDLIB_SPRINTF* = LV_STDLIB_CUSTOM
## *****************
##  LV_MEM_SIZE
## *****************

when defined(CONFIG_LV_MEM_SIZE_KILOBYTES):
  when (CONFIG_LV_MEM_SIZE_KILOBYTES < 2):
    discard
  const
    CONFIG_LV_MEM_SIZE* = (CONFIG_LV_MEM_SIZE_KILOBYTES * 1024'u)
when defined(CONFIG_LV_MEM_POOL_EXPAND_SIZE_KILOBYTES):
  const
    CONFIG_LV_MEM_POOL_EXPAND_SIZE* = (
      CONFIG_LV_MEM_POOL_EXPAND_SIZE_KILOBYTES * 1024'u)
## ------------------
##  MONITOR POSITION
## -----------------

when defined(CONFIG_LV_PERF_MONITOR_ALIGN_TOP_LEFT):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_TOP_LEFT
elif defined(CONFIG_LV_USE_PERF_MONITOR_ALIGN_TOP_MID):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_TOP_MID
elif defined(CONFIG_LV_PERF_MONITOR_ALIGN_TOP_RIGHT):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_TOP_RIGHT
elif defined(CONFIG_LV_PERF_MONITOR_ALIGN_BOTTOM_LEFT):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_BOTTOM_LEFT
elif defined(CONFIG_LV_PERF_MONITOR_ALIGN_BOTTOM_MID):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_BOTTOM_MID
elif defined(CONFIG_LV_PERF_MONITOR_ALIGN_BOTTOM_RIGHT):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_BOTTOM_RIGHT
elif defined(CONFIG_LV_PERF_MONITOR_ALIGN_LEFT_MID):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_LEFT_MID
elif defined(CONFIG_LV_PERF_MONITOR_ALIGN_RIGHT_MID):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_RIGHT_MID
elif defined(CONFIG_LV_PERF_MONITOR_ALIGN_CENTER):
  const
    CONFIG_LV_USE_PERF_MONITOR_POS* = LV_ALIGN_CENTER
when defined(CONFIG_LV_MEM_MONITOR_ALIGN_TOP_LEFT):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_TOP_LEFT
elif defined(CONFIG_LV_USE_MEM_MONITOR_ALIGN_TOP_MID):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_TOP_MID
elif defined(CONFIG_LV_MEM_MONITOR_ALIGN_TOP_RIGHT):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_TOP_RIGHT
elif defined(CONFIG_LV_MEM_MONITOR_ALIGN_BOTTOM_LEFT):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_BOTTOM_LEFT
elif defined(CONFIG_LV_MEM_MONITOR_ALIGN_BOTTOM_MID):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_BOTTOM_MID
elif defined(CONFIG_LV_MEM_MONITOR_ALIGN_BOTTOM_RIGHT):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_BOTTOM_RIGHT
elif defined(CONFIG_LV_MEM_MONITOR_ALIGN_LEFT_MID):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_LEFT_MID
elif defined(CONFIG_LV_MEM_MONITOR_ALIGN_RIGHT_MID):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_RIGHT_MID
elif defined(CONFIG_LV_MEM_MONITOR_ALIGN_CENTER):
  const
    CONFIG_LV_USE_MEM_MONITOR_POS* = LV_ALIGN_CENTER
## ******************
##  FONT SELECTION
## *****************
##
##  NOTE: In Kconfig instead of `LV_DEFAULT_FONT`
##        `CONFIG_LV_FONT_DEFAULT_<font_name>` is defined
##        hence the large selection with if-s
##
## ------------------
##  DEFAULT FONT
## -----------------

when defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_8):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_8)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_10):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_10)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_12):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_12)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_14):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_14)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_16):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_16)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_18):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_18)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_20):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_20)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_22):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_22)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_24):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_24)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_26):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_26)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_28):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_28)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_30):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_30)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_32):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_32)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_34):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_34)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_36):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_36)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_38):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_38)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_40):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_40)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_42):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_42)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_44):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_44)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_46):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_46)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_48):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_48)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_12_SUBPX):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_12_subpx)
elif defined(CONFIG_LV_FONT_DEFAULT_MONTSERRAT_28_COMPRESSED):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_montserrat_28_compressed)
elif defined(CONFIG_LV_FONT_DEFAULT_DEJAVU_16_PERSIAN_HEBREW):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_dejavu_16_persian_hebrew)
elif defined(CONFIG_LV_FONT_DEFAULT_SIMSUN_14_CJK):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_simsun_14_cjk)
elif defined(CONFIG_LV_FONT_DEFAULT_SIMSUN_16_CJK):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_simsun_16_cjk)
elif defined(CONFIG_LV_FONT_DEFAULT_UNSCII_8):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_unscii_8)
elif defined(CONFIG_LV_FONT_DEFAULT_UNSCII_16):
  const
    CONFIG_LV_FONT_DEFAULT* = addr(lv_font_unscii_16)
## ------------------
##  TEXT ENCODING
## -----------------

when defined(CONFIG_LV_TXT_ENC_UTF8):
  const
    CONFIG_LV_TXT_ENC* = LV_TXT_ENC_UTF8
elif defined(CONFIG_LV_TXT_ENC_ASCII):
  const
    CONFIG_LV_TXT_ENC* = LV_TXT_ENC_ASCII
## ------------------
##  BIDI DIRECTION
## -----------------

when defined(CONFIG_LV_BASE_DIR_LTR):
  const
    CONFIG_LV_BIDI_BASE_DIR_DEF* = LV_BASE_DIR_LTR
elif defined(CONFIG_LV_BASE_DIR_RTL):
  const
    CONFIG_LV_BIDI_BASE_DIR_DEF* = LV_BASE_DIR_RTL
elif defined(CONFIG_LV_BASE_DIR_AUTO):
  const
    CONFIG_LV_BIDI_BASE_DIR_DEF* = LV_BASE_DIR_AUTO
## ------------------
##  SDL
## -----------------

when defined(CONFIG_LV_SDL_RENDER_MODE_PARTIAL):
  const
    CONFIG_LV_SDL_RENDER_MODE* = LV_DISPLAY_RENDER_MODE_PARTIAL
elif defined(CONFIG_LV_SDL_RENDER_MODE_DIRECT):
  const
    CONFIG_LV_SDL_RENDER_MODE* = LV_DISPLAY_RENDER_MODE_DIRECT
elif defined(CONFIG_LV_SDL_RENDER_MODE_FULL):
  const
    CONFIG_LV_SDL_RENDER_MODE* = LV_DISPLAY_RENDER_MODE_FULL
## ------------------
##  LINUX FBDEV
## -----------------

when defined(CONFIG_LV_LINUX_FBDEV_RENDER_MODE_PARTIAL):
  const
    CONFIG_LV_LINUX_FBDEV_RENDER_MODE* = LV_DISPLAY_RENDER_MODE_PARTIAL
elif defined(CONFIG_LV_LINUX_FBDEV_RENDER_MODE_DIRECT):
  const
    CONFIG_LV_LINUX_FBDEV_RENDER_MODE* = LV_DISPLAY_RENDER_MODE_DIRECT
elif defined(CONFIG_LV_LINUX_FBDEV_RENDER_MODE_FULL):
  const
    CONFIG_LV_LINUX_FBDEV_RENDER_MODE* = LV_DISPLAY_RENDER_MODE_FULL