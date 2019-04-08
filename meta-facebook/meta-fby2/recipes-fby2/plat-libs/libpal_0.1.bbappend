FILESEXTRAPATHS_prepend := "${THISDIR}/files/pal:"

SRC_URI += "file://pal.c \
            file://pal.h \
            "

DEPENDS += "libbic libfby2-common libfby2-fruid libfby2-sensor libncsi libobmc-i2c"
RDEPENDS_${PN} += " libfby2-common libfby2-fruid libfby2-sensor libncsi libobmc-i2c"
LDFLAGS += " -lbic -lfby2_common -lfby2_fruid -lfby2_sensor -lncsi -lobmc-i2c"
