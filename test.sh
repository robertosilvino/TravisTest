#!/usr/bin/env bash

#export TRAVIS_BRANCH=v1.0_tcc_staging
export TRAVIS_BRANCH=v1.0_tcc_development
export REGEX_PUSH_BRANCH='^([0-9A-Za-z][0-9A-Za-z.-]+)_([0-9A-Za-z.-]+)_(development|staging|master)$'
export REGEX_DEPLOY_BRANCH='^([0-9A-Za-z][0-9A-Za-z.-]+)_([0-9A-Za-z.-]+)_(staging|master)$'

if [[ ${TRAVIS_BRANCH} =~ ${REGEX_DEPLOY_BRANCH} ]]; then echo "Deploy OK"; fi
echo ${BASH_REMATCH[0]};
if [[ ${TRAVIS_BRANCH} =~ ${REGEX_PUSH_BRANCH} ]]; then echo "Push OK"; fi
echo ${BASH_REMATCH[0]};
echo ${BASH_REMATCH[1]};
echo ${BASH_REMATCH[2]};
echo ${BASH_REMATCH[3]};
# travis ci changed
