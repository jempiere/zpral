#Simple Installer Script

mv ~/Desktop/zsh-praline ~/.zsh-praline
mv ~/.zsh-praline/zsh-aliases ~/.zsh-praline/.zsh-aliases
mv ~/.zsh-praline/zsh-plugins ~/.zsh-praline/.zsh-plugins
mv ~/.zsh-praline/zsh-themes ~/.zsh-praline/.zsh-themes

FILE=~/.zshrc

touch ~/.zshrc
pbcopy < "$FILE"
# shellcheck disable=SC2164 
cd ~/.zsh-praline/.zsh-aliases
mkdir "old aliases"
# shellcheck disable=SC2164
cd ~/.zsh-praline/.zsh-aliases/old\ aliases
touch oldZSHRC.zsh
pbpaste > oldZSHRC.zsh

echo -n "" > ~/.zshrc

{
echo "#This is a Comment \\n"
echo "#ALIASES (~/.zsh-aliases) \\n \\n"
echo "#Your old aliases \\n"
echo "source ~/.zsh-praline/.zsh-aliases/old\\ aliases"
echo "\\n \\n"
echo "#THEMES (~/.zsh-themes) \\n"
echo "source ~/.zsh-themes/prc.zsh" 
echo "\\n \\n"
echo "#PLUGINS (~/.zsh-plugins) \\n"
echo "source ~/.zsh-plugins/txt.zsh"
echo -n "\\n \\n \\n"
echo "alias rf=\"source ~/.zshrc\""
echo "alias zsh_config=\"open ~/.zshrc\""
}  >> ~/.zshrc
clear
echo "your old aliases are still active. read more in ~/.zshrc"