CopyFile /efi/loader/entries/fac089d724044032b08a1c639359eea3-6.18.4-arch1-1-fallback.conf 640
CopyFile /efi/loader/entries/fac089d724044032b08a1c639359eea3-6.18.4-arch1-1.conf 640
CopyFile /efi/loader/loader.conf 640
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf
CopyFile /etc/default/keyboard
CopyFile /etc/default/locale
CopyFile /etc/dracut.conf.d/myflags.conf
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Berlin
CopyFile /etc/ly/config.ini
CopyFile /etc/ly/ly/config.ini 755
CopyFile /etc/niri/config.kdl 755
CreateLink /etc/os-release ../usr/lib/os-release
CopyFile /etc/plymouth/plymouthd.conf
CopyFile /etc/plymouth/plymouthd.confe
CreateLink /etc/systemd/system/graphical.target.wants/power-profiles-daemon.service /usr/lib/systemd/system/power-profiles-daemon.service
CopyFile /etc/systemd/system/long-splash-sd.service 755
CopyFile /etc/systemd/system/long-splash.service 755
CopyFile /etc/systemd/system/long-splash.sh
CreateLink /etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service
CreateLink /etc/systemd/system/multi-user.target.wants/avahi-daemon.service /usr/lib/systemd/system/avahi-daemon.service
CreateLink /etc/systemd/system/multi-user.target.wants/cups.path /usr/lib/systemd/system/cups.path
CreateLink /etc/systemd/system/multi-user.target.wants/cups.service /usr/lib/systemd/system/cups.service
CreateLink /etc/systemd/system/multi-user.target.wants/firewalld.service /usr/lib/systemd/system/firewalld.service
CreateLink /etc/systemd/system/multi-user.target.wants/long-splash-sd.service /etc/systemd/system/long-splash-sd.service
CreateLink /etc/systemd/system/multi-user.target.wants/long-splash.service /etc/systemd/system/long-splash.service
CreateLink /etc/systemd/system/multi-user.target.wants/ly@tty1.service /usr/lib/systemd/system/ly@.service
CreateLink /etc/systemd/system/multi-user.target.wants/ly@tty2.service /usr/lib/systemd/system/ly@.service
CreateLink /etc/systemd/system/multi-user.target.wants/ly@tty3.service /usr/lib/systemd/system/ly@.service
CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
CreateLink /etc/systemd/system/timers.target.wants/fstrim.timer /usr/lib/systemd/system/fstrim.timer
CopyFile /etc/timeshift/timeshift.json
CopyFile /etc/timezone
CopyFile /usr/bin/rofi-power-menu 755
CopyFile /usr/lib/gio/modules/giomodule.cache
CopyFile /usr/lib/gtk-3.0/3.0.0/immodules.cache
CopyFile /usr/lib/locale/locale-archive
CopyFile /usr/lib/os-release
CopyFile /usr/share/applications/mimeinfo.cache
CopyFile /usr/share/factory/etc/issue
CopyFile /usr/share/icons/Adwaita/icon-theme.cache
CopyFile /usr/share/icons/AdwaitaLegacy/icon-theme.cache
CopyFile /usr/share/icons/hicolor/icon-theme.cache
CopyFile /usr/share/xdg-desktop-portal/niri-portals.conf




SetFileProperty /efi/loader/entries mode 750
SetFileProperty /efi/loader mode 750
SetFileProperty /efi mode 750
SetFileProperty /etc/cups/classes.conf mode 600
SetFileProperty /etc/cups/printers.conf mode 600
SetFileProperty /usr/bin/groupmems group groups
SetFileProperty /usr/bin/groupmems mode 2750
SetFileProperty /usr/lib/utempter/utempter group utmp
SetFileProperty /usr/lib/utempter/utempter mode 2755
SetFileProperty /usr/share/mime/application/anki.xml deleted y
SetFileProperty /var/log/journal group systemd-journal

