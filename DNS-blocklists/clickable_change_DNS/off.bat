netsh interface ipv4 set dnsserver "NETWORK_NAME" static 192.168.1.1 primary

TIMEOUT	600

netsh interface ipv4 set dnsserver "NETWORK_NAME" static DNS-SERVER primary
