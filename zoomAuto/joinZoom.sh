#!/bin/bash

source ./zoomConfig.conf
#start "" "$ZOOM_URL"

MEETING_ID=$(echo "$ZOOM_URL" | sed -n 's/.*\/j\/\([0-9]*\).*/\1/p')
PASSCODE=$(echo "$ZOOM_URL" | sed -n 's/.*[?&]pwd=\([^&*\).*/\1/p')

start "" "zoommtg://zoom.us/join?action=join&confno=$MEETING_ID"
