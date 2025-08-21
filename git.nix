{ pkgs, ... }:

{
  programs.git = {
    enable = true;

    userName = "Andrei Gužovski";
    userEmail = "and.guzovski@gmail.com";
  };
}
