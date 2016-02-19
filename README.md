# dotfiles (Bhupendra Atre)

installations on osx

- install homebrew
- install nodejs at ~/DEV/nodejs
- Then
```
brew install wget git the_silver_searcher vim
brew install mongodb --with-openssl
mkdir -p ~/DEV/mongodb-data/logs ~/DEV/mongodb-data/db
npm install -g eslint babel-eslint eslint-plugin-react jsonlint n supervisor
```

finally
```
cd ~/DEV
git clone https://github.com/atreb/dotfiles.git
cd dotfiles
./setup.sh
```
