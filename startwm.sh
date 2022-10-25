#!/bin/sh
# xrdp X session start script (c) 2015, 2017, 2021 mirabilos
# published under The MirOS Licence

# Rely on /etc/pam.d/xrdp-sesman using pam_env to load both
# /etc/environment and /etc/default/locale to initialise the
# locale and the user environment properly

#!/bin/sh
if [ -r /etc/default/locale ]; then
. /etc/default/locale
export LANG LANGUAGE
fi
xrdb -merge ~/.Xresources
/usr/bin/i3
