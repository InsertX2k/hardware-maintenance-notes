# How to update or downgrade Dell OptiPlex 7010 BIOS?

* Download the correct BIOS version you want to flash from [Dell's Website](https://www.dell.com/support/home/en-us/product-support/product/optiplex-7010/drivers)
* Download Rufus
* Insert a USB flash drive (With size of 4 GB or more) and be sure to take a backup of everything stored in it (AS IT WILL BE ERASED)
* Create a FreeDOS bootable USB Drive using Rufus (Choose your USB flash drive from flash drive selection drop-down and choose FreeDOS and press Start)
* Copy the BIOS file you downloaded from Dell's website and paste it in the USB flash drive you used Rufus on.
* Shutdown your OptiPlex 7010 by using the Shutdown option in Start menu.
* Disconnect it's power cord
* Remove/disassemble your PC case cover.
* Remove the CMOS/BIOS coin cell Battery.
* Remove the jumper (blue-colored) from the PSWD jumper pins and insert it into the RTCRST jumper pins.
* Connect the power cord of your Dell PC to the Wall outlet or what you usually use to connect power to your PC.
* Wait for around 10-20 seconds before disconnecting the power cord from your PC again
* Wait for around 10-20 seconds after removing the power cord to ensure there isn't any presistent electricity on the power supply.
* Remove the jumper (blue-colored) from the RTCRST jumper pins and insert it into the SERVICE_MODE jumper pins.
* Connect the power cord to your OptiPlex 7010 and turn it on.
* Once the Dell logo appears (or POST messages show up on your screen, depending on your BIOS version), press and hold the <kbd>F12</kbd> button on your keyboard until a message that says "Preparing one-time boot menu..." appears on the top right corner of your display (depends on your BIOS version too)
* MAKE SURE the boot order is set to Legacy, Secure boot OFF, if it's not like that, you can change that from the option "Change boot options"
* Choose to boot from USB Storage device.
* Once entered the DOS prompt, enter the following commands:

1-To get the file name of the BIOS update executable
```bat
dir/w
```

There should be something like that appearing on your screen as soon as you press the <kbd>Enter</kbd> button.
```bat
 Volume in drive <Volume letter> is <Volume label>
 Volume Serial Number is <Volume Serial Number section 1>-<Volume serial number section 2>

 Directory of C:\

O7010A29.EXE                        [<Other necessary FreeDOS folders>]                 [<FreeDOS reserved folder>]
               1 File(s) <size of files in USB flash> bytes
               2 Dir(s)  <USB Flash size> bytes free

```

2-The file you downloaded eariler from Dell's website must be named as something like `O7010A29.EXE`, if you remember the name of the file you downloaded, this should be an easy step, and if you don't, please refer to the command shown above to get the BIOS flash executable name.

3-If the BIOS version you are trying to flash is an **Update** (Newer than the current one you have installed), You can use this command:

```bat
<BIOS update executable filename>.EXE
```

e.g.:

```bat
O7010A29.EXE
```

And follow on-screen instructions, and after rebooting, your BIOS should be updating itself.

4-If the BIOS version you are trying to flash is a **Downgrade** (Older than the current one you have installed), ***You must use this command***:

```bat
<BIOS update executable filename>.EXE /s /f /r
```

e.g.:

```bat
O7010A01.EXE /s /f /r
```

You won't need to follow any on-screen instructions as the BIOS updater program will run in silent mode which will supress all actions that need user interaction and begin BIOS flashing automatically.

* Once done, your computers should reboot and your BIOS version will be flashed successfully.

## Notes
* **If you have CompuTrace enabled/Activated, You can't downgrade your BIOS version, unless you are lucky enough to have your current Intel ME firmware version older than the old BIOS version you are trying to downgrade to.**
* ***Although upgrading BIOS from a Windows environment is possible, but I don't really recommend it because you can't predict when the OS would crash and render your BIOS corrupted.***
* ***and No, Reflashing the same BIOS version as the current one you have or even downgrading your BIOS version won't really help you fix the issue where the on-board NIC (Network controller) requires to be disabled then enabled to work, I am telling you this because I have tried that myself and wasted a lot of time, but at the end, at least, I gained some experience.***

(Fixing this issue requires a script that does that automatically that runs upon system startup, and at logon of any user, and upon waking up from a hiberate or sleep session, See [this folder for that script and task scheduler configuration](https://github.com/InsertX2k/hardware-maintenance-notes/tree/main/dell-o7010-onboard-nic-windows-fix))
