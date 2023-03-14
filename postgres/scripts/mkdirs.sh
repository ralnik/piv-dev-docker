#!/bin/bash
PS_DIR="/opt/postgres/"
DUMP_DIR="/opt/postgres/dump/"
TABLESPACE_DIR="/opt/postgres/tablespace/"

if [-d "PS_DIR" ]; then
  echo "$PS_DIR already exist"
else
  mkdir -v $PS_DIR
fi

if [-d "$DUMP_DIR" ]; then
  rm -v -r $DUMP_DIR
else
  mkdir -v /opt/postgres/dump
fi

if [-d "$TABLESPACE_DIR" ]; then
  echo "$TABLESPACE_DIR already exist"
else
  mkdir -v /opt/postgres/tablespace
fi

echo "Creating directories"

mkdir -v /opt/postgres/tablespace/aisdata
mkdir -v /opt/postgres/tablespace/aisindex
mkdir -v /opt/postgres/tablespace/aisdata/tab_large
mkdir -v /opt/postgres/tablespace/aisdata/tab_medium
mkdir -v /opt/postgres/tablespace/aisdata/tab_small
mkdir -v /opt/postgres/tablespace/aisdata/tab_lob
mkdir -v /opt/postgres/tablespace/aisdata/jn
mkdir -v /opt/postgres/tablespace/aisindex/indlr
mkdir -v /opt/postgres/tablespace/aisindex/indexs
mkdir -v /opt/postgres/tablespace/aisindex/indpuk
mkdir -v /opt/postgres/tablespace/aisdata/tab_applob
mkdir -v /opt/postgres/tablespace/aisdata/tab_arch
