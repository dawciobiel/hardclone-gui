#!/usr/bin/env bash

# Activate Python virtual environment
source ./.venv/bin/activate

# Enable optional debug settings for Qt
# export QT_DEBUG_PLUGINS=1

# Run the application
echo "Launching application..."
sudo -E python3 ./hgui.py
exit_code=$?

# Disable debug setting for Qt
# unset QT_QPA_PLATFORM_PLUGIN_PATH

# Always deactivate the virtual environment
deactivate
echo "Virtual environment deactivated."

# Exit with the same status code as the application
exit $exit_code

