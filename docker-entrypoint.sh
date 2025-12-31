#!/bin/bash

export API_KEY=$(cat $API_KEY_FILE)

$@
