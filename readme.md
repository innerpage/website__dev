## Clone repo

- `git clone git@github.com-projckt:projckt/starter_website-dev.git dev`
- `cd dev`

## Edit remote

- `git remote set-url origin git@github.com-{username}:{username}/{repo_name}-dev.git`

## Install dependencies

- `./init.sh`

## Edit ./build.sh

- Change production repo to `git@github.com-{username}:{username}/{repo_name}-prod.git`

## Edit ./frontend/package.json

- Change `name`
- Change `description`

## Edit <meta> and <title>

- Change `<meta name="description">` in ./frontend/src/layouts/Layout.astro
- Change `title` prop of `Layout` in pages accordingly

## Edit ./server/package.json

- Change `name`
- Change `description`

## Edit ./server/index.ts

- Change server `PORT`
