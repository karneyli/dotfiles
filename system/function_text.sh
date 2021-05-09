#!/bin/bash

duplines() {
  sort $1 | uniq -d
}

uniqlines() {
  sort $1 | uniq -u
}
