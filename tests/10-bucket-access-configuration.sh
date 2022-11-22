#!/usr/bin/env bats

setup() {
  aws s3api get-public-access-block --bucket ci-test-bucket-opsguru-987654321 > public-access-block.json
}

@test "Verify that bucket exists .." {
  run aws s3 ls s3://ci-test-bucket-opsguru-987654321
  echo "output: $output"
  [ "$status" -eq 0 ]
}

@test "Verify that PublicAccessBlockConfiguration.BlockPublicAcls is enabled .." {
  run bash -c "jq -r .PublicAccessBlockConfiguration.BlockPublicAcls public-access-block.json | grep true"
  echo "output: $output"
  [ "$status" -eq 0 ]
}

@test "Verify that PublicAccessBlockConfiguration.IgnorePublicAcls is enabled .." {
  run bash -c "jq -r .PublicAccessBlockConfiguration.IgnorePublicAcls public-access-block.json | grep true"
  echo "output: $output"
  [ "$status" -eq 0 ]
}

@test "Verify that PublicAccessBlockConfiguration.BlockPublicPolicy is enabled .." {
  run bash -c "jq -r .PublicAccessBlockConfiguration.BlockPublicPolicy public-access-block.json | grep true"
  echo "output: $output"
  [ "$status" -eq 0 ]
}

@test "Verify that PublicAccessBlockConfiguration.RestrictPublicBuckets is enabled .." {
  run bash -c "jq -r .PublicAccessBlockConfiguration.RestrictPublicBuckets public-access-block.json | grep true"
  echo "output: $output"
  [ "$status" -eq 0 ]
}

teardown() {
  rm -f public-access-block.json
}