#!/usr/bin/env bats

@test "Cleanup the bucket .." {
  run aws s3 rm s3://ci-test-bucket-opsguru-987654321 --recursive
  echo "output: $output"
  [ "$status" -eq 0 ]
}
