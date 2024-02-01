{pkgs, config, ...}:{
  services.swaync = {
    enable = true;

    package = config.lib.test.mkStubPackage {
      name = "swaynotificationcenter";
<<<<<<< HEAD
      outPath = "@swaync@";
    };
    systemdTarget = "sway-session.target";
=======
        outPath = "@swaync@";
    };
    systemdTarget = "sway-session.target";
    };
>>>>>>> swayosd
  };

  nmt.script = ''
    assertFileContent \
      home-files/.config/systemd/user/swaync.service \
      ${
        builtins.toFile "swaync.service" ''
          [Install]
          WantedBy=sway-session.target

          [Service]
          ExecReload=@swaync@/bin/swaync-client --reload-config --reload-css
          ExecStart=@swaync@/bin/swaync
          Restart=always
          Type=simple

          [Unit]
          Description=Simple GTK notification daemon for wayland
          Documentation=man:swaync(1)
          PartOf=graphical-session.target
        ''
      }
  '';
}
<<<<<<< HEAD
=======

>>>>>>> swayosd
