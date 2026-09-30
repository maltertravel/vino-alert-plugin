#!/usr/bin/env bash
# Build the ChatGPT plugin ZIP for platform.openai.com/plugins. The manifest sits
# at the ZIP root, so zip the folder's contents, not the folder.
set -euo pipefail
cd "$(dirname "$0")/chatgpt"
mkdir -p ../dist
rm -f ../dist/vino-alert-chatgpt.zip
zip -r -X ../dist/vino-alert-chatgpt.zip . -x ".*" -x "*/.*"
echo "built dist/vino-alert-chatgpt.zip"
