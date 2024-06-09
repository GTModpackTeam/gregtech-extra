#!/usr/bin/env python3
# Remove lwjgl3 not supported mods

## Import library
import json


## Run main function
projectIDs = [
    870276, # ConfigAnytime
    624967, # RenderLib
    409087, # Entity Culling
    408853, # Particle Culling
    419286  # MixinBooter
]

# Read manifest.json
with open('./manifest.json', 'r') as f:
    data = json.load(f)

# Remove lwjgl3 not supported mods
data['files'] = [item for item in data['files'] if item['projectID'] not in projectIDs]

# Write manifest.json
with open('./cmmc/manifest.json', 'w') as f:
    json.dump(data, f, indent=2)
