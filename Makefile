run:
	source ./FixCore.sh

update:
	git pull

all:
	git pull && sh ./FixCore.sh