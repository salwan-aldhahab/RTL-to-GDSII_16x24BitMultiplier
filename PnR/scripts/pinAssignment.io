(globals
    version = 3
    io_order = default
)

(iopin

    ;;=========================================
    ;; 1) TOP EDGE (26 pins) -> A[0..25]
    ;;=========================================
    (top
        (pin name="A[0]"  offset=1  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[1]"  offset=2  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[2]"  offset=3  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[3]"  offset=4  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[4]"  offset=5  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[5]"  offset=6  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[6]"  offset=7  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[7]"  offset=8  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[8]"  offset=9  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[9]"  offset=10 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[10]" offset=11 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[11]" offset=12 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[12]" offset=13 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[13]" offset=14 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[14]" offset=15 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[15]" offset=16 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[16]" offset=17 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[17]" offset=18 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[18]" offset=19 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[19]" offset=20 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[20]" offset=21 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[21]" offset=22 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[22]" offset=23 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[23]" offset=24 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[24]" offset=25 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[25]" offset=26 layer=4 width=0.08 depth=0.25 place_status=placed)
    )

    ;;===========================================
    ;; 2) LEFT EDGE (26 pins):
    ;;    A[26..31] + B[0..19]
    ;;===========================================
    (left
        ;; A[26..31], offsets=1..6
        (pin name="A[26]" offset=1 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[27]" offset=2 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[28]" offset=3 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[29]" offset=4 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[30]" offset=5 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="A[31]" offset=6 layer=4 width=0.08 depth=0.25 place_status=placed)

        ;; B[0..19], offsets=7..26
        (pin name="B[0]"  offset=7  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[1]"  offset=8  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[2]"  offset=9  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[3]"  offset=10 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[4]"  offset=11 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[5]"  offset=12 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[6]"  offset=13 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[7]"  offset=14 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[8]"  offset=15 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[9]"  offset=16 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[10]" offset=17 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[11]" offset=18 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[12]" offset=19 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[13]" offset=20 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[14]" offset=21 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[15]" offset=22 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[16]" offset=23 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[17]" offset=24 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[18]" offset=25 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[19]" offset=26 layer=4 width=0.08 depth=0.25 place_status=placed)
    )

    ;;==========================================================
    ;; 3) BOTTOM EDGE (26 pins):
    ;;    - First 19 inputs: B[20..31], S[0..3], CIN, DR, DL
    ;;    - Last 7 outputs: F[26..31], COUT
    ;;==========================================================
    (bottom
        ;; B[20..31], offsets=1..12
        (pin name="B[20]" offset=1  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[21]" offset=2  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[22]" offset=3  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[23]" offset=4  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[24]" offset=5  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[25]" offset=6  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[26]" offset=7  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[27]" offset=8  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[28]" offset=9  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[29]" offset=10 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[30]" offset=11 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="B[31]" offset=12 layer=4 width=0.08 depth=0.25 place_status=placed)

        ;; S[0..3], offsets=13..16
        (pin name="S[0]" offset=13 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="S[1]" offset=14 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="S[2]" offset=15 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="S[3]" offset=16 layer=4 width=0.08 depth=0.25 place_status=placed)

        ;; CIN, DR, DL, offsets=17..19
        (pin name="CIN" offset=17 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="DR"  offset=18 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="DL"  offset=19 layer=4 width=0.08 depth=0.25 place_status=placed)

        ;; F[26..31], offsets=20..25
        (pin name="F[26]" offset=20 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[27]" offset=21 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[28]" offset=22 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[29]" offset=23 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[30]" offset=24 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[31]" offset=25 layer=4 width=0.08 depth=0.25 place_status=placed)

        ;; COUT => offset=26
        (pin name="COUT" offset=26 layer=4 width=0.08 depth=0.25 place_status=placed)
    )

    ;;============================================
    ;; 4) RIGHT EDGE (26 pins) -> F[0..25]
    ;;============================================
    (right
        (pin name="F[0]"  offset=1  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[1]"  offset=2  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[2]"  offset=3  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[3]"  offset=4  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[4]"  offset=5  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[5]"  offset=6  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[6]"  offset=7  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[7]"  offset=8  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[8]"  offset=9  layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[9]"  offset=10 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[10]" offset=11 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[11]" offset=12 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[12]" offset=13 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[13]" offset=14 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[14]" offset=15 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[15]" offset=16 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[16]" offset=17 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[17]" offset=18 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[18]" offset=19 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[19]" offset=20 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[20]" offset=21 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[21]" offset=22 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[22]" offset=23 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[23]" offset=24 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[24]" offset=25 layer=4 width=0.08 depth=0.25 place_status=placed)
        (pin name="F[25]" offset=26 layer=4 width=0.08 depth=0.25 place_status=placed)
    )
)

