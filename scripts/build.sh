#!/bin/bash

set -ex

version=$(jq -r .package.version src-tauri/tauri.conf.json)

echo "Downloading CyberChef"

rm -rf dist
mkdir -p dist
cd dist
curl -L https://github.com/gchq/CyberChef/releases/download/v${version}/CyberChef_v${version}.zip > cyberchef.zip
unzip cyberchef.zip
rm cyberchef.zip
mv *.html index.html
