# kpxc-ovpn
Simple script that integrates KeePassXC and OpenVPN, so you can store your OpenVPN credentials in a KeePassXC vault, access and use them with just a single command.

## Prerequisites
- openvpn
- keepassxc

Ubuntu:  
`sudo apt install openvpn keepassxc`  

## Installation
`sudo make install`  
If you just want to generate the .conf file, use `sudo make configure`

NOTE: After installing or generating the .conf file, you'll need to fill it with the required variables, the .conf file can be found by default at `/etc/default/kpxc-ovpn.conf`

>OVPNFILE=\<Path to your .ovpn file (Absolute path only, include file extension)\>  
>VAULT=\<Path to your KeePassXC vault file (Absolute path only, include file extension)\>   
>KEY=\<Name of the credentials for your OpenVPN authentication inside your KeePassXC vault\>   

## Uninstallation
`sudo make uninstall` (will also delete the .conf file)

## Usage
After filling the .conf file, just run `kpxc-ovpn`

## Inspired by
[1passConnector](https://github.com/lffspaniol/1passConnector)
