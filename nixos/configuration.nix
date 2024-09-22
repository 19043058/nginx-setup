{ config, pkgs, ... }:

{
  # Bootloader configuration
  boot.loader.grub.devices = [ "/dev/sda" ]; # Replace with your actual device

  # Filesystem configuration
  fileSystems."/" = {
    device = "/dev/sda1"; # Replace with your actual root partition
  };

  # Optional: Include the 'hello' package
  environment.systemPackages = [ pkgs.hello ];
}
