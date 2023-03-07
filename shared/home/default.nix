{ pkgs, config, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.xz = { pkgs, ...}: {
    home.packages = with pkgs; [
      firefox
      vscode
      ripgrep
    ];
    home.stateVersion = "22.11";

    programs.git = {
      enable = true;
      userName = "xsamxz";
      userEmail = "samuelwww2000@gmail.com";
    };

  };
}