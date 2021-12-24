      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: CALCULA FRETE
      *DATA....: 16/10/21
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
       77  WRK-PRODUTO      PIC  X(20)        VALUE SPACES.
       77  WRK-VALOR        PIC  9(06)V99     VALUE ZEROS.
       77  WRK-FRETE        PIC  9(04)V99     VALUE ZEROS.
       77  WRK-UF           PIC  X(02)        VALUE SPACES.
      ******************************************************************
       PROCEDURE DIVISION.
      ******************************************************************
           DISPLAY 'INFORME O PRODUTO: '.
           ACCEPT WRK-PRODUTO FROM CONSOLE.
           DISPLAY 'INFORME O VALOR: '.
           ACCEPT WRK-VALOR FROM CONSOLE.
           DISPLAY 'INFORME O ESTADO: '.
           ACCEPT WRK-UF FROM CONSOLE.

           DISPLAY 'DADOS RECEBIDOS'.
           DISPLAY 'PRODUTO..........: ' WRK-PRODUTO.
           DISPLAY 'VALOR............: ' WRK-VALOR.
           DISPLAY 'ESTADO ..........: ' WRK-UF.

           EVALUATE WRK-UF
              WHEN 'SP'
                 COMPUTE WRK-FRETE = WRK-VALOR * 1,05
                 DISPLAY 'FRETE.: ' WRK-FRETE
              WHEN 'RJ'
                 COMPUTE WRK-FRETE = WRK-VALOR * 1,10
                 DISPLAY 'FRETE.: ' WRK-FRETE
              WHEN 'MG'
                 COMPUTE WRK-FRETE = WRK-VALOR * 1,20
                 DISPLAY 'FRETE.: ' WRK-FRETE
              WHEN OTHER
                 DISPLAY 'NAO PODEMOS ENTREGAR'

           STOP RUN.
