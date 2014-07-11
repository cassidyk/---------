~/scripts/syncthing-install.sh
~/scripts/syncthing-config.sh
syncthing &
while [ ! -f /wheel/Sync/env/env.sh ]
do
  sleep 15
done
/wheel/Sync/env/env.sh
