.PHONY: get-fennel build run all

FENNEL_URL = https://fennel-lang.org/downloads/fennel-1.6.0

all: get-fennel 

get-fennel:
	@mkdir -p $(BUILD_DIR)
	@if [ ! -f $(FENNEL_BIN) ]; then \
		curl -o fennel.lua $(FENNEL_URL); \
	else \
		echo "fennel library is already downloaded"; \
	fi

clean-loaded:
	rm -rf ${HOME}/.local/share/fenvim
