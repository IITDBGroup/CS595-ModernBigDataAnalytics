RSYNC=rsync
RSYNC_OPTS=-rv
SERVER=gauss.cs.iit.edu
USER=glavic
CURL=curl
SERVER_DIR=/home/glavic/public_html/cs595/
SERVER_FULL=${USER}@${SERVER}:${SERVER_DIR}
SCRIPTDIR=$(dirname "${BASH_SOURCE}")
DEPLOYDIR="${SCRIPTDIR}/../_site/"

echo "COPY SYLLABUS"
if [[ -f ../copySyllabus.sh ]]; then
    ../copySyllabus.sh
fi

echo "BUILD WITH RIGHT PREFIX"
bundle exec jekyll clean
bundle exec jekyll build
echo "DEPLOY ... ${DEPLOYDIR} TO ${SERVER_FULL}"
${RSYNC} ${RSYNC_OPTS} "${DEPLOYDIR}" "${SERVER_FULL}"
