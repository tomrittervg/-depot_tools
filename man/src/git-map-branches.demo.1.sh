#!/usr/bin/env bash
set -vx
. demo_repo.sh

silent git branch no_upstream HEAD~

run git map-branches
run git map-branches -v

