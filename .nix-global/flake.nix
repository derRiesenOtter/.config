{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
    packages."aarch64-darwin".default = let
      pkgs = nixpkgs.legacyPackages."aarch64-darwin";
      
      # Python Environment
      pythonEnv = pkgs.python3.withPackages (ps: with ps; [
        numpy
        pandas
        scipy
        matplotlib
        pylint
      ]);
      
      # R Environment
      rEnv = pkgs.rWrapper.override {
        packages = with pkgs.rPackages; [
          languageserver
        ];
      };
      
    in pkgs.buildEnv {
      name = "home-packages";
      paths = with pkgs; [
        # Version control
        git
        
        # Fuzzy Finder
        fzf
        
        # Directory Jumper
        zoxide
        
        # Enhanced ls
        eza
        
        # Text Editor
        neovim
        
        # Terminal Multiplexer
        tmux
        tmuxPlugins.resurrect
        tmuxPlugins.continuum
        tmuxPlugins.vim-tmux-navigator
        
        # Search Tool
        ripgrep
        
        # Zsh Enhancements
        zsh
        zsh-syntax-highlighting
        zsh-autocomplete
        zsh-autosuggestions
        zsh-powerlevel10k
        
        # TeX Live Full Distribution
        texliveFull
        
        # Python and R Environments
        pythonEnv
        rEnv

        # Greeter
        fastfetch

        # font
        meslo-lgs-nf
      ];
    };
  };
}

