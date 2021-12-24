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
          02  WRK-ANO-ENTRADA  PIC  9(02)        VALUE ZEROS.
       77  WRK-SALARIO         PIC  9(09)V99     VALUE ZEROS.
       01  WRK-DATA-ATUAL.
           02 WRK-ANO-ATUAL  PIC  9(02)        VALUE ZEROS.
           02 WRK-MES-ATUAL  PIC  9(02)        VALUE ZEROS.
           02 WRK-DIA-ATUAL  PIC  9(02)        VALUE ZEROS.
       77  WRK-TEMPO-SERVICO PIC  9(02)        VALUE ZEROS.
       77  WRK-PERCEN-AUMEN  PIC  9(03)        VALUE ZEROS.
      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
           DISPLAY 'INFORME SEU NOME: '.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'INFORME  A DATA DE ENTRADA NA EMPRESA NO FORMATO'
                    ' DDMMAA: '.
           ACCEPT WRK-DATA-ENTRADA FROM CONSOLE.
           ACCEPT WRK-DATA-ATUAL  FROM DATE.
           DISPLAY ' ######   DADOS RECEBIDOS  ###### '.
           DISPLAY 'NOME............: ' WRK-NOME.
           DISPLAY 'DATA DE ENTRADA..: ' WRK-DATA-ENTRADA.
           DISPLAY 'DIA DE ENTRADA..: ' WRK-DIA-ENTRADA.
           DISPLAY 'MES DE ENTRADA..: ' WRK-MES-ENTRADA.
           DISPLAY 'ANO DE ENTRADA..: ' WRK-ANO-ENTRADA.
           DISPLAY 'DATA ATUAL ' WRK-DATA-ATUAL.
           DISPLAY 'DIA ATUAL..: ' WRK-DIA-ATUAL.
           DISPLAY 'MES ATUAL..: ' WRK-MES-ATUAL.
           DISPLAY 'ANO ATUAL ' WRK-ANO-ATUAL.
           DISPLAY ' '.
           DISPLAY ' ######  DADOS CALCULADOS  ###### '.

           IF WRK-ANO-ENTRADA > WRK-ANO-ATUAL
               OR WRK-MES-ENTRADA > 12
               OR WRK-DIA-ENTRADA > 31
               OR WRK-MES-ENTRADA < 1
               OR WRK-DIA-ENTRADA < 1

                   DISPLAY 'DATA INVALIDA!!! '
                   STOP RUN
           END-IF.

           IF WRK-ANO-ENTRADA = WRK-ANO-ATUAL
               DISPLAY 'ENTROU ESSE ANO'
               COMPUTE WRK-TEMPO-SERVICO = 0
           ELSE
               IF WRK-MES-ENTRADA < WRK-MES-ATUAL
                     DISPLAY 'JAH FEZ ANIVERSARIO'
                     COMPUTE WRK-TEMPO-SERVICO = (WRK-ANO-ATUAL
                             - WRK-ANO-ENTRADA)
               ELSE
                   IF WRK-DIA-ENTRADA <= WRK-DIA-ATUAL
                      DISPLAY 'EH MES DE ANIVERSARIO E JAH FEZ'
                      COMPUTE WRK-TEMPO-SERVICO = (WRK-ANO-ATUAL
                             - WRK-ANO-ENTRADA)
                   ELSE
                      DISPLAY 'EH MES DE ANIVERSARIO MAS AINDA NAO FEZ'
                      COMPUTE WRK-TEMPO-SERVICO = (WRK-ANO-ATUAL
                             - WRK-ANO-ENTRADA) - 1
                   END-IF
               END-IF
           END-IF.

           DISPLAY 'TEMPO DE SERVIÇO..: ' WRK-TEMPO-SERVICO ' ANOS'.

           EVALUATE WRK-TEMPO-SERVICO
              WHEN 0 THRU 1
                 COMPUTE WRK-PERCEN-AUMEN = 0
              WHEN 2 THRU 5
                 COMPUTE WRK-PERCEN-AUMEN = 5
              WHEN 6 THRU 15
                 COMPUTE WRK-PERCEN-AUMEN = 10
              WHEN OTHER
                 COMPUTE WRK-PERCEN-AUMEN = 15
           END-EVALUATE
           DISPLAY 'PERCENTUAL DE AUMENTO: ' WRK-PERCEN-AUMEN

           STOP RUN.
