{ config, pkgs, ... } : {

    environment.systemPackages = with pkgs; 
  [
    vim
    git
    git-open

    obsidian
    gedit

    element-desktop
 
    curl
    wget

    google-chrome
    sshfs-fuse

    python3
    pipx
    nodejs_22 
    jdk17

    thunderbird
    jetbrains.idea-ultimate    
    qtpass
    # pass

    ansible    
    php

    gradle
    tilix
    
    borgmatic
    borgbackup
    
    tailscale

    celluloid

    # De Friso Specials
    pipx
    syncthing
    signal-desktop
    telegram-desktop
    onlyoffice-bin_latest

    ffmpeg    
  ];

  services.openssh = {
    enable = true;
  };

  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };
 
  users.defaultUserShell=pkgs.zsh; 
  users.extraGroups.docker.members = [ "frisok" ];

   programs = {
   zsh = {
      enable = true;
      autosuggestions.enable = true;
      zsh-autoenv.enable = true;
      syntaxHighlighting.enable = true;
      ohMyZsh = {
         enable = true;
         # theme = "robbyrussell";
         theme = "ys";
         plugins = [
           "git"
           "npm"
           "history"
           "node"
           "rust"
           "deno"
         ];
      };
   };
  };


  
  # optimize & Garbage collect
  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  services.tailscale.enable = true;
  services.syncthing.enable = true;

  programs.gnupg.agent.enable = true;

  # stupid but required by company policy

  services.clamav = {
    daemon.enable = true;
    updater.enable = true;
  };

}
