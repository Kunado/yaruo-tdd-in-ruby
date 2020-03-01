#!/bin/bash
docker run --rm -it -v $PWD:/usr/src/app yaruo-tdd-in-ruby bundle exec rspec $@
