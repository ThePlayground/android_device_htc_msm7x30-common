# include
TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

# platform
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# target
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# cortex
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_EXTRA_CFLAGS += $(call cc-option,-march=armv7-a -mtune=cortex-a8)

# scorpion
USE_MALLOC_ALIGNMENT := 16
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# wireless
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcm4329/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/proc/calibration iface_name=wlan"
BOARD_WLAN_DEVICE_REV            := bcm4329
WIFI_BAND                        := 802_11_ABG

# audio
BOARD_USES_QCOM_AUDIO_SPEECH := true
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_QCOM_AUDIO_RESETALL := true

# bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# boot
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# camera
BOARD_USES_HTC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# cpu
TARGET_HAVE_BYPASS := false
USE_OPENGL_RENDERER := true
TARGET_USES_GENLOCK := true
TARGET_USES_OVERLAY := true
TARGET_QCOM_HDMI_OUT := false
BOARD_USES_ADRENO_200 := true
TARGET_USES_SF_BYPASS := false
TARGET_FORCE_CPU_UPLOAD := true
TARGET_USES_C2D_COMPOSITION := true

# graphics
ENABLE_WEBGL := true
BOARD_EGL_CFG := vendor/qcom/proprietary/system/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DREFRESH_RATE=60 -DWITH_QCOM_LPA

# hardware
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBS := true
TARGET_USES_QCOM_LPA := true
BOARD_USES_QCOM_LIBRPC := true
DYNAMIC_SHARED_LIBV8SO := true
BOARD_USES_QCOM_HARDWARE := true
