#!/bin/sh

clear

# If `npm` is not installed suggest user to install Node.js via NVM
if [ ! -$(command -v npm) ]; then
  tput setaf 1 && tput bold && echo "==================================" && tput sgr0
  echo
  tput bold && echo "Please install Node.js first: " && tput sgr0
  echo "https://github.com/nvm-sh/nvm#installing-and-updating"
  echo
  tput setaf 1 && tput bold && echo "==================================" && tput sgr0
  exit 1
fi

# If there is no package.json run `npm init`
if [ ! -e "./package.json" ]; then
  tput setaf 2 && tput bold && echo ">================================== Initial project configuration" && tput sgr0
  echo

  npm init

  # If `npm init` was aborted we cancel execution too
  if [ ! -e "./package.json" ]; then
    exit 1
  fi

  # Create `src` folder with entry `index.ts` file
  mkdir -p src
  touch src/index.ts && echo "console.log('Hello world!')" >./src/index.ts
  npm pkg set 'scripts.start'='tsc && node ./dist/index.js'

  echo
  tput setaf 2 && tput bold && echo "==================================> DONE" && tput reset
  echo
fi

clear

# Install necessary dev-dependencies
tput setaf 2 && tput bold && echo ">================================== Dev-dependencies installation" && tput sgr0
echo

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

echo
tput setaf 2 && tput bold && echo "==================================> DONE" && tput sgr0
echo

clear

tput setaf 2 && tput bold && echo ">================================== Fetching config files" && tput sgr0
echo

configs_filenames="tsconfig.json tsconfig.build.json .eslintrc.js .prettierrc"

for filename in $configs_filenames; do
  curl -O "https://raw.githubusercontent.com/egor7orlov/ts-project-bootstrap/main/configs/$filename"
done

echo
tput setaf 2 && tput bold && echo "==================================> DONE" && tput sgr0
echo

clear

# TODO: add `src` folder with index.ts file and add script `start` which compiles and runs this file
# TODO: add Jest configuration an npm script for running tests
# TODO: configure Husky

tput setaf 2 && tput bold && echo "==================================" && tput sgr0
echo
tput bold && echo "You are all set up! Try running \`npm run start\`" && tput sgr0
echo
tput setaf 2 && tput bold && echo "==================================" && tput sgr0
exit 1
