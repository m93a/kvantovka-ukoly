set terminal epslatex color size 18cm, 7cm
set output 'ukoly-gnuplottex-fig5.tex'
    V(x,a,b) = -0.5 * a * x**2 + 0.5 * b * x**4

    set xlabel "$x$"
    set ylabel "$V$"

    set xrange [-1.5:1.5]
    set yrange [-0.3:0.5]

    plot V(x,0,1) t "$a=0$" lc rgb "orange", V(x,1,1) t "$a=1$" lc rgb "red", V(x,2,1) t "$a=2$" lc rgb "green"
