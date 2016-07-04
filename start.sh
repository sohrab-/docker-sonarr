#!/bin/bash

echo "Starting sonarr..."
exec mono /opt/NzbDrone/NzbDrone.exe --no-browser -data=/volumes/config
