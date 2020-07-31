# zpral
A Z-Shell simple "framework". (really more of an organizer) . For beginners and experienced users alike!

## Details
ZPral is a Z-Shell (zsh) organizing / framework tool. It comes with:
* Detailed instructions on creating basic plugins and themes

  * In each respective folders' Readme.txt file (excepting aliases--that's covered in the plugin Readme), there are instructions on how to create a file of each respective type, and how to enable it. 

* A folder for aliases, plugins, and themes respectively
* A simple built in .txt file management plugin
* A simple theme
* A small base footprint (~35 kb)

#### What ZPral *doesn't* do
ZPral does not:
* Touch any zsh-related files besides .zshrc
* Claim to be perfect
* Replace any big frameworks

#### What ZPral *does* do
ZPral does:
* Give a helping hand to the zsh beginner
* Act as a basic organization tool
* Demonstrate to new users how powerful zsh can be

### Compatibility
ZPral is compatible and tested with Macos Catalina 10.15.5, and should work on Linux as well. 

## Installation instructions
Until alternative methods are solidified, the zsh-praline folder should be dragged to your **desktop**.

Then in your terminal, paste this command:

`zsh ~/Desktop/zsh-praline/zpral_installer_script.zsh`

And you're good! Feel free to mess around with the code -- you can even delete the installation script after it's installed (though I don't recommend it)

## Uninstallation instructions
Sorry to see you go! There's not much in the way of installation, but if you want to get rid of the organization, run this script:

#### **IMPORTANT**
if you want to keep any of your aliases, functions, or otherwise from the .zshrc file, move them to another file **before** uninstalling.

`zsh ~/.zsh-praline/zpral_uninstaller_script.zsh`

This will bring all of your old stuff back to your .zshrc file and delete what is currently in there. The remaining folders and files will be relocated to your Desktop, the same way they were installed.
