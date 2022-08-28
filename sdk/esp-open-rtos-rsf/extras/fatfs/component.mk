# Component makefile for extras/fatfs
INC_DIRS += $(fatfs_ROOT)..

# args for passing into compile rule generation
fatfs_SRC_DIR = $(fatfs_ROOT)

FATFS_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

# FatFs default parameters
include $(FATFS_DIR)defaults.mk

fatfs_CFLAGS = $(CFLAGS) \
	-DFF_FS_READONLY=$(FATFS_FS_READONLY) \
	-DFF_USE_STRFUNC=$(FATFS_USE_STRFUNC) \
	-DFF_CODE_PAGE=$(FATFS_CODE_PAGE) \
	-DFF_USE_FIND=$(FATFS_USE_FIND) \
	-DFF_USE_MKFS=$(FATFS_USE_MKFS) \
	-DFF_USE_FASTSEEK=$(FATFS_USE_FASTSEEK) \
	-DFF_USE_EXPAND=$(FATFS_USE_EXPAND) \
	-DFF_USE_CHMOD=$(FATFS_USE_CHMOD) \
	-DFF_USE_LABEL=$(FATFS_USE_LABEL) \
	-DFF_USE_FORWARD=$(FATFS_USE_FORWARD) \
	-DFF_CODE_PAGE=$(FATFS_CODE_PAGE) \
	-DFF_USE_LFN=$(FATFS_USE_LFN) \
	-DFF_MAX_LFN=$(FATFS_MAX_LFN) \
	-DFF_LFN_UNICODE=$(FATFS_LFN_UNICODE) \
	-DFF_STRF_ENCODE=$(FATFS_STRF_ENCODE) \
	-DFF_FS_RPATH=$(FATFS_FS_RPATH) \
	-DFF_FS_EXFAT=$(FATFS_FS_EXFAT) \
	-DFF_FS_NORTC=$(FATFS_FS_NORTC) \
	-DFF_NORTC_MON=$(FATFS_NORTC_MON) \
	-DFF_NORTC_MDAY=$(FATFS_NORTC_MDAY) \
	-DFF_NORTC_YEAR=$(FATFS_NORTC_YEAR) \
	-DFF_FS_LOCK=$(FATFS_FS_LOCK) \
	-DFF_FS_TIMEOUT=$(FATFS_FS_TIMEOUT)
	
$(eval $(call component_compile_rules,fatfs))