LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_LDLIBS := -llog
	
LOCAL_PREBUILT_OBJ_FILES += \
	VbrTag.o \
	bitstream.o \
	encoder.o \
	fft.o \
	gain_analysis.o \
	id3tag.o \
	lame.o \
	mpglib_interface.o \
	newmdct.o \
	presets.o \
	psymodel.o \
	quantize.o \
	quantize_pvt.o \
	reservoir.o \
	set_get.o \
	tables.o \
	takehiro.o \
	util.o \
	vbrquantize.o \
	version.o
	
common_COPY_HEADERS_TO := liblame

LOCAL_MODULE    := liblame
LOCAL_MODULE_TAGS := optional

LOCAL_COPY_HEADERS_TO := $(common_COPY_HEADERS_TO)
LOCAL_COPY_HEADERS := $(common_COPY_HEADERS)

include $(BUILD_SHARED_LIBRARY)
