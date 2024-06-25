ASM=nasm
SRC_DIR=src
BUILD_DIR=build

.PHONY: all floopy_image kernel bootloader clean always


#
#	Floopy image
#
floopy_image: ${BUILD_DIR}/main_floopy.img

${BUILD_DIR}/main_floopy.img: bootloader kernel
#  cp ${BUILD_DIR}/main.bin ${BUILD_DIR}/main_floopy.img
#  truncate -s 1440k ${BUILD_DIR}/main_floopy.img
	dd if=/dev/zero of=${BUILD_DIR}/main_floopy.img bs=512 count=2880
	mkfs.fat -F 12 -n "NBOS" ${BUILD_DIR}/main_floopy.img
	dd if=${BUILD_DIR}/bootloader.bin of=${BUILD_DIR}/main_floopy.img conv=notrunc
	mcopy -i ${BUILD_DIR}/main_floopy.img ${BUILD_DIR}/kernel.bin "::kernel.bin"

${BUILD_DIR}/main.bin: ${SRC_DIR}/micro.asm 
	${ASM} ${SRC_DIR}/micro.asm -f bin -o ${BUILD_DIR}/main.bin

#
# Bootloader
#
bootloader: ${BUILD_DIR}/bootloader.bin
${BUILD_DIR}/bootloader.bin: always
	${ASM} ${SRC_DIR}/bootloader/boot.asm -f bin -o ${BUILD_DIR}/bootloader.bin

#
#	kernel
#
kernel: ${BUILD_DIR}/kernel.bin
${BUILD_DIR}/kernel.bin: always
	${ASM} ${SRC_DIR}/kernel/main.asm -f bin -o ${BUILD_DIR}/kernel.bin

#
#	always
#
always:
	mkdir -p ${BUILD_DIR}

clean:
	rm -rf ${BUILD_DIR}

start:
	qemu-system-i386 -fda build/main_floopy.img
