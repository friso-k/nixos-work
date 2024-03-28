# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Exiting..."
    exit 1
fi

script_path=$(realpath "$0")
script_dir=$(dirname $script_path)

ln -s $script_dir /etc/nixos/config2
