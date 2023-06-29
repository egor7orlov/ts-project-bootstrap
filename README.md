# TypeScript project bootstrap

If you found yourself in situation where you've just executed `npm init` command but don't know what to do next with
your TypeScript-powered project; or you haven't even done anything yet except created an empty folder for your future
revolutionary project — just execute the next command:

```shell
curl -fsSL https://raw.githubusercontent.com/egor7orlov/ts-project-bootstrap/main/prepare_project.sh | sh
```

### What does this script do?

- Adds usable **TypeScript** configs (`tsconfig.json` and `tsconfig.build.json`)
- Adds **ESLint** and **Prettier** configs with all messy rules described
- Installs necessary dev-dependencies _(if you didn't execute `npm init` it will do it for you, so you can run this
  script even in an empty folder)_
- Creates `src/index.ts` file and adds `start` script in `package.json`

### TODO:

- Add automated **Jest** configuration
- Add automated **Husky** configuration
