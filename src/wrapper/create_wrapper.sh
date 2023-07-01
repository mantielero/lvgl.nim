#!/usr/bin/sh
wget https://raw.githubusercontent.com/lvgl/lv_port_pc_eclipse/master/lv_conf.h
mv lv_conf.h ../components/
toast -pnrk -f:ast2 --prefix=__,_ -I../components/lvgl ../components/lvgl/lvgl.h > ./lvgl.nim

