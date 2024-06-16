## Delete old files
rm -rf ../prod
mkdir ../prod

## Build frontend
npm run --prefix frontend build 
rsync -av --delete frontend/dist/ ../prod

## Init git in ../prod
git init ../prod
git -C ../prod remote add origin git@github.com-innerpage:innerpage/website__prod.git

## Push ..prod 
git -C ../prod add --all
git -C ../prod commit -m "Deploy build `date`"
git -C ../prod push origin main --force
