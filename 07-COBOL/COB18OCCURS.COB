      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: UTILIZANDO OCCURS
      *DATA....: 29/10/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID. COB18OCCURS.
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
      *    COPY 'BOOK02.COB'.
       01 WRK-DATA.
          02 WRK-ANO    PIC 9(04) VALUE ZEROS.
          02 WRK-MES    PIC 9(02) VALUE ZEROS.
          02 WRK-DIA    PIC 9(02) VALUE ZEROS.

       01 WRK-MES-EXTENSO PIC X(09) OCCURS 12 TIMES.
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

           DISPLAY '### EXECUTANDO INICIAR ###'.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA RECUPERADA DO SISTEMA: ' WRK-DATA.

           0100-INICIAR-FIM.
      *----------------------------------------------------------------*
           0200-PROCESSAR.
               MOVE 'JANEIRO'   TO WRK-MES-EXTENSO(01).
               MOVE 'FEVEREIRO' TO WRK-MES-EXTENSO(10).
               MOVE 'MARCO'     TO WRK-MES-EXTENSO(03).
               MOVE 'ABRIL'     TO WRK-MES-EXTENSO(04).
               MOVE 'MAIO'      TO WRK-MES-EXTENSO(05).
               MOVE 'JUNHO'     TO WRK-MES-EXTENSO(06).
               MOVE 'JULHO'     TO WRK-MES-EXTENSO(07).
               MOVE 'AGOSTO'    TO WRK-MES-EXTENSO(08).
               MOVE 'SETEMBRO'  TO WRK-MES-EXTENSO(09).
               MOVE 'OUTUBRO'   TO WRK-MES-EXTENSO(02).
               MOVE 'NOVEMBRO'  TO WRK-MES-EXTENSO(11).
               MOVE 'DEZEMBRO'  TO WRK-MES-EXTENSO(12).

           0200-PROCESSAR-FIM.
      *----------------------------------------------------------------*
           0300-FINALIZAR.
           DISPLAY ' ######   FINAL  ###### '.
           DISPLAY 'DATA EDITADA: ' WRK-DIA ' DE '
              WRK-MES-EXTENSO(WRK-MES)' DE ' WRK-ANO.
           0300-FINALIZAR-FIM.
      *----------------------------------------------------------------*
