#!/bin/bash

# You can use the GitHub CLI to check the rulesets for a repository. This script checks the rulesets for the main, uat, and dev branches of the aeonpaymenttech/ms-customer repository.
# eg: for ms-customer:
gh api "repos/aeonpaymenttech/ms-customer/rules/branches/main" --jq '.[] | {type: .type}' 2>&1 | sort | uniq -c  
gh api "repos/aeonpaymenttech/ms-customer/rules/branches/uat" --jq '.[] | {type: .type}' 2>&1 | sort | uniq -c  
gh api "repos/aeonpaymenttech/ms-customer/rules/branches/dev" --jq '.[] | {type: .type}' 2>&1 | sort | uniq -c  