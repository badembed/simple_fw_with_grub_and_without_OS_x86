if grub-file --is-x86-multiboot "$1"; then
  echo multiboot confirmed
else
  echo the file is not multiboot
fi

#grub-file --is-x86-multiboot ./test.bin | echo $?