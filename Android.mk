LOCAL_PATH:= $(call my-dir)

ifneq ($(filter d2dcm,$(TARGET_DEVICE)),)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
