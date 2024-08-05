# Nixos Setup 
This is a basic nixos setup with everything included to get a developer going. Includes everything from note taking to frontend and backend development

1. Install nixos on your system. See https://nixos.org/download/#nixos-iso.
2. Get the Goodies
	```shell
	nix-shell -p vim git
    git clone https://github.com/friso-k/nixos-work.git ~/nixos-config
	sudo ln -s ~/nixos-config/all.nix /etc/nixos/all.nix
	```
	
3. Link the configuration (include it). 
	```shell
    sudo vim /etc/nixos/configuration.nix
	# Add ./all.nix to the imports block.
	```
	
	The import block should look like this:
	
	```nix
	imports = [
    ./all.nix
    ./hardware-configuration.nix
	]
	```
	
3. Make it your own.
	```shell
	cd ~/nixos-config/
	rm -rf .git/
	git init
	
	# Set your own remote
	```

## Backup & Restore
 - Todo document. Consist of using borgmatic to create encrypted off-site backups.
