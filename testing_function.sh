## specifications TEST
./tree --help
./tree --version

## error argument TEST
./tree -m

## printit() TEST
./tree -A -q
./tree -S -N
./tree -H htmltest -R

## complexed options TEST
./tree . ./test_dir -a -f -p -u -g -s -D -F -t -x -l

## patmatch() TEST
./tree -P "*.sh" -I "[0-9]*\\h?"

## big size directory (lflag?) TEST
./tree / -i -d -L 3 -o result

## other options TEST
./tree -n -C -l
