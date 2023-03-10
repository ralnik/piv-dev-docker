#!/bin/bash
DATA_DIR="data/"
DUMP_DIR="dump/"
TABLESPACE_DIR="tablespace/"

echo "deleting directories if exists"
if [ -d "$DATA_DIR" ]; then
  rm -v -r $DATA_DIR
else
  mkdir -v ./data
fi

if [-d "$DUMP_DIR" ]; then
  rm -v -r $DUMP_DIR
else
  mkdir -v ./dump
fi

if [-d "$TABLESPACE_DIR" ]; then
  rm -v -r $TABLESPACE_DIR
else
  mkdir -v ./tablespace
fi

echo "Creating directory"

mkdir -v ./tablespace/aisdata
mkdir -v ./tablespace/aisindex
mkdir -v ./tablespace/aisdata/tab_large
mkdir -v ./tablespace/aisdata/tab_medium
mkdir -v ./tablespace/aisdata/tab_small
mkdir -v ./tablespace/aisdata/tab_lob
mkdir -v ./tablespace/aisdata/jn
mkdir -v ./tablespace/aisindex/indlr
mkdir -v ./tablespace/aisindex/indexs
mkdir -v ./tablespace/aisindex/indpuk
mkdir -v ./tablespace/aisdata/tab_applob
mkdir -v ./tablespace/aisdata/tab_arch
