
#export PACKER_LOG=1
del packer_virtualbox-iso_virtualbox.box
packer build -only virtualbox-iso packer.json
vagrant box remove vagrant_machine
vagrant box add vagrant_machine packer_virtualbox-iso_virtualbox.box
