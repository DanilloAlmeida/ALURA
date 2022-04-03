#!/bin/bash

cd ~/'Área de Trabalho'/ALURA/ALURA/12-Shell-1/imagens-novos-livros

for arquivo in *
do
    if [ -d $arquivo ]
    then
        echo "achou diretorio..: "$arquivo
#        echo $arquivo
    else
        echo "achou arquivo....: "$arquivo
    fi
done
