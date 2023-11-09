## Clone repo

- Clone starter_website-dev.git into the project directory as ./dev
  `git clone git@github.com-projckt:projckt/starter_website-dev.git dev`

## Enter ./dev (cloned repo)

- cd dev

## Edit git remote

- `git remote set-url origin git@github.com-{username}:{username}/{repo_name}-dev.git`

## Install dependencies (`./frontend` and `./server`)

- `./init.sh`

## Edit production remote in ./build.sh

- e.g. `git@github.com-{username}:{username}/{repo_name}-prod.git`

## Edit ./frontend/package.json

- Edit `name`
- Edit `description`

## Add SEO metadata frontend/src/pages/index.astro

- This section needs work
- Add `<title></title>`
- Add `<meta name="description">`

## Edit ./server/package.json

- Edit `name`
- Edit `description`

## Edit server/index.ts

- Edit server `PORT`
