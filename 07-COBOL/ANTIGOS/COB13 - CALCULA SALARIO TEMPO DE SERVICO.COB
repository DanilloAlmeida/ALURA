      ******************************************************************
      *AUTHOR..: DANILLO
      *OBJETIVO: CALCULA AUMENTO POR TEMPO DE SERVIÇO
      *DATA....: 19/10/21
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID. PROGCOB13.
      ******************************************************************
       ENVIRONMENT DIVISION.
      *----------------------------------------------------------------*
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      ******************************************************************
       DATA DIVISION.
      *----------------------------------------------------------------*
       WORKING-STORAGE       SECTION.
       77  WRK-NOME         PIC  X(20)        VALUE SPACES.
       01  WRK-DATA-ENTRADA.
          02  WRK-DIA-ENTRADA  PIC  9(02)        VALUE ZEROS.
          02  WRK-MES-ENTRADA  PIC  9(02)        VALUE ZEROS.
          02  WRK-ANO-ENTRADA  PIC  9(04)        VALUE ZEROS.
       77  WRK-SALARIO      PIC  9(09)V99     VALUE ZEROS.
       01  WRK-DATA-ATUAL
          02 WRK-DIA-ATUAL PIC  9(02)        VALUE ZEROS.
          02 WRK-MES-ATUAL PIC  9(02)        VALUE ZEROS.
          02 WRK-ANO-ATUAL PIC  9(04)        VALUE ZEROS.
      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
           DISPLAY 'INFORME SEU NOME: '.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'INFORME  A DATA DE ENTRADA NA EMPRESA NO FORMATO'
                    + 'DDMMAAAA: '.
           ACCEPT WRK-ANO-ENTRADA FROM CONSOLE.
           ACCEPT WRK-DATA-ATUAL  FROM DATE.
           DISPLAY ' ######   DADOS RECEBIDOS  ###### '.
           DISPLAY 'NOME............: ' WRK-NOME.
           DISPLAY 'ANO DE ENTRADA..: ' WRK-ANO-ENTRADA.
           DISPLAY 'DATA ATUAL ' WRK-DATA-ATUAL.
           DISPLAY ' ######  DADOS CALCULADOS  ###### '.


           STOP RUN.
