cd '/home/pi/Pi-Kiosk/uninstall/'
this=`pwd`
piKiosk="${this%/*}"
bin=$piKiosk'/bin/'
backup=$piKiosk'/bin/system-backup/'
customKeybindings=$bin'lxde-pi-rc.xml'

source $piKiosk'/Global Constants.sh'

function prepareDeKiosk() {
	# replaces lxde keybindings with the backed up version.
	sudo cp $backup'lxde-pi-rc.xml' $lxdeOpenbox
}

function uninstallKiosk() {
	# retains the panels
	sudo mv $bin'lxpanel' $lxbin
	sudo mv $bin'lxpanelctl' $lxbin 	
	# removes autostart
	sudo rm $autoStartConfig'Kiosk-App.desktop'
}
