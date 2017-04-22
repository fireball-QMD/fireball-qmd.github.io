
echo '<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>'  > index.html

echo $1 >> index.html

echo '</TITLE>

<style>
body {
font-family:"Open Sans",Arial,"Helvetica Neue",Helvetica,sans-serif;
background-color: #edede1;
color: #767676;
line-height: 1.6;
}
</style>
</HEAD>

<BODY>
' >> index.html

for i in *tar.gz 
do 
tar -xvf $i
echo '<H2><A HREF="'$i  >> index.html
echo '">' >> index.html
echo ${i::-7} >> index.html
echo '</A>
</H2>
<ul>
' >> index.html

n=$(wc -l  ${i::-7}/info | cut -d' ' -f1)
for((j=1;j<=$n;j++))
do 
l=$(head -$j ${i::-7}/info | tail -1)
if [ ${#l} -gt 0 ]
then
 echo '<li>' $l' </li>' >>  index.html
fi
done

rm -fr ${i::-7}

if test -d  ${i::-7}.more
then
echo '<li><A HREF="'${i::-7}'.more/index.html' >> index.html
echo '">read more</A></li>' >> index.html

fi
echo '</ul>'>>index.html
done 


# i=H_02.tar.gz ; tar -xvf $i ; vi ${i::-7}/info ; rm -fr $i ; tar -cf ${i::-7}.tar ${i::-7} ; gzip ${i::-7}.tar ; rm -fr ${i::-7}
