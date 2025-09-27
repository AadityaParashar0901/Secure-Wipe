$Console:Only
For I = 1 To _CommandCount
    Open Command$(I) + ".bp" For Output As #1
    A& = _LoadImage(Command$(I), 32)
    T$ = CreateBitPack(A&)
    _FreeImage A&
    Print #1, T$;
    Close #1
Next I
System
'$Include:'include\bitpack_image.bm'
