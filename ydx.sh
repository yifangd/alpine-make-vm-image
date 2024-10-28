sudo ./alpine-make-vm-image --image-format qcow2 --image-size 2G \
	--repositories-file ydx/repositories \
	--keys-dir ydx/keys \
	--packages "$(cat ydx/packages)" \
	--script-chroot alpine-virthardened-$(date +%Y-%m-%d).qcow2 \
	-- ./ydx/configure.sh
