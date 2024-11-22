PARAMETERS
==========

fireball.in parameters reference

OPTION
------

| **fdatalocation**
|   Path to Fdata. Default is *'./Fdata'*.

| **basisfile**
|   Default is *'input.bas'*.

| **lvsfile**
|   Default is *'input.lvs'*.

| **kptpreference**
|   Default is *'input.kpts'*.

| **acfile**
|   Default is *'ac.dat'*.

| **xvfile**
|   Default is *'xv.dat'*.

| **iharris**

| **idogs**

| **ihubbard**

| **ihorsfield**

| **imcweda**

| **iks**

| **igsn**

| **iquench**
|   Allows for free dynamics or quenching.
|   **= 0** Free dynamics.
|   **= -1** Dynamical quenching.

| **icluster**
|   **= 0** Periodic calculation.
|   **= 1**

| **qstate**

| **dt**
|   Time step in fs. Default is 0.5.

| **nstepi**
|   Continue the simulation from the time step *nstepi*.

| **nstepf**
|   Final time step of the simulation. The number of time steps performed in the
|   simulation is *nstepf* - *nstepi*.

| **T_initial**
|   Initial "temperature" of the system in Kelvin. This option gives random
|   initial velocities to the atoms, according to a Boltzmann distribution for
|   that temperature.

| **T_final**

| **iensemble**
|   **= 0** NVE ensemble. Use this option for doiung quenching (*iquench = -1*).
|   **= 1** Use this option for constant temperature simulations.

| **rescal**
|   Recalculates the *.bas*, *.lvs* and *.kpts* input files according to a
|   scaling factor. The coordinates of the *.bas* and *.lvs* files are
|   multiplied by this factor, while the coordinates for the kpoints of the
|   *.kpts* file are divided by this factor.

| **iqout**
|   Charge projection method. Default is
|   **= 1** Use
|   **= 2** Use
|   **= 4** Use Mulliken-Dipole charge projection
|   **= 7** Use Mulliken-Dipole-Preserving charge projection

| **ifixcharge**
|   **= 0**
|   **= 1** Use this option to fix the charges (no selfconsistency). The charges
|    are read from the CHARGES file, generated from a previous selfconsistent
|    calculation. This option is necessary when you are doing a band-structure
|    calculation.

| **ifixneigh**

| **iumbrella**

| **ibarrier**

| **ivdw**

| **iimage**

| **idynmat**
|   **= 0**
|   **= 1** Calculate the dynamic matrx. It is also required a file named
|    *dyn.optional* with the following structure:

     ::

       0.02                 displacement
       1 1 1                dimensions x y z: 1=YES 0=NO
       filephi              dynamic matrix output filename
       .false.              read the list of atoms that move: .false. or .true.

| **iharmonic**

| **iconstraints()**

| **iendtemp**

| **ineb**

| **itrans**

| **max_scf_iterations**

| **bmix**

| **ialgmix**

| **sigmatol**

| **tempfe**

| **itdse**

| **ibias**

| **xyz2line**

| **imdet**

| **nddt**

OUTPUT
------

| **iwrtxyz**
|   **= 0**
|   **= 1** Writes out the *answer.xyz* file with the atomic coordinates during
|    the simulation.

| **iwrteigen**
|   **= 0**
|   **= 1** Writes out the *eigen.dat* file with the energy levels (eigenvalues)
|    at the end of the simulation. The eigenvalues are also written out in the
|    main output file in each time step.

| **iwrtefermi**
|   **= 0**
|   **= 1** Writes out the information regarding the occupation of the energy
|    levels in the main output.

| **iwrtcdcoefs**
|   **= 0**
|   **= 1** Writes out the coefficients of the wavefunctions C_i, mu.

| **iwrtcharges**
|   **= 0**
|   **= 1**

| **iwrtdensity**
|   **= 0**
|   **= 1** Writes out the the density matrix in the main output.

| **iwrtfpieces**
|   **= 0**
|   **= 1** Writes out the pieces of the force.

| **iwrthampiece**
|   **= 0**
|   **= 1** Writes out the pirces of the hamiltonian.

| **iwrtcomponents**
|   **= 0**
|   **= 1**

| **iwrtneigh**
|   **= 0**
|   **= 1**

| **iwrtneigh_com**
|   **= 0**
|   **= 1**

| **iwrtdos**
|   **= 0**
|   **= 1** Writes out DOS, dos.optional needed.

| **iwrthop**
|   **= 0**
|   **= 1**

| **iwrtatom**
|   **= 0**
|   **= 1**

| **iwrtpop**
|   **= 0**
|   **= 1**

| **iwrtHS**
|   **= 0**
|   **= 1**

| **iwrtvel**
|   **= 0**
|   **= 1**

| **iwrtden**
|   **= 0**
|   **= 1**

| **iwrtewf**
|   **= 0**
|   **= 1** Writes out the wavefunction in .ppm (2D) or .xsf format (3D).

| **iwrtxsf**
|   **= 0**
|   **= 1** Writes out the density and potential on a grid in .xsf format.

| **idensimport**

| **iwrtpsit**
|   **= 0**
|   **= 1**

| **iwrtqt**
|   **= 0**
|   **= 1**

| **iwrtdipole**

| **iwrtexcit**
|   **= 0**
|   **= 1** Writes out the optical transition matrix elements by Fermi Golden
|    rule.

| **iwrtkvaziband**
|   Experimental, not finished!
|   **= 0**
|   **= 1** Project the bandstructure of finite system using atomic orbitals.

QUENCH
------

| **energytol**
|   in eV

| **forcetol**
|   in eV/A

| **T_want**
|   in K

| **taurelax**

MESH
----

| **Ecut**

| **iewform**

| **npbands**

| **ewfewin_min**

| **ewfewin_max**

| **ifixg0**

| **g0**

TD
--

| **netime**
|   Number of electron time steps within one MD step.

| **nexcite**
|   Number of excitations.

| **idelec**

| **hoccup**

| **eband**

| **np2es**

| **isp2es**
