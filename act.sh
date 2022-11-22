#!/bin/bash

act \
--secret-file act.secrets \
--env-file act.env \
--eventpath act.json \
--workflows .github/workflows/tf.yml \
-P ubuntu-latest=catthehacker/ubuntu:full-latest