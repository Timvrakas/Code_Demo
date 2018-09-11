#
# Copyright (c) 2011 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level ASF directory relative to this project directory.
PRJ_PATH = ./

BUILD_DIR = build/

# Target CPU architecture: cortex-m3, cortex-m4
ARCH = cortex-m0plus

# Target part: none, sam3n4 or sam4l4aa
PART = samd21g18a

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET_FLASH = build/output_flash.elf
TARGET_SRAM = build/output_sram.elf

# List of C source files.
CSRCS = \
ASF/common/services/sleepmgr/samd/sleepmgr.c \
ASF/common/services/usb/class/cdc/device/udi_cdc.c \
ASF/common/services/usb/class/cdc/device/udi_cdc_desc.c \
ASF/common/services/usb/udc/udc.c \
ASF/common/utils/interrupt/interrupt_sam_nvic.c \
ASF/common/utils/stdio/stdio_usb/stdio_usb.c \
ASF/sam0/drivers/extint/extint_callback.c \
ASF/sam0/drivers/extint/extint_sam_d_r_h/extint.c \
ASF/sam0/drivers/port/port.c \
ASF/sam0/drivers/system/clock/clock_samd21_r21_da_ha1/clock.c \
ASF/sam0/drivers/system/clock/clock_samd21_r21_da_ha1/gclk.c \
ASF/sam0/drivers/system/interrupt/system_interrupt.c \
ASF/sam0/drivers/system/pinmux/pinmux.c \
ASF/sam0/drivers/system/system.c \
ASF/sam0/drivers/usb/stack_interface/usb_device_udd.c \
ASF/sam0/drivers/usb/stack_interface/usb_dual.c \
ASF/sam0/drivers/usb/usb_sam_d_r/usb.c \
ASF/sam0/utils/cmsis/samd21/source/gcc/startup_samd21.c \
ASF/sam0/utils/cmsis/samd21/source/system_samd21.c \
ASF/sam0/utils/stdio/read.c \
ASF/sam0/utils/stdio/write.c \
ASF/sam0/utils/syscalls/gcc/syscalls.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/croutine.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/event_groups.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/list.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/portable/GCC/ARM_CM0/port.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/portable/MemMang/heap_1.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/queue.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/stream_buffer.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/tasks.c \
ASF/thirdparty/freertos/freertos-10.0.0/Source/timers.c \
config/user_board.c \
src/main.c \

# List of assembler source files.
ASSRCS = 

# List of include paths.
INC_PATH = \
       config                                                 \
       ASF	                                              \
       ASF/common/boards                                      \
       ASF/common/utils                                       \
       ASF/common/services/sleepmgr                           \
       ASF/common/services/usb/class/cdc                      \
       ASF/common/services/usb/class/cdc/device               \
       ASF/common/services/usb                                \
       ASF/common/services/usb/udc                            \
       ASF/common/utils/stdio/stdio_usb                       \
       ASF/sam0/boards                                        \
       ASF/sam0/drivers/extint                                \
       ASF/sam0/drivers/port                                  \
       ASF/sam0/drivers/system                                \
       ASF/sam0/drivers/system/clock                          \
       ASF/sam0/drivers/system/clock/clock_samd21_r21_da_ha1  \
       ASF/sam0/drivers/system/interrupt                      \
       ASF/sam0/drivers/system/interrupt/system_interrupt_samd21 \
       ASF/sam0/drivers/system/pinmux                         \
       ASF/sam0/drivers/system/power                          \
       ASF/sam0/drivers/system/power/power_sam_d_r_h          \
       ASF/sam0/drivers/system/reset                          \
       ASF/sam0/drivers/system/reset/reset_sam_d_r_h          \
       ASF/sam0/drivers/usb/stack_interface/                  \
       ASF/sam0/drivers/usb                                   \
       ASF/sam0/utils                                         \
       ASF/sam0/utils/cmsis/samd21/include                    \
       ASF/sam0/utils/cmsis/samd21/source                     \
       ASF/sam0/utils/header_files                            \
       ASF/sam0/utils/preprocessor                            \
       ASF/thirdparty/freertos/freertos-10.0.0/Source/include \
       ASF/thirdparty/freertos/freertos-10.0.0/Source/portable/GCC/ARM_CM0  \
       ASF/thirdparty/CMSIS/Include                           \
       ASF/thirdparty/CMSIS/Lib/GCC

# Additional search paths for libraries.
LIB_PATH =  \
       ASF/thirdparty/CMSIS/Lib/GCC                          

# List of libraries to use during linking.
LIBS =  \
       arm_cortexM0l_math                                \
       m

# Path relative to top level directory pointing to a linker script.
LINKER_SCRIPT_FLASH = ASF/sam0/utils/linker_scripts/samd21/gcc/samd21g18a_samba.ld #NOTE: THIS IS SETUP FOR SAM-BA!
LINKER_SCRIPT_SRAM  = ASF/sam0/utils/linker_scripts/samd21/gcc/samd21g18a_sram.ld

# Path relative to top level directory pointing to a linker script.
DEBUG_SCRIPT_FLASH = board/debug/flash.gdb
DEBUG_SCRIPT_SRAM  = board/debug/sram.gdb

# Project type parameter: all, sram or flash
PROJECT_TYPE        = flash

# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS = 

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -O1

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = -mcpu=cortex-m0plus -mthumb -g

# Extra flags to use when compiling.
CFLAGS = -x c -mthumb -O1 -fdata-sections -ffunction-sections -mlong-calls -g3 -Wall -mcpu=cortex-m0plus -c -pipe -fno-strict-aliasing -Wall -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -std=gnu99 -ffunction-sections -fdata-sections -Wchar-subscripts -Wcomment -Wformat=2 -Wimplicit-int -Wmain -Wparentheses -Wsequence-point -Wreturn-type -Wswitch -Wtrigraphs -Wunused -Wuninitialized -Wunknown-pragmas -Wfloat-equal -Wundef -Wshadow -Wbad-function-cast -Wwrite-strings -Wsign-compare -Waggregate-return  -Wmissing-declarations -Wformat -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wcast-align --param max-inline-insns-single=500

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D ARM_MATH_CM0PLUS=true                  \
       -D BOARD=USER_BOARD                       \
       -D __SAMD21G18A__                         \
       -D EXTINT_CALLBACK_MODE=true              \
       -D UDD_ENABLE                             \
       -D USB_DEVICE_LPM_SUPPORT                 \
       -D __FREERTOS__

# Extra flags to use when linking
LDFLAGS = -mthumb -Wl,-Map="$(OutputFileName).map" -Wl,--start-group -larm_cortexM0l_math -lm  -Wl,--end-group -L"../src/ASF/thirdparty/CMSIS/Lib/GCC"  -Wl,--gc-sections -mcpu=cortex-m0plus -Wl,--entry=Reset_Handler -Wl,--cref -mthumb


# Pre- and post-build commands
PREBUILD_CMD = 
POSTBUILD_CMD = 
