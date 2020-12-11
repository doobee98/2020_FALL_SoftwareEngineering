## (LINE 138-238)   default flags     (-P, -I is tested below)        
./tree -a -l -f -p -u -g -s -D -F -t -x -n
./tree -i -d -C -L 3 -o result 
## (LINE 863)       with printit() branch test
./tree . -A -q
./tree . -S -N
./tree . -L 1 -R -H htmltest

## (LINE 138-238)   flag error case
./tree -L
./tree -L aa
./tree -L 2147483649    ## error output
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

## (LINE 607)       virtual memory exhaust
mkdir error_dir
cd error_dir
rm -rf ../error_dir
../tree -H htmltest
cd ..
rm -rf error_dir

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


