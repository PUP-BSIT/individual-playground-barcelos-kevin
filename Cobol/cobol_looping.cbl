       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOPING.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM_01 PIC 999 VALUE 0.
       PROCEDURE DIVISION.
           PERFORM 10 TIMES
               DISPLAY "HELLO WORLD!"
           END-PERFORM.
           
           PERFORM UNTIL NUM_01 = 10
               DISPLAY NUM_01
               COMPUTE NUM_01 = NUM_01 + 1
           END-PERFORM.

           