prepare:
	echo "installing dependencies..."
	bash cmd/install_deps.sh
	sleep 3

iso_mount:
	echo "mounting windows iso..."
	bash cmd/mount.sh
	sleep 3

iso_unmount:
	echo "unmounting windows iso..."
	bash cmd/unmount.sh
	sleep 3

format_usb:
	echo "formating usb drive..."
	bash cmd/format.sh
	sleep 3

rsync_files:
	echo "rsyncing files..."
	bash cmd/rsync.sh
	sleep 3

create_usb: prepare iso_mount format_usb rsync_files
	# prepare
	# iso_mount
	# format_usb
	# rsync_files
