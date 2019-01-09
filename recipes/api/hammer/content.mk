MIRROR_FROM_REP_DIR := lib/import/import-hammer.mk \
                       lib/symbols/hammer

content: $(MIRROR_FROM_REP_DIR)

$(MIRROR_FROM_REP_DIR):
	$(mirror_from_rep_dir)

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/hammer)

content: include

include:
	mkdir -p $@/hammer
	cp -r $(PORT_DIR)/include/hammer/* $@/hammer

content: LICENSE

LICENSE:
	cp $(PORT_DIR)/src/lib/hammer/LICENSE $@
