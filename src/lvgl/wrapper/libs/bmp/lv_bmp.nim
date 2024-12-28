##
##  @file lv_bmp.h
##
##

## *******************
##       INCLUDES
## *******************

import
  ../../lv_conf_internal

when LV_USE_BMP:
  ## *******************
  ##       DEFINES
  ## *******************
  ## ********************
  ##       TYPEDEFS
  ## ********************
  ## ********************
  ##  GLOBAL PROTOTYPES
  ## ********************
  proc lv_bmp_init*() {.importc: "lv_bmp_init", header: "lv_bmp.h".}
  proc lv_bmp_deinit*() {.importc: "lv_bmp_deinit", header: "lv_bmp.h".}
  ## ********************
  ##       MACROS
  ## ********************