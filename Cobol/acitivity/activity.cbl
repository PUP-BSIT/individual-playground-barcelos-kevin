       identification division.
       program-id. acitivity.

       data division.
       working-storage section.
       01 num01 pic 99 value 1.
       
       procedure division.
           perform until num01 > 20
               display num01
               compute num01 = num01 + 2
           end-perform.
           stop run.
