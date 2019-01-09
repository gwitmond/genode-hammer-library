MIRROR_FROM_REP_DIR := lib/mk/hammer.mk

content: $(MIRROR_FROM_REP_DIR) src/lib/hammer/target.mk

$(MIRROR_FROM_REP_DIR):
	$(mirror_from_rep_dir)

src/lib/hammer/target.mk:
	mkdir -p $(dir $@)
	echo "LIBS = hammer" > $@

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/hammer)

MIRROR_FROM_PORT_DIR := src/lib/hammer/src \

content: $(MIRROR_FROM_PORT_DIR)

$(MIRROR_FROM_PORT_DIR):
	mkdir -p $(dir $@)
	cp -r $(PORT_DIR)/$@ $(dir $@)

content: LICENSE

LICENSE:
	cp $(PORT_DIR)/src/lib/hammer/LICENSE $@
