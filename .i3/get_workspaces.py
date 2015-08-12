#!/usr/bin/python

import subprocess
import json
import collections

def get_workspaces():
    output = subprocess.check_output(['i3-msg', '-t', 'get_workspaces'])
    return json.loads(output)

def get_workspaces_list():
    workspaces = get_workspaces()
    return [x['name'] for x in workspaces] 

def get_workspaces_per_output_list():
    workspaces = get_workspaces()
    return [(x['name'], x['output']) for x in workspaces]

def get_workspaces_on_current_output():
    workspaces = get_workspaces()
    outputs = collections.defaultdict(list)
    current = ''

    for w in workspaces:
        outputs[w['output']].append(w['name'])
        if w['focused'] == True:
           current = w['output'] 

    return outputs.get(current, [])

def get_first_free_number_workspace():
    workspaces = get_workspaces_list()
    numbers = set()

    for w in workspaces:
        if w.isdigit():
            numbers.add(int(w))

    i = 1
    while i in numbers:
        i += 1
    return str(i)

