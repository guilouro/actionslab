#!/usr/bin/env bats

@test "addition using bc" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

@test "should contain words in file" {
  cat ./README.md
  assert_output --partial "github action lab"
}
