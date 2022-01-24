###
```sh
# 1. 
yum install -y zsh
# 2. 
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# 3. 
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# 4.
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 5. 
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

```

1. https://ohmyz.sh/
2. https://linuxhint.com/enable-syntax-highlighting-zsh/
3. https://linuxhint.com/use-zsh-auto-suggestions/