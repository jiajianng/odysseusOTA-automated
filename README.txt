odysseusOTA

"""
WARNING: do not do it, unless you have read and understood these instructions.
If *anything* goes wrong during the restore process, you will have to restore
to the latest, most likely unjailbreakable firmware.  Basically, you are on
your own.  I will not be held responsible for anything YOU do.
"..."
This works only on certain jailbroken 32bit devices.  By that, I mean devices
I have keys for.  

The untether on your device must have tfp0 enabled.
Early versions of Pangu did not enable tfp0, but latest versions of Pangu, TaiG
and evasi0n all have tfp0 activated.
""" -@xerub
————————————————————————————————————————————————————————————————————————————————

This will change your baseband version!

You should really watch this video https://www.youtube.com/watch?v=Wo7mGdMcjxw before trying to downgrade.

Commands:

#cd to the directory
cd odysseusOTA
cd macos (or linux)

#build custom ipsw
./ipsw iPhone4,1_6.1.3_restore.ipsw custom_downgrade.ipsw -bbupdate
#DO NOT FORGET -bbupdate   !!!!!!

#download shsh blobs
./idevicerestore -t custom_downgrade.ipsw

#extract pwnediBSS
./xpwntool `unzip -j custom_downgrade.ipsw 'Firmware/dfu/iBSS*' | awk '/inflating/{print $2}'` pwnediBSS

#copy files to device
scp pwnediBSS ../kloader root@IP_OF_DEVICE:
#dont forget the „:“ here ————————————————^

#default ssh password is „alpine“

#ssh to the device
ssh root@IP_OF_DEVICE

#run kloader (on device via ssh)
./kloader pwnediBSS

#when your device’s screen turn’s black, open a new tab/terminal and close the current one with the ssh session

#now back on the computer run the restore
./idevicerestore -w ./custom_downgrade.ipsw

Done :)


Thanks a lot to @xerub for releasing iPad Bundles

Credits:
@xerub for his odysseus tool
@planetbeing, dborca for the awesome xpwn
@winocm for ios-kexec-utils
@westbaer, p0sixninja, iH8sn0w, GreySyntax for irecovery
@libimobiledevice people for libimobiledevice
@iH8sn0w for some ideas and code
@daytonhasty for some ideas, testing and writeup
@JonathanSeals for some ideas
@citrusui for the cool name

-tihmstar
