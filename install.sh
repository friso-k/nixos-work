# Path to the NixOS configuration file

# Path to the NixOS configuration file
config_file="/etc/nixos/configuration.nix"

# Add an import statement at the beginning
import_statement="import ./my_custom_module.nix"

# Use sed to insert the import statement at the beginning of the file
sed -i "1i $import_statement" "$config_file"

