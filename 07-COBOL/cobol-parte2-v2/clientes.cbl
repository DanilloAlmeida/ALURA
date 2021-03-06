      ******************************************************************
      * Author: DANILLO
      * Date:
      * Purpose: CRUD CLIENTES
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID. CLIENTES.
      ******************************************************************
       ENVIRONMENT DIVISION.
      *----------------------------------------------------------------*
       INPUT-OUTPUT SECTION.
      *---------------------
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO 'D:\CLIENTES.DAT'
              ORGANIZATION IS INDEXED
              ACCESS MODE IS RANDOM
              FILE STATUS IS CLIENTES-STATUS
              RECORD KEY CLIENTES-CHAVE.
      ******************************************************************
       DATA DIVISION.
      *----------------------------------------------------------------*
       FILE SECTION.
      *-------------
       FD CLIENTES.
       01 CLIENTES-REG.
          05 CLIENTES-CHAVE.
             10 CLIENTES-FONE     PIC 9(09).
          05 CLIENTES-NOME        PIC X(30).
          05 CLIENTES-EMAIL       PIC X(40).
      *------------------------
       WORKING-STORAGE SECTION.
      *------------------------
       77 WRK-OPCAO            PIC   X(01).
       77 WRK-MODULO           PIC   X(25).
       77 WRK-OPCAO-RELATO     PIC   X(1).
       77 WRK-TECLA            PIC   X(1).
       77 CLIENTES-STATUS      PIC   9(02).

      *------------------------
       SCREEN SECTION.
      *------------------------
       01 TELA.
          05 LIMPA-TELA.
             10 BLANK SCREEN.
             10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                 BACKGROUND-COLOR 2.
             10 LINE 01 COLUMN 25 PIC X(20)
                 BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                 FROM 'SISTEMA DE CLIENTES'.
             10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                 BACKGROUND-COLOR 1 FROM WRK-MODULO.
       01 MENU.
             05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
             05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
             05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
             05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
             05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
             05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
             05 LINE 13 COLUMN 15 VALUE 'OPCAO..: '.
             05 LINE 13 COLUMN 24 USING WRK-OPCAO.

       01 MENU-RELATORIO.
             05 LINE 12 COLUMN 55 VALUE '1 - EM TELA'.
             05 LINE 13 COLUMN 55 VALUE '2 - EM DISCO'.
             05 LINE 14 COLUMN 55 VALUE 'OPCAO...: '.
             05 LINE 14 COLUMN 65 USING WRK-OPCAO-RELATO.

      ******************************************************************
       PROCEDURE DIVISION.
      ******************************************************************
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.
      *----------------------------------------------------------------*
       1000-INICIAR SECTION.
      *---------------------
           OPEN I-O CLIENTES
              IF CLIENTES-STATUS = 35 THEN
                 OPEN OUTPUT CLIENTES
                 CLOSE CLIENTES
                 OPEN I-O CLIENTES
              END-IF.
      *----------------------------------------------------------------*
           DISPLAY TELA.
           ACCEPT MENU.
      *----------------------------------------------------------------*
       2000-PROCESSAR SECTION.
      *----------------------------------------------------------------*

           EVALUATE WRK-OPCAO
              WHEN 1
                 PERFORM 4000-INCLUIR
              WHEN 2
                 DISPLAY "VOCE INFORMOU 2"
                 CONTINUE
              WHEN 3
                 CONTINUE
              WHEN 4
                 CONTINUE
              WHEN 5
                 ACCEPT MENU-RELATORIO
                 IF WRK-OPCAO-RELATO EQUAL 1
                    PERFORM 5000-RELATORIO-TELA
                 END-IF
                 IF WRK-OPCAO-RELATO EQUAL 2
                    PERFORM 5010-RELATORIO-DISCO
                 END-IF
              WHEN OTHER
                 IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY ' ENTRADA INVALIDA!!!'
                    ACCEPT WRK-TECLA
                 END-IF
              END-EVALUATE.

      *----------------------------------------------------------------*
       4000-INCLUIR  SECTION.
      *----------------------------------------------------------------*
           MOVE 'NODULO - INCLUSAO' TO WRK-MODULO.
           DISPLAY TELA.
           ACCEPT WRK-TECLA AT 1620.

      *----------------------------------------------------------------*
       5000-RELATORIO-TELA  SECTION.
      *-----------------------------
           CONTINUE.
      *----------------------------------------------------------------*
       5010-RELATORIO-DISCO  SECTION.
      *------------------------------
           CONTINUE.
      *----------------------------------------------------------------*
       3000-FINALIZAR SECTION.
      *-----------------------
           CLOSE CLIENTES.
      *----------------------------------------------------------------*
