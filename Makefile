
.PHONY: all
all: init
	cqfd

.PHONY: init
init:
	git submodule update --init --force --recursive
	cqfd init

.PHONY: clean
clean:
	@docker images \
		| awk '/cqfd_kin_sfl_neovim/ {print $$3}' \
		| xargs -n1 docker rmi
