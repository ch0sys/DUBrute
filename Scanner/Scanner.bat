@echo off
for /l %%%x in (1,1,2) do (
start "rdp" /HIGH nmap -n -Pn -p T:3389 -T5 --script rdp.nse -iR 0
)
exit