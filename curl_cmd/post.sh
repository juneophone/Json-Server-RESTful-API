#!/bin/bash
MESSAGE='{"text":"Hi JW","flag":true}'
API_URL=http://192.168.43.16:8080/enote

CURL -s -X POST \
				-H 'Content-Type: application/json;charset=utf-8' \
				-d "$MESSAGE" \
				$API_URL