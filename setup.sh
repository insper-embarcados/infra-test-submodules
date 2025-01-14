#!/usr/bin/env sh

python -m pip install --upgrade pip
pip install pytest toml
wget -q -O /usr/local/bin/wokwi-cli https://github.com/rafaelcorsi/wokwi-cli/releases/latest/download/wokwi-cli-linuxstatic-x64
chmod +x /usr/local/bin/wokwi-cli

WOKWI_CLI_TOKEN="${{ secrets.WOKWI_CLI_TOKEN }}"
echo "WOKWI_CLI_TOKEN=${WOKWI_CLI_TOKEN}" >> $GITHUB_ENV
echo $WOKWI_CLI_TOKEN

