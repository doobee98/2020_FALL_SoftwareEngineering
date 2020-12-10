## combined TEST
./tree / . -L 4 -a -f -p -u -g -s -D -F -t -x -l -P "*.*" -I "\\a?[0-9]*" -o result
./tree -P "*.sh" -I "[0-9]*\\h?"