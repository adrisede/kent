SUBDIRS = 

all: ${SUBDIRS:%=%.suball}

FILES = gvfToBed8Attrs.pl isca.tables buildISCA.csh validateISCA.sh checkISCA.sh iscaWrapper.sh

%.suball:
	${MAKE} -C $* all

install: check-prefix installSub
	cp gvfToBed8Attrs.pl isca.tables buildISCA.csh validateISCA.sh checkISCA.sh iscaWrapper.sh ${PREFIX}

installSub: ${SUBDIRS:%=%.install}

%.install:
	${MAKE} -C $* install

validate: check-prefix
	$(foreach i, $(FILES), echo $(i); diff ${PREFIX}/$(i) $(i);)

make-prefix: check-prefix
	mkdir -p ${PREFIX}

check-prefix:
	@test -n "${PREFIX}" || (echo "must specify PREFIX= to install"; exit 1)
