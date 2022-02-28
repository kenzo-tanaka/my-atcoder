#!/bin/sh

md_list_format='"- [ ] https://atcoder.jp/contests/" + (.contest_id|tostring) + "/tasks/" +  .problem_id'

echo -e "## 昨日間違えた問題👨‍💻\n"
ruby -r './request_atcoder' -e 'RequestAtcoder.yesterday_report' | jq -r ".[] | .result = $md_list_format | .result"

echo -e "\n\n"

echo -e "## 7日前に間違えた問題👨‍💻\n"
ruby -r './request_atcoder' -e 'RequestAtcoder.one_week_ago_report' | jq -r ".[] | .result = $md_list_format | .result"

echo -e "\n\n"

echo -e "## 30日前に間違えた問題👨‍💻\n"
ruby -r './request_atcoder' -e 'RequestAtcoder.one_month_ago_report' | jq -r ".[] | .result = $md_list_format | .result"

echo -e "\n\n"
