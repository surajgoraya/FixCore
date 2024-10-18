run:
	source ./FixCore.sh

update:
	git pull

all:
	git pull && sh source ./FixCore.sh