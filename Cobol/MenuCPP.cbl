       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENU_PROGRAM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHOICE PIC 99.
       01 USER_INPUT PIC S99.
       01 NUM1 PIC 99.
       01 NUM2 PIC 99.
       01 NUM3 PIC 99.
       01 AVERAGE PIC 99.
       01 PRELIM PIC 999.
       01 MIDTERM PIC 999.
       01 FINALS PIC 999.
       01 REMAINDER_HOLDER PIC 9 VALUE 0.
       01 NUM PIC 99.
       01 QUOTIENT PIC 99.
       01 REM_1 PIC 99.
       01 REM_2 PIC 99.
       01 GETCH PIC X.
       01 SALES_AMOUNT PIC 9999.
       01 GROSS_PAY PIC 9999.
       01 COMMISSION PIC 9999 VALUE 0.
       01 SMALLEST PIC 99.
       01 AVERAGE_GRADE PIC 99.
       01 CLOSEST PIC 99.
       01 DIFFERENCE1 PIC 99.
       01 DIFFERENCE2 PIC 99.

       PROCEDURE DIVISION.
           PERFORM UNTIL CHOICE = 11
               DISPLAY "Selection Menu"
               DISPLAY "1  Even or Odd Identifier"
               DISPLAY "2  Average Score and Pass/Fail"
               DISPLAY "3  Positive or Negative Checker"
               DISPLAY "4  Sum or Triple Sum"
               DISPLAY "5  Multiple of 3 or 7"
               DISPLAY "6  Gross Pay and Commission"
               DISPLAY "7  Largest of Two Numbers"
               DISPLAY "8  Smallest of Three Numbers"
               DISPLAY "9  Grade Equivalent Finder"
               DISPLAY "10 Closest to 100"
               DISPLAY "11 Exit"
               DISPLAY "Enter your choice: " NO ADVANCING
               ACCEPT CHOICE

               EVALUATE CHOICE
                   WHEN 1
                       PERFORM EVEN_ODD_IDENTIFIER
                       ACCEPT GETCH
                   WHEN 2
                       PERFORM AVERAGE_CALCULATOR
                       ACCEPT GETCH
                   WHEN 3
                       PERFORM POSITIVE_NEGATIVE_CHECKER
                       ACCEPT GETCH
                   WHEN 4
                       PERFORM SUM_OR_TRIPLE
                       ACCEPT GETCH
                   WHEN 5
                       PERFORM MULTIPLE_OF_3_OR_7
                       ACCEPT GETCH
      *            WHEN 6
      *                PERFORM GROSS_PAY_AND_COMMISSION
      *                ACCEPT GETCH
      *            WHEN 7
      *                PERFORM LARGEST_OF_TWO
      *                ACCEPT GETCH
      *            WHEN 8
      *                PERFORM SMALLEST_OF_THREE
      *                ACCEPT GETCH
      *            WHEN 9
      *                PERFORM EQUIVALENT_GRADE
      *                ACCEPT GETCH
      *            WHEN 10
      *                PERFORM CLOSEST_TO_100
      *                ACCEPT GETCH
                   WHEN 11
                       DISPLAY "Exiting Program..."
                   WHEN OTHER
                       DISPLAY "Invalid choice. (1-11)"
               END-EVALUATE
           END-PERFORM.
           
           STOP RUN.

       EVEN_ODD_IDENTIFIER.
           DISPLAY "Enter a number(0-99): " NO ADVANCING.
           ACCEPT USER_INPUT.
           DIVIDE USER_INPUT BY 2 GIVING NUM REMAINDER REMAINDER_HOLDER.
           IF REMAINDER_HOLDER = 0
               DISPLAY "The number is Even."
           ELSE
               DISPLAY "The number is Odd."
           END-IF.
           

       AVERAGE_CALCULATOR.
           DISPLAY "Enter Prelim score: " NO ADVANCING.
           ACCEPT PRELIM.
           DISPLAY "Enter Midterm score: " NO ADVANCING.
           ACCEPT MIDTERM.
           DISPLAY "Enter Finals score: " NO ADVANCING.
           ACCEPT FINALS.
           COMPUTE AVERAGE = (PRELIM + MIDTERM + FINALS) / 3.
           DISPLAY "Average score: " AVERAGE.
           IF AVERAGE >= 70
               DISPLAY "Remark: Passed."
           ELSE
               DISPLAY "Remark: Failed."
           END-IF.

       POSITIVE_NEGATIVE_CHECKER.
           DISPLAY "Enter a number: " NO ADVANCING.
           ACCEPT USER_INPUT.
           IF USER_INPUT > 0
               DISPLAY "The number is Positive."
           ELSE IF USER_INPUT < 0
               DISPLAY "The number is Negative."
           ELSE
               DISPLAY "The number is Zero."
           END-IF.

       SUM_OR_TRIPLE.
           DISPLAY "Enter first number: " NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter second number: " NO ADVANCING.
           ACCEPT NUM2.
           IF NUM1 = NUM2
               COMPUTE NUM = (NUM1 + NUM2) * 3
               DISPLAY "Triple their sum: " USER_INPUT
           ELSE
               COMPUTE NUM = NUM1 + NUM2
               DISPLAY "Sum: " NUM
           END-IF.

       MULTIPLE_OF_3_OR_7.
           DISPLAY "Enter a positive number: " NO ADVANCING.
           ACCEPT USER_INPUT.
      *    compute REM_1 = FUNCTION MOD (USER_INPUT 3)
           
      *    DIVIDE USER_INPUT BY 3 GIVING QUOTIENT REMAINDER REM_1
      *    DIVIDE USER_INPUT BY 7 GIVING QUOTIENT REMAINDER REM_2
      
           IF FUNCTION MOD (USER_INPUT 3) = 0  AND FUNCTION MOD
      -     (USER_INPUT 7) = 0
               DISPLAY "The number is a multiple of 3 and 7."
           ELSE IF FUNCTION MOD(USER_INPUT 3) = 0
               DISPLAY "The number is a multiple of 3."
           ELSE IF FUNCTION MOD (USER_INPUT 7) = 0
               DISPLAY "The number is a multiple of 7."
           ELSE
               DISPLAY "The number is neither a multiple of 3 nor 7."
           END-IF.

      *GROSS_PAY_AND_COMMISSION.
      *    DISPLAY "Enter sales amount: " NO ADVANCING.
      *    ACCEPT SALES_AMOUNT.
      *    COMPUTE GROSS_PAY = SALES_AMOUNT * 0.10 + SALES_AMOUNT
      *    COMPUTE COMMISSION = SALES_AMOUNT * 0.10
      *    DISPLAY "Gross Pay: " GROSS_PAY
      *    DISPLAY "Commission: " COMMISSION.

      *LARGEST_OF_TWO.
      *    DISPLAY "Enter first number: " NO ADVANCING.
      *    ACCEPT NUM1.
      *    DISPLAY "Enter second number: " NO ADVANCING.
      *    ACCEPT NUM2.
      *    IF NUM1 > NUM2
      *        DISPLAY "The largest number is: " NUM1
      *    ELSE IF NUM2 > NUM1
      *        DISPLAY "The largest number is: " NUM2
      *    ELSE
      *        DISPLAY "Both numbers are equal."
      *    END-IF.

      *SMALLEST_OF_THREE.
      *    DISPLAY "Enter first number: " NO ADVANCING.
      *    ACCEPT NUM1.
      *    DISPLAY "Enter second number: " NO ADVANCING.
      *    ACCEPT NUM2.
      *    DISPLAY "Enter third number: " NO ADVANCING.
      *    ACCEPT NUM3.
      *    MOVE NUM1 TO SMALLEST.
      *    IF NUM2 < SMALLEST
      *        MOVE NUM2 TO SMALLEST
      *    END-IF.
      *    IF NUM3 < SMALLEST
      *        MOVE NUM3 TO SMALLEST
      *    END-IF.
      *    DISPLAY "The smallest number is: " SMALLEST.

      *EQUIVALENT_GRADE.
      *    DISPLAY "Enter average grade: " NO ADVANCING.
      *    ACCEPT AVERAGE_GRADE.
      *    IF AVERAGE_GRADE >= 90
      *        DISPLAY "Equivalent Grade: 1.00"
      *    ELSE IF AVERAGE_GRADE >= 80
      *        DISPLAY "Equivalent Grade: 2.00"
      *    ELSE IF AVERAGE_GRADE >= 70
      *        DISPLAY "Equivalent Grade: 3.00"
      *    ELSE IF AVERAGE_GRADE >= 60
      *        DISPLAY "Equivalent Grade: 4.00"
      *    ELSE
      *        DISPLAY "Equivalent Grade: 5.00"
      *    END-IF.

      *CLOSEST_TO_100.
      *    DISPLAY "Enter first number: " NO ADVANCING.
      *    ACCEPT NUM1.
      *    DISPLAY "Enter second number: " NO ADVANCING.
      *    ACCEPT NUM2.
      *    COMPUTE DIFFERENCE1 = ABS(100 - NUM1).
      *    COMPUTE DIFFERENCE2 = ABS(100 - NUM2).
      *    IF DIFFERENCE1 < DIFFERENCE2
      *        DISPLAY "The number closest to 100 is: " NUM1
      *    ELSE IF DIFFERENCE2 < DIFFERENCE1
      *        DISPLAY "The number closest to 100 is: " NUM2
      *    ELSE
      *        DISPLAY "Both numbers are equally close to 100: " NUM1 " and " NUM2
      *    END-IF.
      *
