## Build ./frontend
cd frontend
npm run build 
rsync -av --delete dist/ ../../prod

# Init git in ./prod
cd ..
cd ..
cd prod
git init
git remote add origin git@github.com-sensefolks:sensefolks/website-prod.git

## Push prod 
git add --all
git commit -m "Deploy build `date`"
git push origin main --force

## Reset
cd ..
cd dev