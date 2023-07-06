
.. |check| replace:: ☑

.. |uncheck| replace:: 🔲️


Roadmap
=======

Planned for v9
--------------

Naming and API
~~~~~~~~~~~~~~

- |check| `lv_style_set_size()` should have separate width and height parameters
- |check| Reconsider image color formats.
- |uncheck| More consistent names:`remove/clear/delete/del`, `offset/ofs`, `add/create/register`, `id/idx/index`, `middle/mid/center`, `img/image`, `txt/text`, `opa/opacity/alpha`, `scr/screen`, `disp, display`, `finished/complete/completed/ready`, `buf/buffer`,  `..._cb`, `angle/rotation`, `zoom/scale`, `has`, `is`, `enable` 
- |check| Update canvas API `LINK <https://github.com/lvgl/lvgl/issues/3393>`__
- |check| `LV_STYLE_PROP_INHERIT` -> `LV_STYLE_PROP_FLAG_INHERITABLE`
  `LINK <https://github.com/lvgl/lvgl/pull/3390#discussion_r885915769>`__
- |check| Replace `disp_drv->direct_mode/full_refresh` with enum.
- |check| Consider flat directory structure. E.g. `extra/widgets` to `widgets`
- |uncheck| Use `uint32_t` and `int32_t` in APIs where possible. Consider hardcoding `lv_coord_t` as `int32_t`.
- |uncheck| To define a new stdlib API use defines `LV_USE_CUSTOM_...` and
  let the user implement `lv_...` functions somewhere (instead of defining the name of the custom functions)
- |uncheck| Generic `lv_date_t` and `lv_time_t`
- |uncheck| Make layouts with an `lv_layout_dsc_t` instead of registering an ID + callback. 
  (see `here <https://github.com/lvgl/lvgl/issues/3481#issuecomment-1206434501>`__)

Architecture
~~~~~~~~~~~~

- |check| Consider merging `lv_disp_drv_t`, `lv_disp_t`, `lv_disp_draw_buf_t`, `lv_draw_ctx_t` `struct`'s from the new driver API (or only some of them)
- |check| New driver architecture #2720
- |check| `draw_ctx->buffer_convert`? 
  (see `here <https://github.com/lvgl/lvgl/issues/3379#issuecomment-1147954592>`__)
  Also remove 16 SWAPPED color format? 
  (see `here <https://github.com/lvgl/lvgl/issues/3379#issuecomment-1140886258>`__)
- |uncheck| Reconsider masks. There should be a generic high level mask API which is independent of the drawing engine.
  `#4059 <https://github.com/lvgl/lvgl/issues/4059>`__
- |check| `get_glyph_bitmap` should return an a8 bitmap that can be blended immediately.
- |uncheck| Reconsider how themes should work. 
  (see `here <https://github.com/lvgl/lvgl/pull/3390#pullrequestreview-990710921>`__)
- |uncheck| Make LVGL render independent areas in parallel.
  `#4016 <https://github.com/lvgl/lvgl/issues/4016>`__
- |check| Drop `lv_mem_buf_get` as tlsf should be fast enough for normal allocations too. 
  Fragmentation is also lower if processes can completely clean up after themselves.
- |check| More color formats: 24 bit, ARGB1555, ARGB4444 etc
- |uncheck| Condider using `lv_color32_t` on APIs to support e.g. alpha gradient.
- |uncheck| Add more feature to key presses (long press, release, etc). 
  (see `here <https://forum.lvgl.io/t/keypad-input-device-why-lv-event-long-pressed-only-on-enter/10263>`__)

Styles
~~~~~~

- |uncheck| Make `style_bg_img` support `9patch` images
- |uncheck| non-uniform scale of images: scale width and height differently
- |uncheck| Scroll anim settings should come from styles to allow customization

Widgets
~~~~~~~

- |uncheck| `lv_img`: Reconsider image sizing models 
  (when the image size is not content): center, top-left, zoom, tile, other?
