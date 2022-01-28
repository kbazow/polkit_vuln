# polkit_vuln
PolKit Vulnerability Attack and Patch Scripts

if no patches are available Ub18.04_20.04 (they are i believe), we can always remove the SUID-bit from pkexec as a temporary solution...so for example....

$ chmod 0755 /usr/bin/pkexec

Its not remotly exploitable either but if someone can login as any unprivileged usr, the vuln can be exploited to gain root access.

It also leave ttraces of it in thye logs so we can look for those as well. "The value for the SHELL variable was not found the /etc/shells file"

the attack script is compiled in C and there is basiaclly just one though some are more complex they all do the same thing at the end of the day. Bae of these would eb PwnKit.c (get the pun?)

I have this script if we need to test or look for it or the evidence i described further up.


The value for the SHELL variable was not found the /etc/shells file



 I just compiled the binary and the library separately due to some ubuntu machines not having gcc or a version of polkit at the right level and archived it. It has a script that i compiled in C that will 
use the base methods of attack that pwnkit takes atvantage of to test a machine. It will run the exploit and if you get a shell, well its vulnerable, so im trying to add a function that will fix it by either 
updating policykit to a unaffected version or chmod 0755 /usr/bin/pkexec.
