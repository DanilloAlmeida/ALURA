      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: IMPRIMIR A DATA DO SISTEMA
      *DATA....: 29/08/21
      *
      ******************************************************************
       IDENTIFICATION  DIVISION.
      ******************************************************************
       PROGRAM-ID. PROGCOB04.
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
       77 WRK-NOME        PIC X(20)         VALUE SPACES.
       77 WRK-SALARIO     PIC 9(06)V99      VALUE ZEROS.
       77 WRK-SALARIO-ED  PIC $ZZZ.ZZ9,99   VALUE ZEROS.
      * 01 WRK-DATA.
      *   02 WRK-ANO   PIC 9(02) VALUE ZEROS.
      *   02 WRK-MES   PIC 9(02) VALUE ZEROS.
      *   02 WRK-DIA   PIC 9(02) VALUE ZEROS.
      ******************************************************************
       PROCEDURE       DIVISION.
      ******************************************************************
           DISPLAY 'INFORME O NOME'.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'INFORME O SALARIO'.
           ACCEPT WRK-SALARIO FROM CONSOLE.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'DADOS RECEBIDOS'.
           DISPLAY 'NOME....: ' WRK-NOME.
           DISPLAY 'SALARIO.: ' WRK-SALARIO-ED.
           STOP RUN.
