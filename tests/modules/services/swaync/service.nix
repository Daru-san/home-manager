{pkgs, config, ...}:{
  services.swaync = {
    enable = true;

    package = config.lib.test.mkStubPackage {
      name = "swaynotificationcenter";
<<<<<<< HEAD
=======
<<<<<<< HEAD
      outPath = "@swaync@";
    };
    systemdTarget = "sway-session.target";
=======
>>>>>>> 8214515d4fa79242955811da1b81f7396d27ee5d
        outPath = "@swaync@";
    };
    systemdTarget = "sway-session.target";
    };
<<<<<<< HEAD
=======
>>>>>>> swayosd
>>>>>>> 8214515d4fa79242955811da1b81f7396d27ee5d
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
<<<<<<< HEAD
=======

>>>>>>> swayosd
>>>>>>> 8214515d4fa79242955811da1b81f7396d27ee5d
