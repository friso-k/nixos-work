{ config, pkgs, ... } : {
    environment.systemPackages = with pkgs; 
  [
    spotdl
    mov-cli
    baobab       
  ];

 }
