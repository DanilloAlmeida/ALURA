      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: RECEBE E IMPRIME CPF FORMATADO
      *DATA....: 29/08/21
      *
      ******************************************************************
       IDENTIFICATION  DIVISION.
      ******************************************************************
       PROGRAM-ID. PROGCOB05.
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
       77 WRK-NOME    PIC X(20)            VALUE SPACES.
       77 WRK-CPF     PIC 9(11)            VALUE ZEROS.
       77 WRK-CPF-ED  PIC 999.999.999/99   VALUE ZEROS.
      * 01 WRK-DATA.
      *   02 WRK-ANO   PIC 9(02) VALUE ZEROS.
      *   02 WRK-MES   PIC 9(02) VALUE ZEROS.
      *   02 WRK-DIA   PIC 9(02) VALUE ZEROS.
      ******************************************************************
       PROCEDURE       DIVISION.
      ******************************************************************
           DISPLAY 'INFORME O NOME'.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'INFORME O CPF'.
           ACCEPT WRK-CPF FROM CONSOLE.
           MOVE WRK-CPF TO WRK-CPF-ED.
           DISPLAY 'DADOS RECEBIDOS'.
           DISPLAY 'NOME....: ' WRK-NOME.
           DISPLAY 'SALARIO.: ' WRK-CPF-ED.
           STOP RUN.
