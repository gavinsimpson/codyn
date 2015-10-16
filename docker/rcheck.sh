#/bin/sh
# A shell wrapper to prepare and execute an R CMD check
srcdir=$(ls)
R CMD build $srcdir
pkg=$(ls *.gz)
R CMD check --as-cran $pkg
rm $pkg
echo "DONE"
