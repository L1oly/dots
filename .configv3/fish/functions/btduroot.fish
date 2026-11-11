function btduroot --wraps='sudo mount -o subvol=/ /dev/sda2 /mnt/btdu/ & sudo btdu /mnt/btdu/ & sudo mount -o subvol=/ /dev/sda2 /' --description 'alias btduroot=sudo mount -o subvol=/ /dev/sda2 /mnt/btdu/ & sudo btdu /mnt/btdu/ & sudo mount -o subvol=/ /dev/sda2 /'
    sudo mount -o subvol=/ /dev/sda2 /mnt/btdu/ & sudo btdu /mnt/btdu/ & sudo mount -o subvol=/ /dev/sda2 / $argv
end
