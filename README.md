# Pi-Kiosk
 <img src="https://user-images.githubusercontent.com/60224159/158912639-415d3113-6b4a-40d3-bbe0-e9607cb0e3b2.png" width="80" height="90">  <img src="https://user-images.githubusercontent.com/60224159/158912545-344401af-5e80-437a-90dd-c8084620a31c.png" width="80" height="90"> 

Kiosk Script Enabler for Pi applications

## To enable : 

1) Download this package.
2) Edit the `Pi-Kiosk/autostart/autostart.sh` script to do what you want on starting up.
3) Copy the package to `/home/pi/`.
4) Start an lxterminal on the pi.
5) Execute the install script and reboot : 
```bash
sudo bash /home/pi/Pi-Kiosk/install/install.sh
reboot
```

## To disable : 
- Execute the uninstall script and reboot : 
```bash
sudo bash /home/pi/Pi-Kiosk/uninstall/uninstall.sh
reboot
```

