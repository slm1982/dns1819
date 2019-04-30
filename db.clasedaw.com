;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.clasedaw.com. sergioluna.clasedaw.com. (
			      2019042901	; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.clasedaw.com.
@	IN	MX	1	mail.clasedaw.com.
ns1	IN	A	192.168.1.151
mail	IN	A	192.168.1.152
www		CNAME	ns1
ftp	IN	A	192.168.1.153
sergio	IN	A	192.168.1.150
router	IN	A	192.168.1.1
