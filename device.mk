#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oneplus/lemonades

# define hardware platform
PRODUCT_PLATFORM := kona

#SHIPPING API
PRODUCT_SHIPPING_API_LEVEL := 30

#VNDK API
PRODUCT_TARGET_VNDK_VERSION := 31
	
# Erofs utils

PRODUCT_PACKAGES += \
    mkfs.erofs.recovery \
	dump.erofs.recovery \
	fsck.erofs.recovery
    
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
    
#Display	
PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display
	
RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/libdisplayconfig.qti.so \

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd \
    resetprop

# Hidl Service
PRODUCT_ENFORCE_VINTF_MANIFEST := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
    
# tzdata
PRODUCT_PACKAGES_ENG += \
    tzdata_twrp
