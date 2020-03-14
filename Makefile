monitor-mode: monitor-mode.sh
	cp monitor-mode.sh builds/monitor-mode && chmod +x builds/monitor-mode

laptop-mode: laptop-mode.sh
	cp laptop-mode.sh builds/laptop-mode && chmod +x builds/laptop-mode

.PHONY: clean install uninstall

clean:
	rm -f builds/*

install:
	cp builds/monitor-mode /usr/bin/monitor-mode && cp builds/laptop-mode /usr/bin/laptop-mode

uninstall:
	rm -f /usr/bin/monitor-mode
