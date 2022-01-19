## 各种源加速

### 一、Mac/Homebrew

``` Shell
# 1. 替换brew.git
cd $(brew --repo)
git remote set-url origin git://mirrors.ustc.edu.cn/brew.git

# 2. 替换homebrew-core 源
cd $(brew --repo)/Library/Taps/homebrew/homebrew-core
git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git

# 3. brew 更新
brew update

# 4. 设置binary镜像
# 4.1 Bash
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile
# 4.2 如果是Zsh
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc
```