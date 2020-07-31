#Start of Praline Plugin (core for cool stuff)

##Text command extensions for the z-shell terminal
function txt {
  #Open
if [[ "$1" = "-o" ]]; then
touch "$2.txt"
open "$2.txt"
echo "Opened: $2.txt"
fi
  #Delete
if [[ "$1" = "-rm" ]]; then
  if test -e "$2.txt"; then
    rm "$2.txt"
    echo "Deleted: $2.txt"
    fi
fi
  #Read
if [[ "$1" = "-ds" ]]; then
  more "$2.txt"
  fi
  #Help
if [[ "$1" = "help" ]]; then
echo "-o   : open/create secondArg.txt"
echo "-ds   : display contents of secondArg.txt"
echo "-rm   : remove secondArg.txt"
echo "help : show this dialog"
  fi
  #Err
if [[ "$1" != "help" && "$1" != "-ds" && "$1" != "-o" && "$1" != "-rm" ]]; then
echo "Unexpected Argument: \"$1\". Should be \"-o\", \"-d\", \"-r\, or \"help\""
  fi
}
