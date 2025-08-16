#!/usr/bin/fish

# Activate Python virtual environment
source ./.venv/bin/activate.fish

# Enable optional debug settings for Qt
# set -x QT_DEBUG_PLUGINS 1

# Run the application
echo "Launching application..."
if not sudo -E python3 ./hgui.py
    echo "Application exited with an error."
end

# Disable debug setting for Qt
# set -e QT_QPA_PLATFORM_PLUGIN_PATH

# Always deactivate the virtual environment
deactivate
echo "Virtual environment deactivated."







