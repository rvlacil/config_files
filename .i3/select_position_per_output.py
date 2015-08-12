#!/usr/bin/python

from get_workspaces import get_workspaces_on_current_output
import subprocess
import sys

offset = int(sys.argv[1])

workspaces = get_workspaces_on_current_output()
real_offset = min(offset, len(workspaces) - 1)

subprocess.call(['i3-msg', 'workspace', workspaces[real_offset]], stdout=subprocess.PIPE)
