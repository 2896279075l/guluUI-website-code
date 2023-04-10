rm -rf dist
yarn build
cd dist
git init
git add .
git commit -m "update"
git branch -M master
git remote add origin git@github.com:2896279075l/guluUI-website.git
git push -f -u origin master
cd -