- |uncheck| `lv_tabview` Replace button matrix with real buttons for more flexibility
- |uncheck| `lv_label` reconsider label long modes. (support min/max-width/height too) #3420
- |uncheck| `lv_roller` make it more flexible #4009
- |uncheck| Universal scale widget/support 
  (see `here <https://forum.lvgl.io/t/linear-meter-bar-with-ticks/10986>`__ and #4043)
- |uncheck| Improve `lv_label_align_t` #1656
- |uncheck| Disabled widgets should absorb indev actions without sending events. `#3860 <https://github.com/lvgl/lvgl/issues/3860>`__

Drawing and rendering
~~~~~~~~~~~~~~~~~~~~~

- |uncheck| Automatically recalculate the layout if a coordinte is get with `lv_obj_get_width/height/x/y/etc`

Animations
~~~~~~~~~~

- |uncheck| Use `anim` events to replace many callbacks with one
- |uncheck| `lv_anim_time_to_speed` should work differently to remove
  `style_anim_speed`. E.g. on large values of anim time store the
  speed. Besides all widgets should use the `style_anim` property.
  `anim` should clamp the time if it's calculated from speed, e.g
  `lv_clamp(200, t, 2000)`. (maybe `a->min_time/max_time`).
- |uncheck| Use dedicated `lv_anim_custom_exec_cb_t`.
  See `here <https://forum.lvgl.io/t/custom-exec-cb-prevents-lv-anim-del-obj-null/10266>`__.

Planned in general
------------------

CI
~~

- |uncheck| Plaform independent bechmarking #3443
- |uncheck| Run static analyzer
- |uncheck| Release script
- |uncheck| Unit test for all widgets #2337
- |uncheck| CI test for flash/RAM usage #3127


Architecture
~~~~~~~~~~~~

- |uncheck| Unified caching #3116 #3415
- |uncheck| `lv_img_set_src()` use “type-aware” parameter and rework image decoders. 
  (see `here <https://github.com/lvgl/lvgl/tree/arch/img-decode-rework>`__)
- |uncheck| `C++ binding <https://github.com/lvgl/lv_binding_cpp>`__
- |uncheck| Markup language #2428


Styles
~~~~~~

- |uncheck| Hover
- |uncheck| Global states in selectors. E.g. `LV_STATE_PRESSED | SMALL_SCREEN` like media quarry in CSS


Drawing and rendering
~~~~~~~~~~~~~~~~~~~~~

- |uncheck| SW: Line drawing with image rotation
- |uncheck| SW: Arc drawing from small squares (16x16?) to detect transparent or solid parts
- |uncheck| SW: Rounded rectangle drawing from small squares (16x16?) to detect transparent or solid parts
- |uncheck| Different radius on each corner #2800
- |uncheck| Gradient to border/outline/shadow
- |uncheck| Multiple shadow/border
- |uncheck| Perspective
- |uncheck| Text shadow
- |uncheck| Innter shadow
- |uncheck| ARGB image stroke/grow on the alpha map
- |uncheck| Real time blur
- |uncheck| Gradient with alpha


Widgets
~~~~~~~

- |uncheck| `lv_bar`, `lv_arc`: handle max < min for fill direction swapping #4039
- |uncheck| `lv_bar`, `lv_slider`, `lv_arc`: make possible to move the knob only inside the background (see `here <https://forum.lvgl.io/t/slider-knob-out-of-the-track/11956>`__)

Others
~~~~~~

- |uncheck| More grid features. E.g. repeat(auto-fill, minmax( px, 1fr))
- |uncheck| Named grid cells to allow updating layouts without touching the children (like CSS `grid-template-areas`)
- |uncheck| Scene support. See `this comment <https://github.com/lvgl/lvgl/issues/2790#issuecomment-965100911>`__
- |uncheck| Circle layout. #2871
- |uncheck| Variable binding. I.e create properties which can be bound to
  objects and those obejcts are notified on value change. Maybe based on `lv_msg`?
- |uncheck| Consider `stagger animations <https://greensock.com/docs/v3/Staggers>`__.

Ideas
-----

- Better way to reset global variables in `lv_deinit()` #3385
- `lv_array`: replace linked lists with array where possible (arrays are faster and uses less memory)
- Reconsider how to handle UTF-8 characters (allow different encoding too) and Bidi. Maybe create an abstraction for typesetting.
- Consider direct binary font format support
- Improve groups. `Discussion <https://forum.lvgl.io/t/lv-group-tabindex/2927/3>`__.
  Reconsider focusing logic. Allow having no widget selected (on web it's possible). Keep editing state in `lv_obj_t`
  (see `here <https://github.com/lvgl/lvgl/issues/3646>`__). Support slider
  left knob focusing (see `here <https://github.com/lvgl/lvgl/issues/3246>`__)
- lv_mem_alloc_aligned(size, align)
- Speed up font decompression
- Support larger images: add support for large image #1892
- Functional programming support, pure view? 
  (see `here <https://www.freecodecamp.org/news/the-revolution-of-pure-views-aed339db7da4/>`__)
- Style components. (see `this comment <https://github.com/lvgl/lvgl/issues/2790#issuecomment-965100911>`__
- SVG support: integrate an SVG render library
- Support dot_begin and dot_middle long modes for labels
- Allow matrix input for image transformation?
- Radial/skew/conic gradient
- Somehow let children inherit the parent's state
- Text on path
