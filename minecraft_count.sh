#!/bin/sh
# https://github.com/LhAlant/MinecraftSLP

minecraft_status 127.0.0.1 25565 | jq '.players.online'


