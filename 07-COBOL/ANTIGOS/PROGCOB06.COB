      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: OPERDORES ARITIMETICOS
      *DATA....: 31/08/21
      *
      ******************************************************************
       IDENTIFICATION  DIVISION.
      ******************************************************************
       PROGRAM-ID. PROGCOB06.
      ******************************************************************
       ENVIRONMENT     DIVISION.
      ******************************************************************
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
          DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA            DIVISION.
      ******************************************************************
       WORKING-STORAGE     SECTION.
       77  WRK-NUM1      PIC  S9(02)   VALUE ZEROS.
       77  WRK-NUM2      PIC  S9(02)   VALUE ZEROS.
       77  WRK-RESUL     PIC  S9(04)V99   VALUE ZEROS.
      ******************************************************************
       PROCEDURE       DIVISION.
      ******************************************************************
           DISPLAY 'INFORME O NUMERO 1: '.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           DISPLAY 'INFORME O NUMERO 2: '.
           ACCEPT WRK-NUM2 FROM CONSOLE.
      *    MOVE WRK-CPF TO WRK-CPF-ED.
           DISPLAY 'DADOS RECEBIDOS'.
           DISPLAY 'NUM1..........: ' WRK-NUM1.
           DISPLAY 'NUM2..........: ' WRK-NUM2.

           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA..........: ' WRK-RESUL.

           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO.....: ' WRK-RESUL.

           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'DIVISAO.......: ' WRK-RESUL.

           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
              REMAINDER   WRK-RESUL.
           DISPLAY 'RESTO.........: ' WRK-RESUL.

           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICACAO.: ' WRK-RESUL.

           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA.........: ' WRK-RESUL.
           STOP RUN.
