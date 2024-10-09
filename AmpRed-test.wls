Import @ FileNameJoin[{"ampred-main", "AmpRed", "AmpRed.m"}];

FI = TI[
    {k[1], k[2]},
    {
        {k[1], m1, 3},
        {k[2], m2, 4},
        {k[1]+k[2], m3, 2}
    }
];
rslt = AlphaToFeynman @ AlphaReduce @ AlphaParametrize[FI, Method->1];

Export["rslt.txt", rslt];
