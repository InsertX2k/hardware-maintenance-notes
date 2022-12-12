# Dell OptiPlex 7010 On-board NIC Controller Fix for Windows
This folder contains necessary scripts and Task Scheduler task files to enable your computer to automatically disable and enable your Dell OptiPlex 7010's On-board NIC controller upon system startup and at logon of any user and when waking up system from sleep and hibernate.

## How to install?
* Copy the file `network_fix.bat` to the directory `C:\Windows`
* Open Task Scheduler and import the file `Network Controller Fix.xml`
* Make sure the task named "Network Controller Fix" is enabled.
* Reboot your system and enjoy.
