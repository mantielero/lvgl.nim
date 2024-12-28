##
##  @file lv_init.h
##
##

## *******************
##       INCLUDES
## *******************

import
  lv_conf_internal, misc/lv_types

## *******************
##       DEFINES
## *******************
## ********************
##       TYPEDEFS
## ********************
## ********************
##  GLOBAL PROTOTYPES
## ********************
##
##  Initialize LVGL library.
##  Should be called before any other LVGL related function.
##

proc lv_init*() {.importc: "lv_init", header: "lv_init.h".}
##
##  Deinit the 'lv' library
##

proc lv_deinit*() {.importc: "lv_deinit", header: "lv_init.h".}
##
##  Returns whether the 'lv' library is currently initialized
##

proc lv_is_initialized*(): bool {.importc: "lv_is_initialized", header: "lv_init.h".}
## ********************
##       MACROS
## ********************
