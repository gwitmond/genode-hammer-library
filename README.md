# The hammer library ported to Genode.

This is the Hammer parsing library from https://github.com/UpstandingHackers/hammer ported to Genode.

# Usage

    git clone https://github.com/genode/labs/genode
    cd genode/repos
    git clone https://github.com/gwitmond/genode-hammer-library

Create and build 

    $GENODE_DIR/tool/create_build_dir <platform of choice>
    cd <build_dir>
    make test/hammer
    make run/hammer

See https://github.com/sergeybratus/HammerPrimer for a video tutorial on Hammer.
See https://genode.org for information on Genode.
