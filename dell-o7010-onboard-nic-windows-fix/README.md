# Dell OptiPlex 7010 On-board NIC Controller Fix for Windows
This folder contains necessary scripts and Task Scheduler task files to enable your computer to automatically disable and enable your Dell OptiPlex 7010's On-board NIC controller upon system startup and at logon of any user and when waking up system from sleep and hibernate.

## How to install?
* Copy the file `network_fix.bat` to the directory `C:\Windows`
* Open Task Scheduler and navigate to `Task Scheduler Library\Windows` Folder then import the file `Ethernet Controller Fix (Import using task scheduler to task scheduler library-windows).xml`
* Make sure the task is named "Network Controller Fix" and enabled.
* Reboot your system and enjoy.

## Notes:
***The script `network_fix.bat` creates a log file stored in `C:\` named `network_controller_restart.log`, You may refer to it when the on-board NIC doesn't work even after the script runs.***
