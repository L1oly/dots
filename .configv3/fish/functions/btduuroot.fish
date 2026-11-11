function btduuroot --wraps='sudo mount -o subvol=/ /dev/sda2 /' --description 'alias btduuroot=sudo mount -o subvol=/ /dev/sda2 /'
    sudo mount -o subvol=/ /dev/sda2 / $argv
end
