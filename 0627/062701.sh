cd
mkdir dir1
cd dir1
mkdir dir2
cd
cd dir1/dir2
mkdir dir3
touch file0{1..5}
cd dir3
touch file0{6..9}
touch file10
cd ../..
tree
cd
rm -r dir1
