#!/usr/bin/fish
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
                      echo "Done!relogin in your budgie/gnome desktop,you can got a bluelake 40 experience now"
