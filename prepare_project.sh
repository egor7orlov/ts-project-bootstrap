#!/bin/sh

configs_filenames="tsconfig.json tsconfig.build.json .eslintrc.js .prettierrc"

for filename in $configs_filenames; do
  curl -O "https://raw.githubusercontent.com/egor7orlov/ts-project-bootstrap/main/configs/$filename"
done

npm install -D @types/node \
  @types/node \
  @types/jest \
  @typescript-eslint/eslint-plugin \
  @typescript-eslint/parser \
  eslint \
  eslint-config-prettier \
  eslint-plugin-prettier \
  eslint-plugin-simple-import-sort \
  husky \
  jest \
  prettier \
  ts-jest \
  ts-loader \
  ts-node \
  tsconfig-paths \
  typescript

# TODO: add npm script for running jest
# TODO: config husky
