#!/usr/bin/env bats

@test "Verify that bucket exists .." {
  run aws s3 ls
  echo "output: $output"
  [ "$status" -eq 0 ]
}
