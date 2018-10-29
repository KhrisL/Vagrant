#!/bin/sh
# Setup gui mode for centos vm

echo "Installing gui desktop packages"
yum groupinstall -y 'gnome desktop'
yum install -y 'xorg*'
yum remove -y initial-setup initial-setup-gui

echo "Switch to the gui target"
systemctl isolate graphical.target
systemctl set-default graphical.target
