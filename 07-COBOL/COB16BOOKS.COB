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
           COPY '01BOOK.COB'.

      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
           0000-PRINCIPAL.
               PERFORM 0100-INICIAR.
               IF WRK-NUMERO>0
                   PERFORM 0200-PROCESSAR
               END-IF
               PERFORM 0300-FINALIZAR.
               STOP RUN.
      *----------------------------------------------------------------*
           0100-INICIAR.

           DISPLAY 'INFORME UM NUMERO: '.
           ACCEPT WRK-NUMERO FROM CONSOLE.
           0100-INICIAR-FIM.
      *----------------------------------------------------------------*
           0200-PROCESSAR.
               PERFORM 11 TIMES
                   COMPUTE WRK-RESULTADO = WRK-NUMERO *WRK-CONTADOR
                   DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = '
                   WRK-RESULTADO
                   ADD 1 TO WRK-CONTADOR
               END-PERFORM.


           0200-PROCESSAR-FIM.
      *----------------------------------------------------------------*
           0300-FINALIZAR.
           DISPLAY ' ######   FINAL  ###### '.
           0300-FINALIZAR-FIM.
      *----------------------------------------------------------------*
