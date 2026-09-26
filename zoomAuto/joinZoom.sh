#!/bin/bash

source ./zoomConfig.conf
#start "" "$ZOOM_URL"

MEETING_ID=$(echo "$ZOOM_URL" | sed -n 's/.*\/j\/\([0-9]*\).*/\1/p')
# Get zoom URL, find meeting id using sed then store that id 

# -n dont print yet
# s/FIND/REPLACE/
# .* ~= https://us04web.zoom.us
# \/j\/ ~= look for /j/ in the zoom url
# [0-9]* match zero or more digits -->  \([0-9]*\) Using sed find that and store it 
# .* match everything after meeting ID
# \1  return what was found by \(...\)  so -->  \([0-9]*\) ---> 123456789
# /p  tell sed to print the result, which is the meeting id



PASSCODE=$(echo "$ZOOM_URL" | sed -n 's/.*[?&]pwd=\([^&]*\).*/\1/p')
# [^&] match either ? or &
# \([^&]*\) get passcode


start "" "zoommtg://zoom.us/join?action=join&confno=$MEETING_ID"
