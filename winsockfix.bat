@echo off

ipconfig /release


ipconfig /renew


ipconfig /flushdns


ipconfig /registerdns


netsh dump


nbtstat -R


netsh int ip reset reset.log


netsh winsock reset
