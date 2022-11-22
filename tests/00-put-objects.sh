#!/usr/bin/env bats

setup() {
  echo $RANDOM > object.txt
}

@test "Verify that we can upload to bucket .." {
  run aws s3 cp object.txt s3://ci-test-bucket-opsguru-987654321
  echo "output: $output"
  [ "$status" -eq 0 ]
}

teardown() {
  rm -f object.txt
}