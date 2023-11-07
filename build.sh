# Cleanup previous prod
cd ..
rm -rf prod
mkdir prod

# Init Git prod
cd prod
git init
git remote add origin git@github.com-projckt:projckt/starter_website-prod.git

# Pre-build site-server
cd ..
cd dev
cd site-server 

# Build site-server
npm run build
rsync -av dest/ ../../prod
cp {.gitignore,package.json} ../../prod
# rm -rf dest

# Pre-build site-frontend
cd .. 
cd site-frontend 

# Build site-frontend
npm run build 
rsync -av --delete dist/ ../../prod/www
# rm -rf dist

# Push prod 
cd ..
cd ..
cd prod
git add --all
git commit -m "Deploy build `date`"
git push origin main --force

# Install modules in prod
npm install 

# Reset
cd ..
cd dev