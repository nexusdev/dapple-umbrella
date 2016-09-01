update:
	git submodule foreach git pull

install:
	# git submodule foreach npm i
	cd dapple-core; npm link ../dapple-chain
	cd dapple-script; npm link ../dapple-core; npm link ../dapple-wevm
	cd dapple-test; npm link ../dapple-core
	cd dapple; npm link ../dapple-core; npm link ../dapple-chain; npm link ../dapple-script; npm link ../dapple-test; npm link ../dapple-pkg
