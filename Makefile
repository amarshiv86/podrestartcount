.PHONY: setup
setup:
	@which python3
	python3 -m pip install virtualenv
	python3 -m virtualenv podrestartcount-env 
	./podrestartcount-env/bin/pip install -r requirements.txt

.PHONY: install
install:
	@echo  "/Users/amar.singh/script/restarting-pods-report\ copy/podrestartcount-env/bin/python3 /Users/amar.singh/script/restarting-pods-report\ copy/src/podrestartcount.py \$$@" > podrestartcount
	@chmod +x podrestartcount
	@cp podrestartcount /usr/local/bin/
	@echo "\nYou can add podrestartcount to your path running"
	@echo "$$ export PATH="\$${PATH}:\$${HOME}/bin""
