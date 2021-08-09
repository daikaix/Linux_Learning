# sed.txt
I love python
I love PYTHON

sed 'p' sed.txt

sed -n 'p' sed.txt

sed '/python/p' sed.txt

sed -n '/python/p' sed.txt

sed -n -e '/python/p' -e '/PYTHON/p' sed.txt

edit.sed => /python/p
sed -n -f edit.sed sed.txt

sed -n -r '/python|PYTHON/p' sed.txt

sed -n 's/love/like/g;p' sed.txt
sed -i 's/love/like/g' sed.txt