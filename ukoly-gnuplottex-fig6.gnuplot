set terminal epslatex color size 18cm, 10cm
set output 'ukoly-gnuplottex-fig6.tex'

        palettefile(n) = sprintf("<sed -e 's/set style line/set linetype/' -e 's/lt 1 //' %s.pal", n)
        load palettefile("paired")

        F = "3c_hbar.dat"

        set xlabel "$\\hbar$"
        set ylabel "$E$"
        set xrange [0:.2]

        set key left top

        plot F using 1:2 t "$E_0$" w l, F using 1:3 t "$E_1$" w l, F using 1:4 t "$E_2$" w l, F using 1:5 t "$E_3$" w l, F using 1:6 t "$E_4$" w l, F using 1:7 t "$E_5$" w l, F using 1:8 t "$E_6$" w l, F using 1:9 t "$E_7$" w l,

    
