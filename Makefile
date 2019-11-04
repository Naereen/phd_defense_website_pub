# Makefile to send these slides to Zam
SHELL=/usr/bin/env /bin/bash

all:	index send
index:	README.md
	pandoc --metadata pagetitle="Défense de thèse de Lilian Besson - Mercredi 20 novembre 2019" -standalone -t html -o index.html README.md

send:	send_zamok
send_zamok:
	CP --exclude=.git ./ ${Szam}phd/defense/
