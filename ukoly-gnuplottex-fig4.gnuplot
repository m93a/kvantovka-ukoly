set terminal epslatex color size 18cm, 7cm
set output 'ukoly-gnuplottex-fig4.tex'
    F = '3b_eigdiff.dat'
    set xlabel '$N$'
    set ylabel '$\Delta E$'
    set logscale y 10
    set yrange [1e-10:1]
    plot F using 1:2 t '$E_0$', F using 1:3 t '$E_1$', F using 1:4 t '$E_2$', F using 1:5 t '$E_3$', 1e-4 lc rgb 'grey' notitle, 1e-5 lc rgb 'red' notitle, 1e-6 lc rgb 'grey' notitle
