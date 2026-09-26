#!/bin/bash
read -p "What's the url? " ZOOM_URL
read -p "What's the join time? " ZOOM_JOIN_TIME
read -p "What's the end time? " ZOOM_END_TIME
read -p "What days: MON, TUE, WED, THU, FRI, SAT, SUN " DAYS
read -p "Enable Scheduling? "  SCHEDULE_ENABLED

cat > zoomConfig.conf <<EOF
ZOOM_URL="$ZOOM_URL"
ZOOM_JOIN_TIME="$ZOOM_JOIN_TIME"
ZOOM_END_TIME="$ZOOM_END_TIME"
DAYS="$DAYS"
SCHEDULE_ENABLED="$SCHEDULE_ENABLED"
EOF

echo ""
echo "Configuration saved."
