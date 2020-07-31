Attention: This folder is for Z-shell plugin files.
—————————————————————

Hey user! Welcome to the zsh plugin Readme file. Here’s some information on zsh-plugins:

Included plugin: txt.zsh
Information:
	* Adds the "txt" function
	* options to display (-d) , remove (-r) , and open/create (-o) text files
	* does not override any preexisting commands
	* does not override any Oh-My-Zsh! plugins





Instructions for enabling plugins:

	1. place insert-your-plugin-here.zsh into this folder
	2. open ~/.zshrc
	3. type the following under "#plugins":
		
		source ~/.zsh-plugins/path-to-your-plugin-here.zsh

	4. Save the document
	5. Return to your terminal
	6. type the following:

		source ~/.zshrc

—————————————————————


Instructions for writing plugins:

	If you have any experience with a programming language, other sh shells (like baSH) or
	even just a logical mindset, you will have no trouble writing plugins.
	
	Plugins contain aliases, functions, and sometimes even themes that are tacked on to a
	separate file, and are NOT machine dependent.

	1. Learn how to write a function*
		*There is a detailed guide below in writing a basic function, but please look online
		  for better resources

	2. In insert-your-custom-plugin-here.zsh, follow this format:

		#Comment

		#Functions
		function myFunct () {
		#Some code
		#Some code
		}
		
		#Aliases
		alias someCode="echo do something"

	3.  Save the file.

—————————————————————
—————————————————————

Line for line explanation of a custom plugin
****Disclaimer: This will walk through one simple function with user input and one alias.
			    This is a guide for beginners and will not be exhaustive in the slightest.

1: #Comment

A good practice when coding in an unfamiliar setup or with an unfamiliar language is to write down
what constitutes a comment. That’s all this is — a line that the terminal will ignore while reading it’s
setup notation.

2: Blank line

Separating code by blank lines makes it easier for people to read!

3: Naming

Separate your code via comments the way you would separate documents into folders.

4: function

	a. Now we will begin to code. Copy and paste the format beneath point #2 (without indents) into your document.
	b. replace the word "myFunct" with your name of choice. It should not have any spaces. For this demonstration,
		we will be using "foobar".
	
		When you use this function, this will be the name you reference it by.
	c. Replace the first comment "Some code" with the following:
		
		echo "foo $1 bar"

	    This is what the terminal will do: It will first call the "echo" function (which is a close relative of "print" statements 
	    in many languages). The String it will print to the Terminal Standard Output is the word  foo  , followed by the 
	    first argument input into the function, ending with the word "bar". 

	d. Test
		* Comment out the line beginning with "alias someCode" with a hashmark, and save your file.
		* follow the instructions above for enabling plugins.
		* Test your plugin. Write the name of the function, followed by a space, followed by your first argument and see
		   what happens! 

5: alias

	a. An alias is simply another way to refer to something. In this case, we will create an alias that refreshes and clears
	    the terminal face for us, instead of typing "source ~/.zshrc; clear".
	b. First, uncomment out the line you commented out before (starts with "alias someCode"). 
	c. Next, rename the alias by replacing the word "someCode" with "refresh".
	d. Without leaving ANY whitespace on either side of the equals sign, move into the quotation marks.
	e. write the following in place of "echo do something":

		source ~/.zshrc; clear
	     
	     This assigns the name "refresh" to that command, so we can type "refresh" instead.
	f. Test
		* Save your plugin file, and if you’ve already followed the enabling instructions, manually refresh your
		   terminal by writing "source ~/.zshrc".
		* Run a few commands, then once there is a few lines now visible on screen, run your "refresh" command.
		* If everything went to plan, it worked! Now you’ll never have to type "source ~/.zshrc" ever again! (unless
		   you forget your alias)
		
