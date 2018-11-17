stegosaurus() {
  node /usr/lib/node_modules/stegosaurus/stegosaurus.js $1 $2 $3 $4 $5 $6 $7 $8 $9
}

open() {
	if [[ -d $1 ]]; then
    	echo "Running nautilus..."
    	nautilus $1 &>/dev/null
	elif [[ -f $1 ]]; then
      FILE=$1
	    echo "Opening $1"
      xdg-open "$FILE"
	else
	    echo "Error: $1 is not valid"
	    echo "Input must be file or directory"
	fi
}

venv() {
	ARGUMENT=$1
	if [[ $ARGUMENT = "-h" ]]; then
		echo "venv -h: show this help page"
		echo "venv add [environment name]: add a new environment"
		echo "venv activate [environment name]: activate the environment"
		return
	fi
	NAME=$2
	if [[ $ARGUMENT = "add" ]]; then
		virtualenv -p /usr/bin/python3 ~/.virtualenvs/$NAME
	elif [[ $ARGUMENT = "activate" ]]; then
		source ~/.virtualenvs/$NAME/bin/activate
	else
		echo "Error: $1 is not valid"
		echo "Argument must be add or activate"
	fi
}

build() {
  FILE=$1
  if [[ -d $FILE ]]; then
    echo $FILE must be a file
  else
    NAME=$(basename -- "$FILE")
    EXTENSION="${NAME##*.}"
    PREFIX="${NAME%.*}"

    if [[ $EXTENSION=="cpp" ]]; then
      g++ $NAME -o $PREFIX
      ./$PREFIX
      rm $PREFIX

    elif [[ $EXTENSION=="c" ]]; then
      gcc $NAME -o $PREFIX
      ./$PREFIX
      rm $PREFIX

    else
      echo $FILE should be C or C++ file
    fi
  fi
}

mkfolder() {
	mkdir $1
	cd $1
}

hack() {
  /usr/bin/google-chrome-stable --http-proxy="127.0.0.1:8080" --https-proxy="127.0.0.1:8080" --proxy-server="127.0.0.1:8080" %U
}
