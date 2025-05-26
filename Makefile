
.PHONY: all
all: init
	cqfd

.PHONY: init
init:
	cqfd init

.PHONY: clean
clean:
	@docker images \
		| awk '/cqfd_kin_sfl_neovim/ {print $$3}' \
		| xargs -n1 docker rmi &> /dev/null || echo 'no containers to remove'
