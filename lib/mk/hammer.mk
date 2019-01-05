include $(select_from_repositories,lib/import/import-hammer.mk)

HAMMER_DIR := $(call select_from_ports,hammer)/src/lib/hammer

LIBS      += libc

FILTER_OUT = $(HAMMER_DIR)/src/platform_win32.c $(HAMMER_DIR)/src/test_suite.c $(wildcard $(HAMMER_DIR)/src/t_*c)
FILTER_OUT_backends = regex_debug.c

SRC_C_backends = $(filter-out $(FILTER_OUT_backends), $(notdir $(wildcard $(HAMMER_DIR)/src/backends/*.c)))
SRC_C_bindings = $(notdir $(wildcard $(HAMMER_DIR)/src/bindings/*.c))
SRC_C_parsers  = $(notdir $(wildcard $(HAMMER_DIR)/src/parsers/*.c))

SRC_C  = $(filter-out $(FILTER_OUT), $(wildcard $(HAMMER_DIR)/src/*.c))
SRC_C += $(SRC_C_backends) $(SRC_C_bindings) $(SRC_C_parsers)

vpath %.c $(HAMMER_DIR)/src
vpath %.c $(HAMMER_DIR)/src/backends
vpath %.c $(HAMMER_DIR)/src/bindings
vpath %.c $(HAMMER_DIR)/src/parsers

SHARED_LIB = yes
