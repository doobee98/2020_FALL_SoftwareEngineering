# ## specifications TEST
# ./tree --help
# ./tree --version

# ## error argument TEST
# ./tree -m

# ## printit() TEST
# ./tree -A -q
# ./tree -S -N
# ./tree -H htmltest -R

# ## complexed options TEST
# ./tree . ./test_dir -a -f -p -u -g -s -D -F -t -x -l

# ## patmatch() TEST
# ./tree -P "*.sh" -I "[0-9]*\\h?"

# ## big size directory (lflag?) TEST
# ./tree / -i -d -L 3 -o result

# ## other options TEST
# ./tree -n -C -l


## (LINE 138-238)   default flags     (-P, -I is tested below)        
./tree -a -l -f -p -u -g -s -D -F -t -x -n
./tree -i -d -C -L 3 -o result 
## (LINE 863)       with printit() branch test
./tree . -A -q
./tree . -S -N
./tree . -L 1 -H htmltest -R

## (LINE 138-238)   flag error case
./tree -L
./tree -L aa
./tree --help
./tree --version
./tree -m

## (LINE 241-243)   xrealloc array dirname
./tree . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

## (LINE 250)       filename error exploit
./tree -o ..

## (LINE 260)       meaningless Rflag
./tree -R

## (LINE 287)       no directory
./tree -H htmltest ./unexisted_directory

## (LINE 384)       -H condition with Level
./tree -H htmltest -L 1

## (LINE 394)       no directory
./tree ./unexisted_directory

## (LINE 407-504)   00Tree.html options
# ./tree . -i -p -u -g -s -D -f -L 1 -H htmltest -R

## (LINE 631)       long current directory name
cd ./test_dir/longlonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglong
../../tree . -H htmltest
cd ../..

## (LINE 651-693)   pattern matching
# ./tree -P "*.sh" -I "[0-9]*\\h?"
./tree -P "*.s??"
./tree -P "\\b\\"
./tree -P "[\\"
./tree -P "[t-"
./tree -P "he[l][l-l][^l-\\l]" -I "hell"


