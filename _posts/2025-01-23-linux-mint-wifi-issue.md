---
layout: post
title: "Random Wifi Disconnection on Linux Mint"
categories: Dev
---

Wifi would randomly stop working from time to time despite having an active connection. A short term fix can be made by restarting the wifi or making manual reconnection.

The following is a more permanent solution that disables the Wifi power saving mode.

```sh
sudo iwconfig wlp1s0 power off
sudo sed -i 's/3/2/' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
systemctl restart NetworkManager
```

> Replace `wlp1s0` with `wlp3s0`

Resources
- https://forums.linuxmint.com/viewtopic.php?t=412738
- https://forums.linuxmint.com/viewtopic.php?t=421653
