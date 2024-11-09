    IDENTIFICATION DIVISION.
       PROGRAM-ID. 01_IF_STATEMENTS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AGE PIC 99.
       01 MENU_CHOICE PIC 99.
       01 USER_INPUT PIC 99.
       01 COMPUTE_HOLDER PIC 99.
       01 PRODUCT_HOLDER PIC 99.
       01 COUNTER_LOOP PIC 99.
       01 AVERAGE PIC 999v99.
       01 PRELIM PIC 999v99.
       01 MIDTERM PIC 999v99.
       01 FINAL_GRADE PIC 999v99.

       PROCEDURE DIVISION.
       
           
           DISPLAY "==========[MENU]=========="
           DISPLAY "[1] VOTING ELIGIBILITY CHECKER"
           DISPLAY "[2] EVEN OR ODD ODENTIFIER"
           DISPLAY "[3] LOOP 1 TO 10"
           DISPLAY "[4] Grade Calculator"
           DISPLAY "[5] "
           DISPLAY "[0] EXIT PROGRAM"
               
           MOVE 99 TO MENU_CHOICE
           DISPLAY "ENTER YOUR CHOICE: " NO ADVANCING
           ACCEPT MENU_CHOICE
    
           EVALUATE MENU_CHOICE
               WHEN 1
                   PERFORM VOTING_CHECK
               WHEN 2
                   PERFORM EVEN_ODD_IDENTIFIER
               WHEN 3
                   PERFORM LOOP_1_TO_10
               WHEN 4
                   PERFORM AVERAGE_CALCULATOR
               WHEN 0
                   DISPLAY "EXITING PROGRAM..."
               WHEN OTHER 
                   DISPLAY "INVALID CHOICE."
           END-EVALUATE     
           
           
           STOP RUN.

       VOTING_CHECK.
           DISPLAY "HOW OLD ARE YOU? ".
           ACCEPT AGE.

           IF AGE >= 18 
               DISPLAY "YOU ARE ELIGIBLE TO VOTE."
           ELSE 
               DISPLAY "YOU ARE NOT ELIGIBLE TO VOTE."
           END-IF.
       
       EVEN_ODD_IDENTIFIER.
           DISPLAY "ENTER YOUR NUMBER: " NO ADVANCING.
           ACCEPT USER_INPUT.
           
           DIVIDE USER_INPUT BY 2 GIVING PRODUCT_HOLDER 
                REMAINDER PRODUCT_HOLDER.

           IF USER_INPUT = 0 THEN 
               DISPLAY "ZERO"
           ELSE IF PRODUCT_HOLDER = 0 THEN
               DISPLAY "EVEN"
           ELSE 
               DISPLAY "ODD"
           END-IF.
           
       LOOP_1_TO_10.
           PERFORM UNTIL COUNTER_LOOP =10
               DISPLAY "Current Value of Counter: " COUNTER_LOOP
               ADD 1 TO COUNTER_LOOP
           END-PERFORM.
       
       AVERAGE_CALCULATOR.
           DISPLAY "ENTER PRELIM: "
           ACCEPT PRELIM.
           DISPLAY "ENTER MIDTERM: "
           ACCEPT MIDTERM. 
           DISPLAY "ENTER FINAL: "
           ACCEPT FINAL_GRADE.

           COMPUTE AVERAGE = (PRELIM + MIDTERM + FINAL_GRADE)/3

           DISPLAY  "YOUR AVERAGE IS " AVERAGE.           
           IF AVERAGE >= 97 and AVERAGE <= 100 THEN
               DISPLAY 'EXCELLENT! : 1.0'
           ELSE IF AVERAGE >=94 and AVERAGE <= 96 THEN
               DISPLAY 'EXCELLENT : 1.25'
           ELSE IF AVERAGE >=91 and AVERAGE <= 93 THEN
               DISPLAY 'VERY GOOD : 1.5'
           ELSE IF AVERAGE >=88 and AVERAGE <=90 THEN
               DISPLAY 'VERY GOOD : 1.75'
           ELSE IF AVERAGE >=85 and AVERAGE <=87 THEN
               DISPLAY 'GOOD: 2.0'
           ELSE IF AVERAGE >=82 and AVERAGE <=84 THEN
               DISPLAY 'GOOD : 2.25'
           ELSE IF AVERAGE >=79 and AVERAGE <=81 THEN 
               DISPLAY 'SATISFACTORY : 2.5'
           ELSE IF AVERAGE >=76 and AVERAGE <=78 THEN 
               DISPLAY 'SATIFACTORY : 2.75'
           ELSE IF AVERAGE = 75 
               DISPLAY 'PASSING: 3.0'
           ELSE 
               DISPLAY 'FAILURE'
           END-IF.
