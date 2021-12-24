      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: ULTIMO EXERCICIO DO CURSO.
      *DATA....: 31/10/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID. COB20ULTIMO.
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

       01 WRK-MES-INF      PIC 9(02) VALUE ZEROS.
       01 WRK-VALOR-VENDA  PIC 9(06)V99  VALUE ZEROS.
       01 WRK-ACM.
          02 WRK-ACM-VENDA    PIC 9(10)V99 OCCURS 12 TIMES.



      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
           0000-PRINCIPAL.
              INITIALIZE WRK-ACM REPLACING NUMERIC DATA BY 0.
              PERFORM 0100-INICIAR.
              PERFORM 0200-PROCESSAR.
              PERFORM 0300-FINALIZAR.
              STOP RUN.
      *----------------------------------------------------------------*
           0100-INICIAR.


           DISPLAY '### EXECUTANDO INICIAR ###'.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
      *    DISPLAY 'DATA RECUPERADA DO SISTEMA: ' WRK-DATA.
           DISPLAY ' '.
           DISPLAY ' '.
           DISPLAY ' '.
           DISPLAY 'INFORME O MES:          (PARA SAIR DIGITE 99)'.
           ACCEPT WRK-MES-INF FROM CONSOLE.
           IF WRK-MES-INF EQUAL 99

               PERFORM 0300-FINALIZAR
      *        STOP RUN
           ELSE
               PERFORM 0200-PROCESSAR
           END-IF.

           0100-INICIAR-FIM.
      *----------------------------------------------------------------*
           0200-PROCESSAR.
               DISPLAY'INFORME O VALOR DA VENDA: '
               ACCEPT WRK-VALOR-VENDA FROM CONSOLE.
               COMPUTE WRK-ACM-VENDA(WRK-MES-INF) =
               WRK-ACM-VENDA(WRK-MES-INF) + WRK-VALOR-VENDA.
               PERFORM 0100-INICIAR.

           0200-PROCESSAR-FIM.
      *----------------------------------------------------------------*
           0300-FINALIZAR.
           DISPLAY ' ######   FINAL  ###### '.
           DISPLAY '| MES |     VALOR     |'.
           PERFORM VARYING WRK-MES-INF FROM 1 BY 1
              UNTIL WRK-MES-INF > 12
           DISPLAY '| 'WRK-MES-INF'  | 'WRK-ACM-VENDA(WRK-MES-INF)' |'
           END-PERFORM.
           STOP RUN.
           0300-FINALIZAR-FIM.
      *----------------------------------------------------------------*
