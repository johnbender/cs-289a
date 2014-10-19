build(){
  filename=`echo $1 | sed 's/\..*//'`
	pdflatex -interaction=nonstopmode $1
  if ! [ -z "$2" ]; then
	  bibtex $filename.aux
	  pdflatex -interaction=nonstopmode $1
	  pdflatex -interaction=nonstopmode $1
  fi
}

# build once by default
build $1 $2
