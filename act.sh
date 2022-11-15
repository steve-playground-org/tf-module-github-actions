#!/bin/bash

act \
--secret-file act.secrets \
--env-file act.env \
-P ubuntu-latest=catthehacker/ubuntu:full-latest