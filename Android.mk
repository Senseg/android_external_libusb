LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libusb

LOCAL_CFLAGS := \
	-DENABLE_LOGGING=1 -DENABLE_DEBUG_LOGGING=1 \
	-std=gnu99 \

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/libusb \
	$(LOCAL_PATH)/libusb/os

LOCAL_SRC_FILES  := \
	libusb/core.c \
	libusb/descriptor.c \
	libusb/io.c \
	libusb/sync.c \
	libusb/os/linux_usbfs.c 

include $(BUILD_STATIC_LIBRARY)
