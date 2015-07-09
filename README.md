dotfiles

# setup

```bash
cd ~
git clone このリポジトリ
cd dotfiles
./setup.sh
# vim BundleInstall NeoBundleInstallした後
cd .vim/bundle/vimproc
make -f 環境に対応したmakefile
```

## .gitconfig

```bash
[core]
  excludesfile = ~/.gitignore_global
```

# using external module

- the_silver_searcher

