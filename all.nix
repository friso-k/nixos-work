{ config, pkgs, ... } : {
    environment.systemPackages = with pkgs; 
  [
    vim
    git
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

    ansible    


    gradle
    tilix
    
    borgmatic
    borgbackup
    
    tailscale

    # De Friso Specials
    obsidian
    pipx
    syncthing
    signal-desktop
    onlyoffice-bin_latest
  ];

  services.openssh = {
    enable = true;
  };

  virtualisation.docker.enable = true;

 
 users.defaultUserShell=pkgs.zsh; 

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

}
