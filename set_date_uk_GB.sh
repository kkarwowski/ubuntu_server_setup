#!/bin/bash
# Unlinking current time zone and setting up London time zone
sudo unlink /etc/localtime
sudo ln -s /usr/share/zoneinfo/Europe/London /etc/localtime
