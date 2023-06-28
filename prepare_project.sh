#!/bin/sh

for file in $(find ./configs -type f); do
  echo "$file"
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

# TODO: config husky
