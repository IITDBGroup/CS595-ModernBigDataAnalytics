RSYNC=rsync
RSYNC_OPTS=-rv
SERVER=gauss.cs.iit.edu
USER=glavic
CURL=curl
SERVER_DIR=/home/glavic/public_html/cs595/
SERVER_FULL=${USER}@${SERVER}:${SERVER_DIR}
SCRIPTDIR=$(dirname "${BASH_SOURCE}")
DEPLOYDIR="${SCRIPTDIR}/../_site/"

echo "BUILD WITH RIGHT PREFIX"
jekyll clean
jekyll build
echo "DEPLOY ... ${DEPLOYDIR} TO ${SERVER_FULL}"
${RSYNC} ${RSYNC_OPTS} "${DEPLOYDIR}" "${SERVER_FULL}"
