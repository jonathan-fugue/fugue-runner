#!/bin/bash

body='{
    "request": {
        "message": "This build was triggered using curl",
        "branch": "master",
        "config": {
            "merge_mode": "deep_merge",
            "env": {
                "matrix": [
                    "ENV=\"test\""
                ]
            }
        }
    }
}'

curl -s -X POST \
 -H "Content-Type: application/json" \
 -H "Accept: application/json" \
 -H "Travis-API-Version: 3" \
 -H "Authorization: token REPLACEME!!!!" \
 -d "$body" \
 https://api.travis-ci.org/repo/jonathan-fugue%2Ffugue-runner/requests
