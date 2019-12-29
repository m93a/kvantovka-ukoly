set terminal epslatex color size 12cm, 4.5cm
set output 'ukoly-gnuplottex-fig2.tex'

        chi(x, N) = x >= N-0.5 ? x <= N+0.5 ? 1 : 1/0 : 1/0
        E(x, k, N) = 2 * cos(k*pi/(N+1)) * chi(x, N)

        set macros

        set xlabel "$N$"
        set ylabel "$E_k$" rotate by 0

        set key center top

        set xrange [0:11]
        set yrange [-2:2]

        set ytics ("$e-2\\nu$" -2, "$e-\\nu$" -1, "$e$" 0, "$e+\\nu$" 1, "$e+2\\nu$" 2)

        nt = "notitle lt rgb 'red'"
        plt = ""

        do for [N=1:11] {
            do for [k=1:N] {
                plt = plt."E(x,".k.",".N.") ".nt.", "
            }
        }

        plot @plt
    
