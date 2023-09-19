******
Create
******

We can get the code from:

.. code-block:: bash
  
  git clone https://github.com/fireball-QMD/create/
  
  
We compile to obtain create.x.

.. code-block:: bash

  cd create/cprogs/
  make
  cd ..


We download the wave functions and the pseudopotentials.

.. code-block:: bash

  wget https://fireball-qmd.github.io/Si/Si_01.tar.gz
  
  tar -xvf Si_01.tar.gz 
  
  ls 
  cinput  coutput  cprogs  create.com  create.input ...
  
Move the files inside cinput.

.. code-block:: bash

  mv Si_01/* cinput/
  mv cinput/Si.input . 
  
  ls cinput
  014_560.na1  014_560.wf1  014_640.na0  014_640.na2 ...

Check the input files.

.. code-block:: bash

  cat Si.input 
  Si 
  014
  28.09  
  cinput/014.pp
  cinput/014_640.na0  
  2
  0
  1.00
  5.60
  cinput/014_560.wf1
  cinput/014_560.na1
  1
  3.00
  6.40
  cinput/014_640.wf2
  cinput/014_640.na2 
  1
  0.5
  0.25 0.25 0.25 0.25 0.25 0.25

We only want to obtain the interactions of one element

.. code-block:: bash

  $ cat create.input 
    1                             nspec=Number of species
    Si.input
    
We run create

.. code-block:: bash

  $ ./create.com 
  
  
And we obtain the interactions.

.. code-block:: bash

  $ ls coutput/
  bcna_01_00.14.14.14.dat  den3_02_01.14.14.14.dat  ...