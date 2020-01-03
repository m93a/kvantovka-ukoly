set terminal epslatex color size 18cm, 7cm
set output 'ukoly-gnuplottex-fig3.tex'
    F = '3b_eigvals.dat'
    set xlabel '$N$'
    set ylabel '$E$'
    plot F using 1:2 t '$E_0$', F using 1:3 t '$E_1$', F using 1:4 t '$E_2$', F using 1:5 t '$E_3$'
