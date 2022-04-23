# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{ config, pkgs, ... }:

{


  nixpkgs.config.permittedInsecurePackages = [
      "electron-12.2.3"
  ];



  imports = [ ./installation-cd-graphical-plasma5.nix ];

  

  boot.kernelPackages = pkgs.linuxPackages_latest;

  fonts.fonts = with pkgs; [
    
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    source-han-serif
    source-han-sans

  ];

  
  nix.binaryCaches = [ "https://mirrors.ustc.edu.cn/nix-channels/store" "https://cache.nixos.org/" ];


  

  #i18n.defaultLocale = "zh_CN.UTF-8";
  i18n.inputMethod.enabled = "fcitx5";
  i18n.inputMethod.fcitx5.addons = with pkgs; [ fcitx5-chinese-addons ];



  nixpkgs.config.allowUnfree = true;
  security.doas.enable = true;

  environment.systemPackages = with pkgs; [

    appimage-run
    chromium
    v2ray
    qv2ray
    tdesktop
    vlc
    steam-run
    vscode
    gcc
    
    unzip
    unrar
    nmap
    p7zip
    flameshot
    libsForQt5.kmines
    gimp
    apfs-fuse
    libsForQt5.ark
    libsForQt5.kate
    etcher
    element-desktop

  ];



}

