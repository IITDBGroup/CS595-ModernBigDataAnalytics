############################################################
# SERVER INFORMATION
include ./server.mk

############################################################
# SEMESTER
SEMESTER=2021-fall

all: makeindex
	$(RSYNC) $(RSYNC_OPTS) ./mainpage/index_updated.html ${USER}@${SERVER}:${SERVER_DIR}/index.html

makeindex:
	cat ./mainpage/index.html | sed -e "s/SEMESTER/${SEMESTER}/g" > ./mainpage/index_updated.html

.PHONY: all makeindex
