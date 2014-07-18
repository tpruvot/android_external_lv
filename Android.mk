LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

lvlibdir := /system/usr/share

LOCAL_CFLAGS = \
    -Wno-pointer-sign \
    -DLV_HELP_PATH=\"$(lvlibdir)\"  -DUNIX=1 -DTERMCAP=1 -DHAVE_LIBTERMCAP=1 -DSTDC_HEADERS=1 \
    -DHAVE_SYS_WAIT_H=1 -DHAVE_FCNTL_H=1 -DHAVE_SYS_IOCTL_H=1 -DHAVE_SYS_TIME_H=1 -DHAVE_TERMIO_H=1 \
    -DHAVE_UNISTD_H=1 -DHAVE_TERMIOS_H=1 -DHAVE_LOCALE_H=1 -DHAVE_TGETNUM=1 -DHAVE_SETLOCALE=1 \
    -DGETPGRP_VOID=1 -DRETSIGTYPE=void -DHAVE_LANGINFO_CODESET=1

LOCAL_LDLIBS = -ltermcap

LOCAL_SRC_FILES := src/itable.c src/ctable.c src/uty.c src/istr.c src/stream.c src/file.c src/guess.c \
    src/decode.c src/encode.c src/escape.c \
    src/iso2022.c src/iso8859.c src/iso2cn.c src/iso2jp.c src/iso2kr.c \
    src/kana.c src/eucjapan.c src/shiftjis.c src/big5.c src/hz.c src/raw.c \
    src/fetch.c src/screen.c src/command.c src/display.c src/find.c src/re.c \
    src/nfa.c src/dfa.c src/conv.c src/version.c src/conf.c src/lv.c src/console.c src/guesslocale.c \
    src/utf.c src/unimap.c src/unirev.c

# From android_support (ndk) nl_langinfo()
LOCAL_SRC_FILES += build/langinfo.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src \
    external/libncurses/include \
    ndk/sources/android/support/include

# tputs, tgetstr ...
LOCAL_SHARED_LIBRARIES += libncurses

LOCAL_MODULE := lv
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)



# RESSOURCES
include $(CLEAR_VARS)

LOCAL_MODULE := lv.hlp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/usr/share

LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

