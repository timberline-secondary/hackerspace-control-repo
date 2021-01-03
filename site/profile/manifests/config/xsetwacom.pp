# configure wacom tablet when user logs in.
class profile::config::xsetwacom {

  file { '/etc/profile.d/configure_wacom.sh':
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    notify  => Reboot['after_run'],
    content => '#!/bin/bash
# Map Intuos5 Medium to single monitor and maintain aspect ratio (1200 instead of 1080)
if xsetwacom --list | grep -q 'Wacom Intuos5 touch M'; then
  xsetwacom --set "Wacom Intuos5 touch M Pen stylus" MapToOutput 1920x1200+0+0 || true
  xsetwacom --set "Wacom Intuos5 touch M Pen eraser" MapToOutput 1920x1200+0+0 || true
  xsetwacom --set "Wacom Intuos5 touch M Pen cursor" MapToOutput 1920x1200+0+0 || true
fi
# Intuos Pro Medium
if xsetwacom --list | grep -q 'Wacom Intuos5 Pro M'; then
  xsetwacom --set "Wacom Intuos Pro M Pen stylus" MapToOutput 1920x1200+0+0 || true
  xsetwacom --set "Wacom Intuos Pro M Pen eraser" MapToOutput 1920x1200+0+0 || true
  xsetwacom --set "Wacom Intuos Pro M Pen cursor" MapToOutput 1920x1200+0+0 || true
fi
',
  }

}
