RSYNC=rsync
RSYNC_OPTS=-rv
SERVER=gauss.cs.iit.edu
USER=glavic
CURL=curl
SERVER_DIR=/home/glavic/public_html/cs595/2021-fall
SERVER_FULL=${USER}@${SERVER}:${SERVER_DIR}
pushd $(dirname "${0}") > /dev/null
SCRIPTDIR=$(pwd -L)
popd > /dev/null
DEPLOYDIR="${SCRIPTDIR}/../_site/"

echo "BUILD WITH RIGHT PREFIX"
pushd ${SCRIPTDIR}/..
bundle exec jekyll clean
bundle exec jekyll build
echo "DEPLOY ... ${DEPLOYDIR} TO ${SERVER_FULL}"
${RSYNC} ${RSYNC_OPTS} "${DEPLOYDIR}" "${SERVER_FULL}"
popd
