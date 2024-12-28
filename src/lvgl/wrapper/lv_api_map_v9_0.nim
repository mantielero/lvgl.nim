##
##  @file lv_api_map_v9_0.h
##
##

## *******************
##       INCLUDES
## *******************

import
  misc/lv_types

## *******************
##       DEFINES
## *******************
## ********************
##       TYPEDEFS
## ********************
## ********************
##  GLOBAL PROTOTYPES
## ********************
## ********************
##       MACROS
## ********************

const
  lv_image_set_align* = lv_image_set_inner_align
  lv_image_get_align* = lv_image_get_inner_align

when not defined(LV_DRAW_LAYER_SIMPLE_BUF_SIZE):
  const
    LV_DRAW_LAYER_SIMPLE_BUF_SIZE* = LV_DRAW_SW_LAYER_SIMPLE_BUF_SIZE
const
  lv_button_bind_checked* = lv_obj_bind_checked
  LV_DRAW_BUF_DEFINE* = LV_DRAW_BUF_DEFINE_STATIC

## ********************
##       MACROS
## ********************
## ********************
##  DEPRECATED FUNCTIONS
## ********************
