#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Overlay files
DEVICE_PACKAGE_OVERLAYS += device/htc/k2cl/overlay
DEVICE_PACKAGE_OVERLAYS += vendor/aokp/overlay/k2cl

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/k2cl/ramdisk/fstab.k2cl:root/fstab.k2cl \
    device/htc/k2cl/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/htc/k2cl/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/htc/k2cl/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/htc/k2cl/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/htc/k2cl/ramdisk/init.goldfish.rc:root/init.goldfish.rc \
    device/htc/k2cl/ramdisk/init.k2cl.rc:root/init.k2cl.rc \
    device/htc/k2cl/ramdisk/init.usb.rc:root/init.usb.rc \
    device/htc/k2cl/ramdisk/ueventd.rc:root/ueventd.rc \
    device/htc/k2cl/ramdisk/init.trace.rc:root/init.trace.rc \
    device/htc/k2cl/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/htc/k2cl/ramdisk/default.prop:root/default.prop

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/htc/k2cl/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/htc/k2cl/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/htc/k2cl/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/htc/k2cl/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/htc/k2cl/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libhwcexternal \
    libhwcservice \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# GPS config
PRODUCT_COPY_FILES += \
    device/htc/k2cl/configs/gps.conf:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/htc/k2cl/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/k2cl/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/k2cl/configs/media_codecs.xml:system/etc/media_codecs.xml

# MSM8960 firmware
PRODUCT_COPY_FILES += \
    device/htc/k2cl/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/htc/k2cl/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/htc/k2cl/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/htc/k2cl/firmware/a225_pm4.fw:/system/etc/firmware/a300_pfp.fw \
    device/htc/k2cl/firmware/a225_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    device/htc/k2cl/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/htc/k2cl/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/htc/k2cl/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw

# NFCEE access control
NFCEE_ACCESS_PATH := device/htc/k2cl/configs/nfcee_access.xml
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/k2cl/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# QC thermald config
PRODUCT_COPY_FILES += device/htc/k2cl/configs/thermald.conf:system/etc/thermald.conf

# vold config
PRODUCT_COPY_FILES += \
    device/htc/k2cl/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/htc/k2cl/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/k2cl/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/k2cl/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/k2cl/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/k2cl/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/k2cl/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg

PRODUCT_COPY_FILES += \
    device/htc/k2cl/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/k2cl/keylayout/k2_cl-keypad.kl:system/usr/keylayout/cy8c-touchkey.kl \
    device/htc/k2cl/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/k2cl/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/k2cl/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/k2cl/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    device/htc/k2cl/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/k2cl/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/k2cl/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/htc/k2cl/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/k2cl/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.composition.type=gpu \
    debug.egl.hw=1 \
    debug.mdpcomp.maxlayer=0 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    lpa.decode=true \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    persist.gps.qmienabled=true \
    persist.thermal.monitor=true \
    ro.baseband.arch=msm \
    ro.opengles.version=131072 \
    ro.product.wireless=WCN3660 \
    ro.qc.sdk.audio.fluencetype=fluence \
    ro.qualcomm.bt.hci_transport=smd \
    ro.use_data_netmgrd=true \
    wifi.interface=wlan0

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/k2cl/k2cl-vendor.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := k2cl
PRODUCT_NAME := k2cl
PRODUCT_BRAND := htc
PRODUCT_MODEL := One SV
PRODUCT_MANUFACTURER := HTC
