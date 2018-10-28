#!/usr/bin/env bash

export TRAVIS_BRANCH=v1.0_tcc_staging
export REGEX_PUSH_BRANCH='staging|production'
export REGEX_DEPLOY_BRANCH='staging|production'

if [[ ${TRAVIS_BRANCH} =~ ${REGEX_DEPLOY_BRANCH} ]]; then echo "Deploy OK"; fi
if [[ ${TRAVIS_BRANCH} =~ ${REGEX_PUSH_BRANCH} ]]; then echo "Push OK"; fi

# travis ci changed
