#!/usr/bin/env bash

findThisFile() {
  find . -iregex $1 -type $2 -print
}

