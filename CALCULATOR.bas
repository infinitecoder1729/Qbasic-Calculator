Do
    Cls
    Print "THIS IS A CALCULATOR"
    Print
    Print "FOR INFO ENTER I  ;  TO START THE CALCULATOR ENTER S",
    1 Input E$
    If E$ = "I" Then
        Print
        Print "ABOUT"
        Print
        Print "THIS PROGRAM WAS MADE BY infinitecoder1729 ON 19TH MARCH 2017"
        Print
        Print "THIS IS A FREEWARE UNLESS YOU WANT TO CLAIM IT AS YOURS"
        Print
        Print "THANK YOU"
        Print
    ElseIf E$ = "S" Then
        Print
        Print "WELCOME, YOU CAN PERFORM ALL THE MATHEMATICAL ACTIONS HERE "
        Print
        Print "A FOR ADDITION"
        Print "B FOR SUBTRACTION"
        Print "C FOR MULTIPLICATION"
        Print "D FOR DIVISION"
        Print "E FOR AVERAGE"
        Print "F FOR PERCENTAGE"
        Print "G FOR PERIMETER OF SQUARE"
        Print "H FOR AREA OF SQURE"
        Print "J FOR PERIMETER OF RHOMBUS"
        Print "K FOR AREA OF CIRCLE"
        Print "L FOR CIRCUMFRENCE OF CIRCLE"
        Print "M FOR CALCULATION REGARDING SIMPLE INTREST"
        Print "N FOR PROFIT OR LOOS (PERCENTAGE AND OTHER CALCULATIONS) "
        Input R$
        Select Case R$
            Case "A"
                Print "YOU CAN ADD UPTO 5 NO.S,IF YOU WANT TO ADD LESS ENTER ONLY THE WANTED NO.S AND LEAVE OTHERS BLANK"
                Input " 1ST NO.", N1
                Input " 2ND NO.", N2
                Input " 3RD NO.", N3
                Input " 4TH NO.", N4
                Input " 5TH NO.", N5
                Print
                Print "YOUR SUM IS = ", N1 + N2 + N3 + N4 + N5
            Case "B"
                Print "YOU CAN SUBTRACT TWO NO.S ONLY (ENTER THE LARGE NO. FIRST"
                Input " THE LARGE NO.", N1
                Input "THE sMALL NO.", N2
                Print "YOUR DIFFERENCE IS =", N1 - N2
            Case "C"
                Print " YOU CAN MULTIPLY UPTO 5 NO.S ,IF YOU WANT TO ADD LESS ENTER ONLY THE WANTED NO.S AND LEAVE OTHERS BLANK"
                Input " 1ST NO.", N1
                Input " 2ND NO.", N2
                Input " 3RD NO.", N3
                Input " 4TH NO.", N4
                Input " 5TH NO.", N5
                Print "YOUR PRODUCT IS = ", N1 * N2 * N3 * N4 * N5
            Case "D"
                Print "YOU CAN DIVIDE TWO NO.S ONLY (ENTER THE LARGE NO. FIRST"
                Input " THE LARGE NO.", N1
                Input "THE sMALL NO.", N2
                Print "YOUR ANSWER IS =", N1 / N2
            Case "E"
                Print "YOU CAN FIND AVRAGE OF UPTO FIVE NO.S"
                Input "OF HOW MANY NO.S YOU WANT TO FIND AVAREGE?", NOO
                Select Case NOO
                    Case 2
                        Input " 1ST NO.", N1
                        Input " 2ND NO.", N2
                        Print "YOUR AVERAGE IS", (N1 + N2) / NOO
                    Case 3
                        Input " 1ST NO.", N1
                        Input " 2ND NO.", N2
                        Input " 3RD NO.", N3
                        Print "YOUR AVERAGE IS", (N1 + N2 + N3) / NOO
                    Case 4
                        Input " 1ST NO.", N1
                        Input " 2ND NO.", N2
                        Input " 3RD NO.", N3
                        Input " 4TH NO.", N4
                        Print "YOUR AVERAGE IS", (N1 + N2 + N3 + N4) / NOO
                    Case 5
                        Input " 1ST NO.", N1
                        Input " 2ND NO.", N2
                        Input " 3RD NO.", N3
                        Input " 4TH NO.", N4
                        Input " 5TH NO.", N5
                        Print "YOUR AVERAGE IS", (N1 + N2 + N3 + N4 + N5) / NOO
                End Select

            Case "F"
                Input "NUMERATOR:", N1
                Input "DENOMINATOR", N2
                Print "PERCENTAGE =", (N1 / N2) * 100

            Case "G"
                Input "SIDE OF SQUARE", S
                Print "PERIMETER IS =", 4 * S
            Case "H"
                Input "SIDE OF SQUARE ", S
                Print "AREA OF SQUARE IS = ", S ^ 2
            Case "J"
                Input "ENTER SIDE OF RHOMBUS ", S
                Print "PERIMETER IS:", S * 4

            Case "K"
                Input " ENTER RADIUS", R
                Print "AREA OF CRCLE =", (22 / 7) * R ^ 2
            Case "L"
                Input " ENTER RADIUS", R
                Print "CIRCUMFRENCE OF CRCLE =", (22 / 7) * 2 * R
            Case "M"
                Print "YOU CAN CALCULATE SI , PRINCIPLE , TOTAL AMT(AFTER ADDING SI ) , RATE OF INTREST OR TIME"
                Input "ENTER YOUR CHOICE(SI,P,TA,R,T) ", AA$
                If AA$ = "SI" Then
                    Input "ENTER PRINCIPLE", P
                    Input "RATE OF INTREST", R
                    Input "TIME", T
                    Print "SIMPLE INTREST IS:", (P * R * T) / 100
                ElseIf AA$ = "TA" Then
                    Input "ENTER PRINCIPLE", P
                    Input "RATE OF INTREST", R
                    Input "TIME", T
                    S = (P * R * T) / 100
                    Print "TOTAL AMOUNT AFTER ADDING SI =  ", S + P
                    Print "SIMPLE INTREST IS:", S
                ElseIf AA$ = "P" Then
                    Input "RATE OF INTREST", R
                    Input "TIME", T
                    Input "   SIMPLE INTREST", SI
                    Print "PRINCIPAL IS:-", (SI * 100) / (R * T)
                ElseIf AA$ = "R" Then
                    Input "PRINCIPLE", P
                    Input "TIME", T
                    Input "SIMPLE INTREST", SI
                    Print "RATE OF INTREST =", (SI * 100) / (P * T)
                ElseIf AA$ = "T" Then
                    Input "ENTER PRINCIPLE", P
                    Input "RATE OF INTREST", R
                    Input "SIMPLE INTREST", SI
                    Print "TIME =", (SI * 100) / (P * R)
                End If
            Case "N"
                Input "ENTER COST PRICE", CP
                Input "ENTER ANY OTHER ADDITIONAL (OVERHEAD) EXPENSES", OE
                Input "ENTER SELLING PRICE", SP
                If SP > (CP + OE) Then
                    Print "YOU HAD A PROFIT."
                    P = SP - (CP + OE)
                    Print "AMOUNT OF PROFIT=", SP - (CP + OE)
                    Print " PROFIT PERCENT=", (P / CP) * 100
                ElseIf SP < (CP + OE) Then
                    Print "YOU SUFFERED A LOSS"
                    L = (CP + OE) - SP
                    Print "AMOUNT OF LOSS", L
                    Print "LOSS PERCENT=", (L / CP) * 100
                Else Print "NO PROFIT OR LOSS"
                End If
        End Select
    End If
    Input "DO YOU WANT TO CONTINUE?", R$
Loop Until R$ = "N"
End
End
End
End
