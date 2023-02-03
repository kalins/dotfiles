#!/bin/bash
isMuted=$(pacmd list-sources | grep 'muted' | grep yes)
if [ "$isMuted" ]; then
    echo ''
else
    echo ''
fi
