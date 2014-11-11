build(){
  filename=`basename $1 | sed 's/\..*//'`
	pdflatex -interaction=nonstopmode $1
  if ! [ -z "$2" ]; then
	  bibtex $filename.aux
	  pdflatex -interaction=nonstopmode $1 > /dev/null
	  pdflatex -interaction=nonstopmode $1 > /dev/null
  fi
}

# build once by default
build $1 $2
