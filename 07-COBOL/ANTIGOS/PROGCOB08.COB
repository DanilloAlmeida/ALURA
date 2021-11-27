      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: UTILIZANDO COMADOS IF/ELSE/ENDIF
      *DATA....: 15/10/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
      ******************************************************************
       PROGRAM-ID. PROGCOB08.
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA DIVISION.
      ******************************************************************
       WORKING-STORAGE       SECTION.
       77  WRK-NOTA1      PIC  9(02)      VALUE ZEROS.
       77  WRK-NOTA2      PIC  9(02)      VALUE ZEROS.
       77  WRK-MEDIA      PIC  9(02)V99   VALUE ZEROS.
      ******************************************************************
       PROCEDURE DIVISION.
      ******************************************************************
           DISPLAY 'INFORME A NOTA 1: '.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           DISPLAY 'INFORME INFORME A NOTA 2: '.
           ACCEPT WRK-NOTA2 FROM CONSOLE.

           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

           DISPLAY 'DADOS RECEBIDOS'.
           DISPLAY 'NOTA 1..........: ' WRK-NOTA1.
           DISPLAY 'NOTA 2..........: ' WRK-NOTA2.
           DISPLAY 'MEDIA CALCULADA.: ' WRK-MEDIA.

           IF WRK-MEDIA >= 5
              DISPLAY 'APROVADO'
           ELSE
              DISPLAY 'REPROVADO'
           END-IF.
           STOP RUN.
