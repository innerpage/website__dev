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

## Add SEO metadata frontend/src/pages/index.astro

- This section needs work
- Add `<title></title>`
- Add `<meta name="description">`

## Edit ./server/package.json

- Change `name`
- Change `description`

## Edit server/index.ts

- Change server `PORT`
