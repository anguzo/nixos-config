{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      # Nix language support extension
      bbenoist.nix
      # GitHub Copilot extensions
      github.copilot
      github.copilot-chat
    ];
  };
}
