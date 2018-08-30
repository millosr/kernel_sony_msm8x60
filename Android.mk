ifeq ($(BOARD_KERNEL_MSM),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

KERNEL_DIR := ./kernel/msm
KERNEL_TOOLS_PREFIX := /hdd1/work/aosp-9/prebuilts/gcc/$(HOST_PREBUILT_TAG)/arm/arm-eabi-4.7/bin/arm-eabi-
-include $(KERNEL_DIR)/AndroidKernel.mk

LOCAL_PREBUILT_MODULE_FILE := $(TARGET_PREBUILT_KERNEL)

LOCAL_MODULE       := kernel
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := KERNEL_OBJ
LOCAL_MODULE_PATH  := $(PRODUCT_OUT)
include $(BUILD_PREBUILT)

endif

