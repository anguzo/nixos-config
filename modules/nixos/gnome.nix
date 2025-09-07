# /etc/nixos/modules/nixos/gnome.nix
# https://wiki.nixos.org/wiki/GNOME
{pkgs, ...}: {
  # Despite the options in NixOS versions before 25.11 being under the xserver module, GNOME uses Wayland by default.
  # NixOS 25.11 and later removes support for the Xorg session entirely (though Xwayland is still included and supported for compatibility).

  # Pre 25.11
  # services.xserver.enable = true;
  # services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = true;

  # As of 25.11
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # For a minimal / barebones Gnome DE
  services.gnome.core-apps.enable = false;
  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;
  environment.systemPackages = with pkgs; [gnome-console nautilus];
  environment.gnome.excludePackages = with pkgs; [gnome-tour gnome-user-docs];
}
