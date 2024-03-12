## Delete previous ./prod 
cd ..
rm -rf prod
mkdir prod

## Init git in ./prod
cd prod
git init
git remote add origin git@github.com-{username}:{username}/{repo_name}-prod.git

## Build ./frontend
cd .. 
cd frontend 
npm run build 
rsync -av --delete dist/ ../../prod

## Push prod 
cd ..
cd ..
cd prod
git add --all
git commit -m "Deploy build `date`"
git push origin main --force


## Reset
cd ..
cd dev