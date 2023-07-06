/**
 * @file lv_draw_layer.c
 *
 */

/*********************
 *      INCLUDES
 *********************/
#include "lv_draw.h"
#include "lv_draw_arc.h"
#include "../core/lv_refr.h"

/*********************
 *      DEFINES
 *********************/

/**********************
 *      TYPEDEFS
 **********************/

/**********************
 *  STATIC PROTOTYPES
 **********************/

/**********************
 *  STATIC VARIABLES
 **********************/

/**********************
 *      MACROS
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/

lv_draw_layer_ctx_t * lv_draw_layer_create(lv_draw_ctx_t * draw_ctx, const lv_area_t * layer_area,
                                           lv_draw_layer_flags_t flags)
{
    if(draw_ctx->layer_init == NULL) return NULL;

    lv_draw_layer_ctx_t * layer_ctx = lv_malloc(draw_ctx->layer_instance_size);
    LV_ASSERT_MALLOC(layer_ctx);
    if(layer_ctx == NULL) {
        LV_LOG_WARN("Couldn't allocate a new layer context");
        return NULL;
    }
    LV_PROFILER_BEGIN;

    lv_memzero(layer_ctx, draw_ctx->layer_instance_size);

    layer_ctx->original.buf = draw_ctx->buf;
    layer_ctx->original.buf_area = draw_ctx->buf_area;
    layer_ctx->original.clip_area = draw_ctx->clip_area;
    layer_ctx->original.color_format = draw_ctx->color_format;
    layer_ctx->area_full = *layer_area;

    lv_draw_layer_ctx_t * init_layer_ctx =  draw_ctx->layer_init(draw_ctx, layer_ctx, flags);

    if(NULL == init_layer_ctx) {
        lv_free(layer_ctx);
    }
    LV_PROFILER_END;
    return init_layer_ctx;
}

void lv_draw_layer_adjust(struct _lv_draw_ctx_t * draw_ctx, struct _lv_draw_layer_ctx_t * layer_ctx,
                          lv_draw_layer_flags_t flags)
{
    LV_PROFILER_BEGIN;
    if(draw_ctx->layer_adjust) draw_ctx->layer_adjust(draw_ctx, layer_ctx, flags);
    LV_PROFILER_END;
}

void lv_draw_layer_blend(struct _lv_draw_ctx_t * draw_ctx, struct _lv_draw_layer_ctx_t * layer_ctx,
                         lv_draw_img_dsc_t * draw_dsc)
{
    LV_PROFILER_BEGIN;
    lv_draw_wait_for_finish(draw_ctx);
    if(draw_ctx->layer_blend) draw_ctx->layer_blend(draw_ctx, layer_ctx, draw_dsc);
    LV_PROFILER_END;
}

void lv_draw_layer_destroy(lv_draw_ctx_t * draw_ctx, lv_draw_layer_ctx_t * layer_ctx)
{
    LV_PROFILER_BEGIN;
    lv_draw_wait_for_finish(draw_ctx);
    draw_ctx->buf = layer_ctx->original.buf;
    draw_ctx->buf_area = layer_ctx->original.buf_area;
    draw_ctx->clip_area = layer_ctx->original.clip_area;
    draw_ctx->color_format = layer_ctx->original.color_format;

    if(draw_ctx->layer_destroy) draw_ctx->layer_destroy(draw_ctx, layer_ctx);
    lv_free(layer_ctx);
    LV_PROFILER_END;
}

/**********************
 *   STATIC FUNCTIONS
 **********************/
