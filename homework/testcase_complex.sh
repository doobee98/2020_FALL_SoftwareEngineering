## combined TEST
./tree / . -L 4 -a -f -p -u -g -s -D -F -t -x -l -P "[^0]*.*" -I "\\a?[0-9]*?" -o result
./tree -P "*.s??" -I "\\[t\\-" -C -A -q -H htmltest -L 2 -R
./tree . ./test_dir/lnk1 ./unexisted_directory -n -d -S -N -R