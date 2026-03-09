{ config, pkgs, inputs, ...}: {
  programs.firefox = {
    enable = true;
    profiles.default = {
      id = 0;
      name = "default";
      isDefault = true;
      settings = {
      };
      search = {
        force = true;
        default = "ddg";
        order = [ "ddg" "google" ];
      };
      extensions.packages = with inputs.firefox-addons.packages."x86_64-linux"; [
        ublock-origin
        privacy-badger
      ];
    };
  };
}
