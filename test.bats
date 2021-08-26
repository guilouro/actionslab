#!/usr/bin/env bats

load '/opt/bats-support/load.bash'
load '/opt/bats-assert/load.bash'

@test "addition using bc" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

@test "should contain words in file" {
  grep -q "github action lab" ./README.md
  [ $? -eq 0 ]
  assert_success
}
