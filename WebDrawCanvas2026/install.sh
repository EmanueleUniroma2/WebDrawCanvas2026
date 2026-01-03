#!/bin/bash
set -e

# ==========================================
# CONFIGURATION
# ==========================================
export BINARY_NAME="WebDrawCanvas2026"        
export DOTNET_VERSION="net8.0"          
export SKIP_GIT_SYNC=false

for arg in "$@"; do
  if [ "$arg" == "--no-commit" ]; then
    export SKIP_GIT_SYNC=true
  fi
done

curl -n -s https://raw.githubusercontent.com/EmanueleUniroma2/MyDeployToolkit/refs/heads/main/Scripts/install.sh | bash
