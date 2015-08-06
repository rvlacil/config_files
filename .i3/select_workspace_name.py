#!/usr/bin/python

from get_workspaces import get_workspaces_list
import subprocess

dmenu = subprocess.Popen(['dmenu', '-p', 'Workspaces'], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
selected = dmenu.communicate('\n'.join(get_workspaces_list()))

subprocess.call(['i3-msg', 'workspace', selected[0].rstrip()], stdout=subprocess.PIPE)
