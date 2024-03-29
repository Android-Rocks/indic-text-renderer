#
# Copyright � 2012 Shiva Kumar H R
# 
# Permission is hereby granted, free of charge, to any person obtaining a 
# copy of this software and associated documentation files (the "Software"), 
# to deal in the Software without restriction, including without limitation 
# the rights to use, copy, modify, merge, publish, distribute, sublicense, 
# and/or sell copies of the Software, and to permit persons to whom the 
# Software is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included 
# in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

BASE_PATH := $(call my-dir)
LOCAL_PATH:= $(call my-dir)

#############################################################
#   build the harfbuzz library
#

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE_TAGS := optional

LOCAL_CPP_EXTENSION := .cc

LOCAL_CFLAGS := -DHAVE_OT

LOCAL_SRC_FILES:= \
        src/hb-blob.cc \
        src/hb-buffer.cc \
        src/hb-common.cc \
        src/hb-fallback-shape.cc \
        src/hb-font.cc \
        src/hb-ft.cc \
        src/hb-ot-layout.cc \
        src/hb-ot-map.cc \
        src/hb-ot-shape.cc \
        src/hb-ot-shape-complex-arabic.cc \
        src/hb-ot-shape-complex-indic.cc \
        src/hb-ot-shape-complex-misc.cc \
        src/hb-ot-shape-normalize.cc \
        src/hb-ot-tag.cc \
        src/hb-set.cc \
        src/hb-shape.cc \
        src/hb-tt-font.cc \
        src/hb-unicode.cc \

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/src $(LOCAL_PATH)/../freetype/include

LOCAL_MODULE:= libharfbuzz

LOCAL_STATIC_LIBRARIES := ft2

include $(BUILD_STATIC_LIBRARY)

