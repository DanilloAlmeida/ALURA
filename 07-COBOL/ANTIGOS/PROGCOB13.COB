      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: CALCULA AREA
      *DATA....: 17/10/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
      ******************************************************************
       PROGRAM-ID. PROGCOB12.
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
       77  WRK-LARGURA      PIC  9(03)V99     VALUE ZEROS.
       77  WRK-COMPRIMENTO  PIC  9(03)V99     VALUE ZEROS.
       77  WRK-AREA         PIC  9(03)V99     VALUE ZEROS.
      ******************************************************************
       PROCEDURE DIVISION.
      ******************************************************************
           DISPLAY 'INFORME O LARGURA: '.
           ACCEPT WRK-LARGURA FROM CONSOLE.
           DISPLAY 'INFORME O COMPRIMENTO: '.
           ACCEPT WRK-COMPRIMENTO FROM CONSOLE.

           DISPLAY ' ######   DADOS RECEBIDOS  ###### '.
           DISPLAY 'LARGURA..........: ' WRK-LARGURA.
           DISPLAY 'COMPRIMENTO......: ' WRK-COMPRIMENTO.
           DISPLAY ' '.
           DISPLAY ' ######  DADOS CALCULADOS  ###### '.

           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
               DISPLAY 'AREA CALCULADA...: ' WRK-AREA
           ELSE
               DISPLAY 'VALOR INVALIDO'
           END-IF.

           STOP RUN.
