#!/bin/bash
# Clone or Pull a new version of plsql-md-doc
# Install or update it with NPM
# Note required if box already has plsql-md-doc installed in a different directory.
cd "${BASH_SOURCE%/*}" || exit 1;
./git_clone_or_pull.sh https://github.com/OraOpenSource/plsql-md-doc plsql-md-doc || exit 1;
cd plsql-md-doc || exit 1;
npm install || echo 'failed to npm install, FYI - node.js is required'; exit 1;