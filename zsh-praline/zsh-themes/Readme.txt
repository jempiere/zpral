Attention: This folder is for Z-shell theme files.
—————————————————————

Hey user! Welcome to the zsh theme Readme file. Here’s some information on zsh-themes:

Included theme: prc.zsh
Information:
	* Shows username (Blue) (Bold)
	* Shows time (Blue)
	* Shows errors (Red)
	* Shows 2 directories (Dark Grey)




Instructions for enabling themes:

	1. place insert-your-theme-here.zsh into this folder
	2. open ~/.zshrc
	3. type the following under "#themes":
		
		source ~/.zsh-themes/insert-your-theme-here.zsh

	4. Save the document
	5. Return to your terminal
	6. type the following:

		source ~/.zshrc


—————————————————————


Instructions for writing themes:

	1. Look up the escape codes for text modification for zsh, as a reference
	2. In insert-your-custom-theme-here.zsh, follow this format:

		#Comment
		PROMPT=""
		RPROMPT=""

	3. Fill those quotation marks with whatever you want*
		*Read below for the explanation of the included theme, prc.zsh




—————————————————————
—————————————————————

Line for line explanation of prc.zsh
****Disclaimer: This is a guide for a beginner and walks through the code itself.


1: #Comment

A good practice when coding in an unfamiliar setup or with an unfamiliar language is to write down
what constitutes a comment. That’s all this is — a line that the terminal will ignore while reading it’s
setup notation.



2: Blank line

Separating code by blank lines makes it easier for people to read!


— The prompts will be taken through in pieces  —   

3: PROMPT
	

	First block:


	a. Note that this is all in single quotes. That’s important! It’s how the terminal knows that these 
	are for formatting, and not mostly gibberish.

	b. See the repeated use of the "%" sign; in Z-shell scripts, this tells the machine that the
	next character means something.

	c. ' %B '  is the start of a sequence of characters to be put into Boldface. ' %b '  ends the sequence.

	d. ' %F ’ is the start of an ANSI color sequence. the following brackets hold a color code 
	(namely 020 — A dark blue) and the sequence closes with ' %f '.

	e. ' %n ' simply means to pull the name of the user and place it in that location.


	Second block:


	a. ' %F ' notice that this is the same as earlier; now we are using color code 016, which is black.

	b. ' %2~ ' this chunk pulls the current directory in form of "~". ~ represents the user’s home directory, 
	and the 2 says that the terminal should only show 2 directories at a time.

		b1. the straight brackets surrounding this piece of code are completely aesthetic, and will wrap around
		the path in our prompt

	Prompt so far:		

		my-username  [ ~ ]   ❯

4. RPROMPT

	
	First block:


	a. ' %F ' you should recognize by now that this is a color tag. This turns the desired text blue!

	b. ' %t  ' this command substitutes much like the %n command. It get’s the current time from the 
	computer and displays it in 12 hr AM/PM format!

	c. ' %(?.. ' this block is something like an if-statement. It reads that " If there is an error while running, 
	I will substitute whatever the next text is."

	d. '  ' \  '  '  this is a group of escape characters. Because of the parenthesis in the last portion, we need 
	to make a string-within-a-string if we want to format any text.

	e. ' %F ' Coloring again! This time red.
	
	f. ' ! ! ! ' Three exclamation marks. These are the text that pops up when I have an error!

	g. '  ' ' ) '  '  This is the closing of the string-within-a-string, the closing of the escape sequence, the closing of the 
	parenthesis, and the closing of the big string.

	Completed Command Prompt:

		my-username  [ ~ ]   ❯																12:01PM


And that’s it!




