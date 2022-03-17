cd '/home/pi/Pi-Kiosk/install/'
this=`pwd`
piKiosk="${this%/*}"
bin=$piKiosk'/bin/'
backup=$piKiosk'/bin/system-backup/'
customKeybindings=$bin'lxde-pi-rc.xml'
kioskApp=$bin'Kiosk-App.desktop'

source $piKiosk'/Global Constants.sh'

##
# Prepares to install by backing-up system parts.
##
function prepareKiosk() {
	# backup the keybindings
	sudo cp $lxdeKeybindings $backup
	sudo cp $lxpanel $backup
	sudo cp $lxpanelctl $backup
}

##
# Installs the Kiosk mode. 
##
function installKiosk() {
	# remove the panel app
	sudo mv $lxpanel $bin
	sudo mv $lxpanelctl $bin
	# install the customized keybindings from the bin folder
	sudo cp $customKeybindings $lxdeOpenbox
	# install the autostart desktop app to .config
	sudo cp $kioskApp $autoStartConfig
}
