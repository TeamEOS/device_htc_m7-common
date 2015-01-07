LOCAL_PATH:=$(call my-dir)
ifneq ($(filter m7 m7att m7spr m7tmo m7ul,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE := htcirlibs
LOCAL_SRC_FILES := framework/htcirlibs.jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := CIRModule
LOCAL_SRC_FILES := app/CIRModule.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= libhtcirinterface_jni
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= SHARED_LIBRARIES
LOCAL_SRC_FILES		:= lib/libhtcirinterface_jni.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH	:= $(TARGET_OUT_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= cir
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/cir.img
LOCAL_MODULE_SUFFIX := .img
LOCAL_MODULE_PATH	:= $(TARGET_OUT_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= cir_fw_update
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= bin/cir_fw_update
LOCAL_MODULE_PATH	:= $(TARGET_OUT_EXECUTABLES)
include $(BUILD_PREBUILT)

endif
