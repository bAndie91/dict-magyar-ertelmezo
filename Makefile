
BASENAME = barczi-orszagh-magyar-ertelmezo


all: $(BASENAME).dict.dz $(BASENAME).index
.PHONY: all

$(BASENAME).dict.dz: %.dict.dz: %.dict
	dictzip --keep $<

$(BASENAME).dict $(BASENAME).index &: headers ertelmezo.txt
	cat $^ | dictfmt -f --utf8 -s "Bárczi–Országh Magyar Értelmező Szótár" -u "https://ertelmezo.oszk.hu/" $(BASENAME)


clean:
	rm $(BASENAME).dict $(BASENAME).dict.dz $(BASENAME).index
.PHONY: clean


PREFIX = /usr/share/dictd

install: $(PREFIX)/$(BASENAME).dict.dz $(PREFIX)/$(BASENAME).index
	dictdconfig -w
.PHONY: install

restart-service:
	service dictd restart
.PHONY: restart-service

$(PREFIX)/$(BASENAME).dict.dz $(PREFIX)/$(BASENAME).index: $(PREFIX)/%: %
	install --compare -m 0644 $< $@
