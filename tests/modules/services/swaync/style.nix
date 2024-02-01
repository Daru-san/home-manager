{...}:{
  programs.swaync = {
    enable = true;
    style = ''
      * {
        font-family: Ubuntu Nerd Font;
        font-weight: bolder;
      }
    '';
  };

  nmt.script = let config = "home-files/.config/swaync/style.css";
  in ''
    assertFileExists ${config}
    assertFileContent ${config} ${./style.css}
  '';
}
