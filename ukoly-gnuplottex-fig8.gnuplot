set terminal epslatex color size 18cm, 10cm linewidth 2
set output 'ukoly-gnuplottex-fig8.tex'

        palettefile(n) = sprintf("<sed -e 's/set style line/set linetype/' -e 's/lt 1 //' %s.pal", n)
        load palettefile("spectral")

        F20 = "3c_hbar_prec20.dat"
        F30 = "3c_hbar_prec30.dat"
        F45 = "3c_hbar_prec45.dat"
        F70 = "3c_hbar_prec70.dat"
        F110 = "3c_hbar_prec110.dat"
        F160 = "3c_hbar_prec160.dat"

        set xlabel "$\\hbar$"
        set ylabel "$E$"
        set yrange [-0.13:0.05]
        set xrange [0:0.03]

        plot F160 using 1:2 t "$N=160$" w l lt 1 lw 2, F160 using 1:4 not w l lt 1 lw 2, F160 using 1:6 not w l lt 1 lw 2, F110 using 1:2 t "$N=110$" w l lt 2 lw 2, F110 using 1:4 not w l lt 2 lw 2, F110 using 1:6 not w l lt 2 lw 2, F70 using 1:2 t "$N=70$" w l lt 3 lw 2, F70 using 1:4 not w l lt 3 lw 2, F70 using 1:6 not w l lt 3 lw 2, F45 using 1:2 t "$N=45$" w l lt 4 lw 2, F45 using 1:4 not w l lt 4 lw 2, F45 using 1:6 not w l lt 4 lw 2, F30 using 1:2 t "$N=30$" w l lt 6 lw 2, F30 using 1:4 not w l lt 6 lw 2, F30 using 1:6 not w l lt 6 lw 2, F20 using 1:2 t "$N=20$" w l lt 8 lw 2, F20 using 1:4 not w l lt 8 lw 2, F20 using 1:6 not w l lt 8 lw 2,

    
