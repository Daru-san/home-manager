{...}:{
  programs.swaync = {
    enable = true;
    settings = {
      positionX = "right";
      positionY = "top";

      widgets = [
        "title"
        "dnd"
        "notifications"
      ];
    };
  };
  nmt.script = let config = "home-files/.config/swaync/config.json";
  in ''
    assertFileExists ${config}
    assertFileContent ${config} ${./config.json}
  '';
}
