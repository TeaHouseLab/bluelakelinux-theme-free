#app_info:bluelake_themes_installer
#app_version:2021-6-11-b2
#by bluelake lab
#bluelake_themes_installer.start
read -P "[y/n]" var1
  switch $var1
    case y
      # version
          echo "[1]gnome"
          echo "[2]kdeplasma"
          read -P "[_]" var_switch1
            switch $var_switch1
              case 1
                  echo "Currently installing gnome/budgie theme"
                  # preload
                  cd gnome
                  if test -d /usr/share/backgrounds/gnome
                      sudo cp -r resource/backgrounds/bluelake/ /usr/share/backgrounds
                    else
                      sudo mkdir /usr/share/backgrounds/gnome
                      sudo cp -r resource/backgrounds/bluelake/ /usr/share/backgrounds
                  end
                  sudo cp -r resource/gtk_theme/materia/* /usr/share/themes
                  sudo cp -r resource/icon/* /usr/share/icons
                  dconf load /com/solus-project/  < conf/budgie.dconf
                  dconf load /org/gnome/terminal/legacy/ < conf/gnome-terminal.dconf
                  dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ < conf/shortcut.dconf
                  dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/']"
                    # end
                      # backup
                      dconf dump /com/solus-project/ > conf/backup.dconf
                    # end
                      # process
                        gsettings set org.gnome.desktop.interface gtk-theme "Materia-light-compact"
                        gsettings set org.gnome.desktop.wm.preferences theme "Materia-light-compact"
                        gsettings set org.gnome.desktop.interface icon-theme "Papirus"
                        gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/bluelake/bluemountain.png'
                        gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/bluelake/bluemountain.png'
                        gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/bluelake/bluemountain.png'
		 # end1
                      cd ..
                      echo "Done!relogin in your budgie/gnome desktop"
              case 2
                echo "Currently installing kdeplasma theme"
                  # preload
                    cd kde
                      sudo cp -r resource/icon/* /usr/share/icons
                      sudo cp -r resource/kde/sddm/bluelake /usr/share/sddm/themes/
                      # install user mode
                        cp -r resource/kde/aurorae ~/.local/share
                        cp -r resource/kde/wallpapers ~/.local/share
                        cp -r resource/kde/Kvantum ~/.config
                        kpackagetool5 -i resource/kde/plasma/look-and-feel/bluelake/
                        kpackagetool5 -i resource/kde/plasma/look-and-feel/bluelakelight/
                      # Configuring
                        plasmapkg2 --type kwinscript -i conf/scripts/kwin-script-tiling/
                        echo "wants to use bluelake layout?"
                        read -P "[y/n]" var_switch2
                          switch $var_switch2
                            case y
                              lookandfeeltool -a bluelakelight --resetLayout
                            case n
                              lookandfeeltool -a bluelakelight
                            case *
                              echo "unexcpet input"
                          end
                        # end1
                        cd ..
                        echo "Done!relogin in your plasma desktop"
             case *
               echo "unexcpet input"
          end
  case n
  case *
    echo "unexcpet input"
  end
#bluelake_themes_installer.end
