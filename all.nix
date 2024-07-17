{ config, pkgs, ... } : {
    environment.systemPackages = with pkgs; 
  [
    vim
    git

    curl
    google-chrome
    sshfs-fuse

    python3
    pipx
  

    jetbrains.idea-ultimate
    borgmatic
    borgbackup
    

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


}
