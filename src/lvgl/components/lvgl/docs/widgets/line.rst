Line (lv_line)
==============

Overview
********

The Line object is capable of drawing straight lines between a set of
points.

Parts and Styles
****************

-  :cpp:enumerator:`LV_PART_MAIN` uses all the typical background properties and line
   style properties.

Usage
*****

Set points
----------

The points have to be stored in an :cpp:struct:`lv_point_t` array and passed to
the object by the :cpp:expr:`lv_line_set_points(lines, point_array, point_cnt)`
function.

Their coordinates can either be specified as raw pixel coordinates
(e.g. ``{5, 10}``), or as a percentage of the line's bounding box using
:cpp:expr:`lv_pct(x)`. In the latter case, the line's width/height may need to
be set explicitly using ``lv_obj_set_width/height``, as percentage
values do not automatically expand the bounding box.

Auto-size
---------

By default, the Line's width and height are set to :c:macro:`LV_SIZE_CONTENT`.
This means it will automatically set its size to fit all the points. If
the size is set explicitly, parts on the line may not be visible.

Invert y
--------

By default, the *y == 0* point is in the top of the object. It might be
counter-intuitive in some cases so the y coordinates can be inverted
with :cpp:expr:`lv_line_set_y_invert(line, true)`. In this case, *y == 0* will
be the bottom of the object. *y invert* is disabled by default.

Events
******

Only the `Generic events <../overview/event.html#generic-events>`__ are
sent by the object type.

See the events of the `Base object </widgets/obj>`__ too.

Learn more about :ref:`events`.

Keys
****

No *Keys* are processed by the object type.

Learn more about :ref:`indev_keys`.

Example
*******

.. include:: ../examples/widgets/line/index.rst

API
***
