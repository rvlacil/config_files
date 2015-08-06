#!/usr/bin/python

from get_workspaces import get_first_free_number_workspace
import subprocess

subprocess.call(['i3-msg', 'workspace', get_first_free_number_workspace()], stdout=subprocess.PIPE)


