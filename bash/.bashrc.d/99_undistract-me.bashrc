#!/usr/bin/env bash
#
# Copyright (c) 2008-2012 undistract-me developers. See LICENSE for details.
#
# Check for interactive bash and that we haven't already been sourced.
export LONG_RUNNING_COMMAND_TIMEOUT=3

[ -z "$BASH_VERSION" -o -z "$PS1" -o -n "$last_command_started_cache" ] && return

. /usr/share/undistract-me/long-running.bash
notify_when_long_running_commands_finish_install
