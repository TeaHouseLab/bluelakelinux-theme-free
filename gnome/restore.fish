#!/usr/bin/fish
function banner
  echo -e "\033[32mWelcom\033[0m \033[34musing\033[0m \033[31mbluelakelinux\033[0m \033[33mflash\033[0m \033[35mscript\033[0m"
  echo "-------------Budgie theme restore--------------"
  echo "Now we're going to restore your  budgie theme"
  echo "want to restore your layout , type y to restore"
  echo " Or n to install next part"
  echo "----------------------------------------------------"
end

function checkdependence
  if test -e $argv
    echo -e "\033[32m[checkdependence]check passed - $argv exist\033[0m"
  else
    echo -e "\033[0;31m[checkdependence]check failed - plz install $argv\033[0m"
  end
end

banner
checkdependence /usr/bin/dconf

read -P "[y/n]" var1
  switch $var1
  case y
    dconf load /com/solus-project/  < conf/backup.dconf
  case n
    exit
  end
