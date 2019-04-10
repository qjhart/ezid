#! /bin/make

README.pod: ezid
	podselect $< > $@
