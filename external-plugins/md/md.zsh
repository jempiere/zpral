#md aliases


#unused
function contains {
  string="$1"
  substring="$2"
  if test "${string#*$substring}" != "$string"; then
    return 0
  else
    return 1
  fi
}

function md {
  #Open
  if [[ "$1" = "-o" ]]; then
    touch "$2.md"
    open "$2.md"
    echo "Opened: $2.md"
  fi
  #Delete
  if [[ "$1" = "-rm" ]]; then
    if test -e "$2.md"; then
      rm "$2.md"
      echo "deleted: $2.md"
    fi
  fi
  #Read
  if [[ "$1" = "-ds" ]]; then
    echo "No support for Markdown; No-format reading file $2.md"
    more "$2.md"
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