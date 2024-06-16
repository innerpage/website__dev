## Delete old files
rm -rf ../prod
mkdir ../prod

## Build frontend
npm run --prefix frontend build 
rsync -av --delete frontend/dist/ ../prod

## Init git in ../prod
git init ../prod
# git -C ../prod remote add origin git@github.com-{username}:{username}/{repo_name}__prod.git
git -C ../prod remote add origin git@github.com-projckt:projckt/starter_website-prod.git

## Push ..prod 
git -C ../prod add --all
git -C ../prod commit -m "Deploy build `date`"
git -C ../prod push origin main --force
