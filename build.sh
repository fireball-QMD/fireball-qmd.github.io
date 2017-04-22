
cp index i

ele='H He Li Be B C N O F Ne Na Mg Al Si P S Cl Ar K Ca Sc Ti V Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr Rb Sr Y Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I Xe Cs Ba L Hf Ta W Re Os Ir Pt Au Hg Tl Pb Bi Po At Rn Fr Ra  La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Ac Th Pa U Np Pu Am Cm Bk Cf Es Fm Md No Lr'
for i in $ele
do
  if test -d $i
  then
    echo $i
    sed "s/>${i}</>\<A\ HREF\=\"$i\/index.html\"\>$i\<\/A\> \</g" i > i2
    mv i2 i
    cd $i
    ../in_element.sh $i
    cd ..
  fi
done
mv i index.html

head -$(($(grep -n entry-title index | grep Fireball | cut -d':' -f1)-1)) index > members.html
head -$(($(grep -n entry-title index | grep Fireball | cut -d':' -f1)-1)) index > fireballamber.html


cat members >> members.html
cat fireballamber >> fireballamber.html
