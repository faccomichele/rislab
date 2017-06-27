#!/bin/bash

make bin/undionly.kpxe EMBED=/rislab/custom_script.ipxe && cp -f bin/undionly.kpxe /rislab/boot.kpxe
