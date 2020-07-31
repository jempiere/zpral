#Simple Uninstaller Script

mv ~/.zsh-praline ~/Dekstop/zsh-praline

FILE=~/Desktop/zsh-praline/.zsh-aliases/old\ aliases/oldZSHRC.zsh

pbcopy < "$FILE"
cd ~; 
touch ~/.zshrc

echo "\\n \\n \\n \\n \\n " >> ~/.zshrc
pbpaste > ~/.zshrc

echo "Your old commands have been moved back into ~/.zshrc, and everything else is on your Desktop."

echo "thank you for using zpral! If you run the installer script again, it will reinstall zpral fresh."

echo "github repo: "