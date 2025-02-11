#
# Reminder
# ========
#
# This configuration is not used in the final installed system.
# This only serves to allow the installer to work.
#
{ config, lib, pkgs, ... }:

{
  imports = [
    ./modules/all.nix
  ];
nixpkgs.config.allowUnfree = true;
    hardware.firmware = [
    pkgs.chromeos-sc7180-unredistributable-firmware
  ];
}
