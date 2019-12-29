set terminal epslatex color size 12cm, 5cm
set output 'ukoly-gnuplottex-fig1.tex'
        E(nu) = sqrt(1 + nu**2)

        set xlabel "$\\frac{\\nu}{e}$"
        set ylabel "$\\frac{E_{\\pm}}{e}$" rotate by 0

        set key center top

        set xrange [-5:5]
        set yrange [-5:5]

        plot E(x) title "$E_{+}$", -E(x) title "$E_{-}$"
    
