       identification division.
       program-id. 05_Arithmetic.
       data division.
       01 ws-input-01 PIC 9.
       01 ws-result PIC 9(2).
       procedure division.
           display "Enter last digit of Birthday: "
           accept ws-input-01.

           Evaluate ws-input-01
               when 8
                   display 0.
           end-evaluate.
           stop run.