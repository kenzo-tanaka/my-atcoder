#!/bin/sh

md_list_format='"https://atcoder.jp/contests/" + (.contest_id|tostring) + "/tasks/" +  .problem_id'
ruby -r './request_atcoder' -e 'RequestAtcoder.yesterday_report' | jq -r ".[] | .result = $md_list_format | .result"
