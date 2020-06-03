#!/bin/bash
SYLLABUS_DIR="/Users/lord_pretzel/Documents/IIT/Teaching/CS595 - Topics in Modern Big Data Analytics/2020-Summer/Syllabus"
pushd "${SYLLABUS_DIR}"
make
popd
cp "${SYLLABUSDIR}/syllabus.pdf" "/Users/lord_pretzel/Documents/IIT/Webpage/webgit/courses/cs595-bigdata/assets/syllabus.pdf"
