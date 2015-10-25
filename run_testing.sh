#!/bin/sh

#  run.sh
#  
#
#  Created by Jia Jian on 24/10/15.
#  This tool automates the odysseusOTA proccess (mostly, and as far as it can go) so people who hate the copy and pasting can use this.
#  Please report to me on Twitter (@jiajianng) and tell me if it works or not, bugs etc. Thanks!
#
#  Let's begin!

function abort() {
echo "Uh oh, something is not right! Exiting..." >&2
exit 254;
}


#echo Welcome to odysseusOTA
#echo We are now going to build the custom downgrade IPSW.
#display dialog

read -p "Welcome to odysseusOTA! Are you sure you want to downgrade your iPhone4,1/iPhone 4S to iOS 6.1.3? You will lose all your data as this is a full restore. Press [ENTER] to continue/say yes, to exit just close out this window/tab."
echo
#cd macos
read -p "Oh, right! Please make sure you downloaded the latest version of odysseusOTA and you have not changed anything. Press [ENTER] if you comply with the above condition, or else GET OUTTA HERE NOW!"
read -p "Make sure you have the original 6.1.3 IPSW in the macos folder, and it is renamed as "original.ipsw", because that is what we are going to be using today."
echo "We are now going to build the custom downgrade IPSW."
#./ipsw original.ipsw custom_downgrade.ipsw -bbupdate || abort
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
read -p "Please plug in your iPhone 4S and make sure it is jailbroken with a tfp0-enabled jailbreak and you have odysseusOTA-setup installed on your device from repo http://jiajianng.github.io/repo/. Press [ENTER] if you have everything ready."
echo "We are now going to fetch the OTA SHSH blobs."
#./idevicerestore -t custom_downgrade.ipsw || echo "Your device could not be detected." && abort
echo "We will now prepare some files, sit tight and relax. Make sure your device is connected to WiFi, or this will fail."
#printf "Why not grab a drink and watch me do the magic? (Sure!/Nevermind.)"
#read askForDrink
#if $askForDrink = "Sure!", echo "Great!"
#if $askForDrink = "Nevermind.", echo "It's okay."
printf "Before we start, what is your IP address? (You may be asked for some SSH prompts, complete them before you do anything else (like if you wanted to grab a drink?) Thanks!  -> "
read IPofDevice
echo "Thanks!"
#./xpwntool `unzip -j custom_downgrade.ipsw 'Firmware/dfu/iBSS*' | awk '/inflating/{print $2}'` pwnediBSS || abort
echo "Please enter your OpenSSH password below. Unless you changed it with passwd, the default is alpine. (vvvv)"
#scp pwnediBSS root@IPofDevice:
echo "Now, we are going to put the device into kDFU, a mode just for restoring the firmware which is iOS 6.1.3 . This is kinda like the hospital procedure where they put the patient into a deep state of unawareness (aka fainted) before surgery. We will need your SSH password once again below. (vvvv)"
#ssh root@IPofDevice ./kloader pwnediBSS; exit || abort
printf "Are you sure you want to downgrade your iPhone 4S to iOS 6.1.3? (yes/no)"
read confirmDowngrade
if $confirmDowngrade = "yes", echo "Downgrading now"
if $confirmDowngrade = "no", echo "To exit the black screen simply reboot by holding Home button + Power button." && abort
#./idevicerestore -w ./custom_downgrade.ipsw || abort
echo "You have successfully downgraded your iPhone 4S to iOS 6.1.3! Enjoy!"
echo "----------------"
echo "Credits:"
echo "@tihmstar for the original tool odysseusOTA"
echo "@jiajianng for the automated script and GitHub repo"
echo "Everyone who was credited in README.txt"