#!/bin/sh
/root/streameye/extras/raspimjpeg.py -w 640 -h 480 -r 10 | streameye -p 8090
