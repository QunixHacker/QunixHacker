## install
```sh
# 1.安装zsh 
yum install -y zsh

# 2.安装oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# 3.配置oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# 4.下载插件
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 5.配置.zshrc
# ZSH_THEME="agnoster"
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

```

## links
1. https://ohmyz.sh/
2. https://linuxhint.com/enable-syntax-highlighting-zsh/
3. https://linuxhint.com/use-zsh-auto-suggestions/