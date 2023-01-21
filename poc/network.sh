#!/bin/sh
# device init
ifconfig epair0 create up
ifconfig epair1 create up
ifconfig bridge0 create up

# name setting
ifconfig epair0a name veth0
ifconfig epair0b name veth0-bridge
ifconfig epair1a name veth1-bridge
ifconfig epair1b name veth1

ifconfig bridge0 addm veth0-bridge addm veth1-bridge

# address setting
ifconfig veth0 inet 10.0.1.1/24 
#ifconfig veth0-bridge 10.0.1.2/24
#ifconfig veth1-bridge 10.0.1.3/24

