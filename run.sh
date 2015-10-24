#!/bin/sh

#  run.sh
#  
#
#  Created by Jia Jian on 24/10/15.
#  This tool automates the odysseusOTA proccess (mostly, and as far as it can go) so people who hate the copy and pasting can use this.
#  Please report to me on Twitter (@jiajianng) and tell me if it works or not, bugs etc. Thanks!
#
#  Let's begin!



read -p Welcome to odysseusOTA! Are you sure you want to downgrade your iPhone4,1/iPhone 4S to iOS 6.1.3? Press [ENTER] to continue/say yes, to exit just close out this window/tab.
echo
cd macos
read -p Oh, right! Please make sure you downloaded the latest version of odysseusOTA and you have not changed anything. Press [ENTER] if you comply with the above condition, or else GET OUTTA HERE NOW!
read -p Make sure you have the original 6.1.3 IPSW in the macos folder.
echo We are now going to build the custom downgrade IPSW.
display dialog 