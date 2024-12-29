{ config, pkgs, ... }:
{
  # DO NOT CHANGE

  imports = [ <home-manager/nix-darwin> ];

  environment.darwinConfig = "$HOME/.config/nix-darwin/configuration.nix";
  system.stateVersion = 5;

  # Settings

  home-manager.useGlobalPkgs = true;
  nixpkgs.config.allowUnfree = true;

  ## Homebrew settings

  homebrew.enable = true;
  homebrew.onActivation.autoUpdate = true;
  homebrew.onActivation.cleanup = "uninstall";
  homebrew.onActivation.upgrade = true;

  ## System settings

  users.users."eduardo.paz" = {
    name = "eduardo.paz";
    home = "/Users/eduardo.paz";
  };

  networking.computerName = "MacBook do Edu";
  security.pam.enableSudoTouchIdAuth = true;
  system.defaults.controlcenter.BatteryShowPercentage = true;
  system.defaults.dock.autohide = true;
  system.defaults.finder.AppleShowAllExtensions = true;
  system.defaults.finder.AppleShowAllFiles = false;
  system.defaults.finder.ShowStatusBar = true;
  system.defaults.finder._FXShowPosixPathInTitle = true;
  system.defaults.finder._FXSortFoldersFirst = true;
  system.defaults.hitoolbox.AppleFnUsageType = "Do Nothing";
  system.defaults.loginwindow.autoLoginUser = "eduardo.paz";
  time.timeZone = "America/Sao_Paulo";

  # Aliases

  environment.shellAliases = {
    b = "bat";
    v = "vim";

    cp = "cp -vi";
    mv = "mv -vi";
    rm = "rm -vi";

    grhforno = "git reset --hard origin/forno";
    grhmain = "git reset --hard origin/main";
    grhmaster = "git reset --hard origin/master";
  };

  # Env vars

  environment.variables = {
    DOCKER_HOST = "unix:///Users/eduardo.paz/.colima/default/docker.sock";
    EDITOR = "vim";
    TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE = "/var/run/docker.sock";
  };

  # Fonts

  fonts.packages = [ (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; }) ];

  # Aerospace

  services.aerospace.enable = true;
  services.aerospace.settings.on-focused-monitor-changed = [
    "move-mouse monitor-lazy-center"
  ];
  services.aerospace.settings.on-focus-changed = [
    "move-mouse monitor-lazy-center"
  ];

  services.aerospace.settings.accordion-padding = 0;

  services.aerospace.settings.gaps.inner.horizontal = 5;
  services.aerospace.settings.gaps.inner.vertical = 5;

  services.aerospace.settings.gaps.outer.left = 5;
  services.aerospace.settings.gaps.outer.bottom = 5;
  services.aerospace.settings.gaps.outer.top = 5;
  services.aerospace.settings.gaps.outer.right = 5;

  # TO-DO
  # services.aerospace.settings.on-window-detected = [
  #   "if.app-id = 'com.jetbrains.intellij'"
  #   "run = 'move-node-to-workspace D'"
  # ];
  # services.aerospace.settings.on-window-detected = [
  #   "if.app-id = 'com.postmanlabs.mac'"
  #   "run = 'move-node-to-workspace D'"
  # ];
  # services.aerospace.settings.on-window-detected = [
  #   "if.app-id = 'org.mozilla.firefox'"
  #   "run = 'move-node-to-workspace D'"
  # ];

  services.aerospace.settings.mode.main.binding.alt-slash = "layout tiles horizontal vertical";
  services.aerospace.settings.mode.main.binding.alt-comma = "layout accordion horizontal";

  services.aerospace.settings.mode.main.binding.alt-h = "focus left";
  services.aerospace.settings.mode.main.binding.alt-j = "focus down";
  services.aerospace.settings.mode.main.binding.alt-k = "focus up";
  services.aerospace.settings.mode.main.binding.alt-l = "focus right";

  services.aerospace.settings.mode.main.binding.alt-shift-h = "move left";
  services.aerospace.settings.mode.main.binding.alt-shift-j = "move down";
  services.aerospace.settings.mode.main.binding.alt-shift-k = "move up";
  services.aerospace.settings.mode.main.binding.alt-shift-l = "move right";

  services.aerospace.settings.mode.main.binding.alt-shift-minus = "resize smart -50";
  services.aerospace.settings.mode.main.binding.alt-shift-equal = "resize smart +50";

  services.aerospace.settings.mode.main.binding.alt-1 = "workspace 1";
  services.aerospace.settings.mode.main.binding.alt-2 = "workspace 2";
  services.aerospace.settings.mode.main.binding.alt-3 = "workspace 3";
  services.aerospace.settings.mode.main.binding.alt-4 = "workspace 4";
  services.aerospace.settings.mode.main.binding.alt-5 = "workspace 5";
  services.aerospace.settings.mode.main.binding.alt-d = "workspace D";

  services.aerospace.settings.mode.main.binding.alt-tab = "workspace-back-and-forth";
  services.aerospace.settings.mode.main.binding.alt-shift-tab =
    "move-workspace-to-monitor --wrap-around next";

  services.aerospace.settings.mode.main.binding.alt-shift-semicolon = "mode service";

  services.aerospace.settings.mode.service.binding.esc = [
    "reload-config"
    "mode main"
  ];
  services.aerospace.settings.mode.service.binding.f = [
    "layout floating tiling"
    "mode main"
  ];

  services.aerospace.settings.mode.service.binding.alt-shift-h = [
    "join-with left"
    "mode main"
  ];
  services.aerospace.settings.mode.service.binding.alt-shift-j = [
    "join-with down"
    "mode main"
  ];
  services.aerospace.settings.mode.service.binding.alt-shift-k = [
    "join-with up"
    "mode main"
  ];
  services.aerospace.settings.mode.service.binding.alt-shift-l = [
    "join-with right"
    "mode main"
  ];

  # Packages

  ## nix-darwin packages

  environment.systemPackages = with pkgs; [
    brave
    colima
    ffmpeg
    imagemagick
    jetbrains.idea-ultimate
    nginx
    nixfmt-rfc-style
    postman
    raycast
    tldr
  ];

  ## Homebrew packages

  homebrew.casks = [
    {
      name = "notion";
      greedy = true;
    }
    {
      name = "whatsapp";
      greedy = true;
    }
  ];

  ## Home Manager packages

  home-manager.users."eduardo.paz" =
    { ... }:
    {
      programs.mise.enable = true;
      programs.jq.enable = true;

      programs.zoxide.enable = true;
      programs.zoxide.options = ["--cmd cd"];

      programs.yazi.enable = true;
      programs.yazi.shellWrapperName = "y";

      programs.kitty.enable = true;
      programs.kitty.font.name = "FiraCode Nerd Font";
      programs.kitty.font.size = 16;
      programs.kitty.themeFile = "SpaceGray_Eighties";

      programs.atuin.enable = true;

      programs.starship.enable = true;

      programs.zsh.enable = true;

      # programs.zsh.prezto.enable = true;

      programs.zsh.autosuggestion.enable = true;
      programs.zsh.historySubstringSearch.enable = true;
      programs.zsh.syntaxHighlighting.enable = true;

      programs.zsh.oh-my-zsh.enable = true;
      programs.zsh.oh-my-zsh.plugins = [
        "aliases"
        "colored-man-pages"
        "git"
        "sudo"
        "vi-mode"
      ];

      # DO NOT CHANGE
      # The state version is required and should stay at the version you
      # originally installed.
      home.stateVersion = "24.11";
    };

}