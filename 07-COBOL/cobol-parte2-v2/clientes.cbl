      ******************************************************************
      * Author: DANILLO
      * Date:
      * Purpose: CRUD CLIENTES
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      ******************************************************************
       PROGRAM-ID. CLIENTES.
      ******************************************************************
       DATA DIVISION.
      ******************************************************************
       FILE SECTION.
      *------------------------
       WORKING-STORAGE SECTION.
      *------------------------
       77 WRK-OPCAO   PIC  X(01).
       77 WRK-MODULO  PIC  X(25).

      *------------------------
       SCREEN SECTION.
      *------------------------
       01 TELA.
          05 LIMPA-TELA.
             10 BLANK SCREEN.
             10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
      *          BACKGROUND-COLOR 1.
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
             05 LINE 13 COLUMN 15 VALUE 'OPCAO..:'.
             05 LINE 13 COLUMN 28 USING WRK-OPCAO.

      ******************************************************************
       PROCEDURE DIVISION.
      ******************************************************************
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
      *    PERFORM 2000-PRECESSAR.
      *    PERFORM 3000-FINALIZAR.
      *----------------------------------------------------------------*
       1000-INICIAR SECTION.
      *----------------------------------------------------------------*
           DISPLAY TELA.
           ACCEPT MENU.
      *----------------------------------------------------------------*
       2000-PROCESSAR SECTION.
      *----------------------------------------------------------------*

           MOVE 'MODULO - INCLUSAO' TO WRK-MODULO

           STOP RUN.
       END PROGRAM CLIENTES.
