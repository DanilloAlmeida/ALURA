      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: RECEBER E IMPRIMIR VARIAVEL
      *DATA....: 24/08/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB01.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *77 WRK-NOME  PIC      A(20) ALFABETO.
      *77 WRK-NOME  PIC      X(20) ALFANUMERICIO.
      *77 WRK-NOME  PIC      9(20) NÚMERICO.
       77 WRK-NOME  PICTURE  x(20) VALUE 'DANILLO'.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'NOME RECEBIDO: ' WRK-NOME.
           STOP RUN.
