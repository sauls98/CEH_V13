#!/bin/bash
echo "CEH Quiz - http://localhost:8080"
open http://localhost:8080 2>/dev/null || xdg-open http://localhost:8080 &
python3 -m http.server 8080
