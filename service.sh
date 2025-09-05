#!/system/bin/sh

APP="ru.oneme.app"

while true; do
    if pid=$(pidof "$APP"); then
        am force-stop "$APP" 2>/dev/null
        log -t maxkiller "Killed $APP (pid: $pid)"
    fi
    sleep 1
done
