cat top.txt > humans.txt;

echo '/* TEAM */' >> humans.txt;
echo '' >> humans.txt;

ruby parse.rb >> humans.txt;
echo '' >> humans.txt;

cat bottom.txt >> humans.txt;
