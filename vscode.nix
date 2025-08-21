{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      # Nix language support extension
      jnoortheen.nix-ide
      # GitHub Copilot extensions
      github.copilot
      github.copilot-chat
    ];

    userSettings = {
      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nixd";
      "nix.serverSettings" = {
        "nixd" = {
          "formatting" = {
            "command" = [ "alejandra" ];
          };
        };
      };
    };
  };
}
