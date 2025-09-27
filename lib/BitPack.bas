Sub DrawBitPack (__IMAGE$, __OX%, __OY%, __COLOR&)
    If Left$(__IMAGE$, 2) <> "BP" Or Len(__IMAGE$) < 6 Then Exit Sub
    __WIDTH% = CVI(Mid$(__IMAGE$, 3, 2))
    __HEIGHT% = CVI(Mid$(__IMAGE$, 5, 2))
    __K~& = 48
    $Checking:Off
    For __X% = 0 To __WIDTH% - 1
        For __Y% = 0 To __HEIGHT% - 1
            PSet (__OX% + __X%, __OY% + __Y%), __COLOR& And _ReadBit(Asc(__IMAGE$, 1 + _SHR(__K~&, 3)), __K~& Mod 8)
            __K~& = __K~& + 1
    Next __Y%, __X%
    $Checking:On
End Sub
Function BitPackGetWidth% (__IMAGE$) Static
    If Left$(__IMAGE$, 2) <> "BP" Or Len(__IMAGE$) < 6 Then Exit Function
    BitPackGetWidth = CVI(Mid$(__IMAGE$, 3, 2))
End Function
Function BitPackGetHeight% (__IMAGE$) Static
    If Left$(__IMAGE$, 2) <> "BP" Or Len(__IMAGE$) < 6 Then Exit Function
    BitPackGetHeight = CVI(Mid$(__IMAGE$, 5, 2))
End Function
