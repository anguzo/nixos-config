# /etc/nixos/modules/home-manager/git.nix
{...}: {
  programs.git = {
    enable = true;

    userName = "Andrei Gužovski";
    userEmail = "and.guzovski@gmail.com";
  };
}
