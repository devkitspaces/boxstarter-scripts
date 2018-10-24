powercfg /H OFF

#plugged
powercfg -change -monitor-timeout-ac 0
powercfg -change -standby-timeout-ac 0
powercfg -change -disk-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0

#battery
powercfg -change -monitor-timeout-dc 30
powercfg -change -standby-timeout-dc 60
powercfg -change -disk-timeout-dc 60