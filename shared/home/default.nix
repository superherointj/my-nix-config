{ pkgs, config, ... }:

{

     #root
  users.users.root = {
    isSystemUser = true;
    home = "/root";
    uid = 0;
    group = "root";
    shell = pkgs.bash;
    packages = [ pkgs.git ];
  };

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
 
    programs.bash = {
      enable = true;
      shellAliases = import ./aliases;
    };

    programs.git = {
      enable = true;
      userName = "xsamxz";
      userEmail = "samuelwww2000@gmail.com";
    };
  };
}