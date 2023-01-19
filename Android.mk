LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
 
LOCAL_MODULE := clinfo
LOCAL_SRC_FILES := \
	src/clinfo.c

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(LOCAL_PATH)/src

# Specify path to the location of OpenCL-Headers.
# In our case, just search those locally
LOCAL_C_INCLUDES +=  $(LOCAL_PATH)/OpenCL-Headers/

# Specify location and provider name of libOpenCL.
# In our case, libOpenCL is just a symlink to the EGL library
# provided by libGLES_mali
LOCAL_SHARED_LIBRARIES := libGLES_mali
LOCAL_VENDOR_MODULE := true

include $(BUILD_EXECUTABLE)
