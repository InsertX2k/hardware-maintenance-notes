@echo off
echo. > "%systemdrive%\network_controller_restart.log"
echo Started rebooting ethernet controller at: %date%, %time% >> "%systemdrive%\network_controller_restart.log"
echo. >> "%systemdrive%\network_controller_restart.log"
echo Restarting Ethernet controller: Intel(R) 82579LM Gigabit Network Connection >> "%systemdrive%\network_controller_restart.log"
echo. >> "%systemdrive%\network_controller_restart.log"
pnputil /disable-device "PCI\VEN_8086&DEV_1502&SUBSYS_052C1028&REV_04\3&11583659&0&C8" >> "%systemdrive%\network_controller_restart.log"
pnputil /enable-device "PCI\VEN_8086&DEV_1502&SUBSYS_052C1028&REV_04\3&11583659&0&C8" >> "%systemdrive%\network_controller_restart.log"
echo Finished rebooting ethernet controller at: %date%, %time% >> "%systemdrive%\network_controller_restart.log"
echo. >> "%systemdrive%\network_controller_restart.log"
exit /b 0