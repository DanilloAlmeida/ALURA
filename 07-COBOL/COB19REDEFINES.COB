      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: UTILIZANDO REDEFINES
      *DATA....: 31/10/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID. COB19REDEFINES.
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
       01 WRK-DATA.
          02 WRK-ANO    PIC 9(04) VALUE ZEROS.
          02 WRK-MES    PIC 9(02) VALUE ZEROS.
          02 WRK-DIA    PIC 9(02) VALUE ZEROS.

       01 WRK-MESES-EXTENSO.
          02 FILLER     PIC X(03) VALUE 'JAN'.
          02 FILLER     PIC X(03) VALUE 'FEV'.
          02 FILLER     PIC X(03) VALUE 'MAR'.
          02 FILLER     PIC X(03) VALUE 'ABR'.
          02 FILLER     PIC X(03) VALUE 'MAI'.
          02 FILLER     PIC X(03) VALUE 'JUN'.
          02 FILLER     PIC X(03) VALUE 'JUL'.
          02 FILLER     PIC X(03) VALUE 'AGO'.
          02 FILLER     PIC X(03) VALUE 'SET'.
          02 FILLER     PIC X(03) VALUE 'OUT'.
          02 FILLER     PIC X(03) VALUE 'NOV'.
          02 FILLER     PIC X(03) VALUE 'DEZ'.
       01 WRK-MES-EXTENSO REDEFINES WRK-MESES-EXTENSO.
          02 WRK-MES-EXT   PIC X(03) OCCURS 12 TIMES.


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

           0200-PROCESSAR-FIM.
      *----------------------------------------------------------------*
           0300-FINALIZAR.
           DISPLAY ' ######   FINAL  ###### '.
           DISPLAY 'DATA EDITADA: ' WRK-DIA ' DE '
              WRK-MES-EXT(WRK-MES)' DE ' WRK-ANO.
           DISPLAY 'IMPRIME FILLER: 'WRK-MESES-EXTENSO.
           0300-FINALIZAR-FIM.
      *----------------------------------------------------------------*
