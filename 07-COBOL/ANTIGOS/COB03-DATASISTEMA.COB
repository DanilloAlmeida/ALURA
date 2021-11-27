      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      *DATA....: 24/08/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB03.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *77 WRK-NOME  PIC      A(20) ALFABETO.
      *77 WRK-NOME  PIC      X(20) ALFANUMERICIO.
      *77 WRK-NOME  PIC      9(20) NÚMERICO.
      *77 WRK-NOME  PICTURE  x(20) VALUE 'DANILLO'.
       01 WRK-DATA.
          02 WRK-ANO   PIC 9(02) VALUE ZEROS.
          02 WRK-MES   PIC 9(02) VALUE ZEROS.
          02 WRK-DIA   PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE.
           DISPLAY 'DATA RECEBIDO: ' WRK-DATA.
           DISPLAY 'DIA: ' WRK-DIA.
           DISPLAY 'MES: ' WRK-MES.
           DISPLAY 'ANO: ' WRK-ANO.
           STOP RUN.
