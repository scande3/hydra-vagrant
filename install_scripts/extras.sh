#!/bin/sh

# FITS
SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi


cd $DOWNLOAD_DIR
DOWNLOAD_URL="https://github.com/fcrepo4/fcrepo4/releases/download/fcrepo-4.6.0/fcrepo-webapp-4.6.0-jetty-console.jar"
curl $DOWNLOAD_URL -o fcrepo-webapp-4.6.0-jetty-console.jar
chmod a+x fcrepo-webapp-4.6.0-jetty-console.jar
DOWNLOAD_URL="https://github.com/fcrepo4/fcrepo4/releases/download/fcrepo-4.6.0/fcrepo-webapp-4.6.0-jetty-console.jar.md5"
curl $DOWNLOAD_URL -o fcrepo-webapp-4.6.0-jetty-console.jar.md5
chmod a+x fcrepo-webapp-4.6.0-jetty-console.jar.md5
DOWNLOAD_URL="http://id.loc.gov/static/data/authoritiessubjects.nt.skos.gz"
curl $DOWNLOAD_URL -o authoritiessubjects.nt.skos.gz
