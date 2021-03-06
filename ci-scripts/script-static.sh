#!/bin/bash
set -ev

# Run unit tests
node_modules/.bin/gulp karma:ci

# Validate manifest XML
node_modules/.bin/gulp validate-xml

# Run linting tasks
node_modules/.bin/gulp eslint:unit-tests
node_modules/.bin/gulp eslint:config
node_modules/.bin/gulp eslint:gulp-tasks

# todo: enable typescript linting once errors fixed
# node_modules/.bin/gulp tslint
