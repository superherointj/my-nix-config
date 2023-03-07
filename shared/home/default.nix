{ pkgs, config, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.xz = { pkgs, ...}: {
    home.packages = with pkgs; [
      firefox
      vscode
      ripgrep
      pfetch
    ];
    home.stateVersion = "22.11";

    programs.bash.shellAliases = import ./aliases {
      inherit pkgs;
    };

    programs.git = {
      enable = true;
      userName = "xsamxz";
      userEmail = "samuelwww2000@gmail.com";
    };

  };
}