#!/bin/sh

set -x

eval `ssh-agent -s`

exec $@