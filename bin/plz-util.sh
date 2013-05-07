#!/bin/bash

function die { echo >&2 $*; exit 1; }
function error { die plz: error: $*; }
function trace { [[ -z $PLZ_TRACE ]] || echo plz: trace: $* >&2; }
function trace-do { trace $(shell-quote "$@"); "$@"; }
function shell-quote { git rev-parse --sq-quote "${@}"; }
