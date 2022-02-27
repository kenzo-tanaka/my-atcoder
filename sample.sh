#!/bin/sh

md_list_format='"https://atcoder.jp/contests/" + (.contest_id|tostring) + "/tasks/" +  .problem_id'
ruby request_atcoder.rb | jq -r ".[] | .result = $md_list_format | .result"
