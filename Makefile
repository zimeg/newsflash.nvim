.PHONY: test
test:
	nvim --headless --noplugin -es -u test/newsflash_spec.lua
