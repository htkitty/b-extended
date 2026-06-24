git clone https://github.com/aap/b

cd b
sed -i 's|/tmp/|'"$TMPDIR"'/|g' b.c
clang b.c amd64/out.c -I amd64 -o bc
mv bc ~
cd ~
./bc
