# fireball-qmd.github.io
git clone https://github.com/fireball-QMD/fireball-qmd.github.io

https://fireball-qmd.github.io/





Update the database:

    git clone https://github.com/fireball-QMD/fireball-qmd.github.io

    if exist the folder of the element (for example C):
      cd C
      cp -r C_XX.tar.gz #XX is the next index
      #put the wavefunctions (*.wf) and the potentials (*.na) inside of C_XX.tar.gz
      #the file info will be show in the web page
      cd ..
    ./build.sh #to redo the page
    #if you want show more information then
    cd C
    cp -r path/C_XX.more .  #index.html will be load as normal html page
    fi


    if the folder of the element doesn't exist (for exameple C)
      mkdir C
      cp -r C_01.tar.gz C/
    fi
