#!/usr/bin/python

from get_workspaces import get_workspaces_list
import subprocess
import sys

offset = int(sys.argv[1])
workspaces = get_workspaces_list()

if offset < len(workspaces):
    subprocess.call(['i3-msg', 'workspace', get_workspaces_list()[offset]], stdout=subprocess.PIPE)
