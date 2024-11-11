      identification division.
        program-id. 02_CONDITIONAL.
        data division.
        working-storage section.
        01 WS-INPUT-01 PIC 9(3).
        01 WS-INPUT-02 PIC 9(3).
        procedure division.
            DISPLAY "ENTER 1ST NUMBER: ".
            ACCEPT WS-INPUT-01.
            DISPLAY "ENTER 2ND NUMBER: ".
            ACCEPT WS-INPUT-02.

            if WS-INPUT-01 > WS-INPUT-02 then
               display WS-INPUT-01 " IS GREATER THEN " WS-INPUT-02
            ELSE IF WS-INPUT-01 < WS-INPUT-02 then
               display WS-INPUT-01 " IS LESS THAN " WS-INPUT-02
            END-IF.
            STOP RUN.
            