#!/usr/bin/env bats

@test "addition using bc" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

@test "should contain words in file" {
  cat ./README.md 2>&1 | grep "github action lab"
  assert_output --partial "github action lab"
}
