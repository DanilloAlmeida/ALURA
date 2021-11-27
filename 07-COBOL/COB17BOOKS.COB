      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: UTILIZANDO PERFORM
      *DATA....: 20/10/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID. COB14PERFORM.
      ******************************************************************
       ENVIRONMENT DIVISION.
      *----------------------------------------------------------------*
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA DIVISION.
      *----------------------------------------------------------------*
       WORKING-STORAGE SECTION.
           COPY 'BOOK02.COB'.

      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
           0000-PRINCIPAL.
               PERFORM 0100-INICIAR.
               PERFORM 0200-PROCESSAR.
               PERFORM 0300-FINALIZAR.
               STOP RUN.
      *----------------------------------------------------------------*
           0100-INICIAR.

           DISPLAY 'INFORME O VALOR INVESTIDO: '.
           ACCEPT WRK-VALOR FROM CONSOLE.
           DISPLAY 'INFORME O PRAZO DO INVESTIMENTO: '.
           ACCEPT WRK-PRAZO FROM CONSOLE.
           DISPLAY 'INFORME A TAXA MENSAL: '.
           ACCEPT WRK-TAXAMES FROM CONSOLE.
           0100-INICIAR-FIM.
      *----------------------------------------------------------------*
           0200-PROCESSAR.
               PERFORM WRK-PRAZO TIMES
                   COMPUTE WRK-VALOR = WRK-VALOR * (1 + WRK-TAXAMES/100)
                   ADD 1 TO WRK-MES
                   DISPLAY 'MES 'WRK-MES' = ' WRK-VALOR
               END-PERFORM.


           0200-PROCESSAR-FIM.
      *----------------------------------------------------------------*
           0300-FINALIZAR.
           DISPLAY ' ######   FINAL  ###### '.
           0300-FINALIZAR-FIM.
      *----------------------------------------------------------------*
