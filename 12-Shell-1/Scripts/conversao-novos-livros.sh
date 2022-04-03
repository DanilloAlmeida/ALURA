#!/bin/bash

converte_imagem(){
	local caminho_imagem=$1
	local imagem_sem_extensao=$(ls $caminho_imagem | awk -F. '{print $1}')
	echo "convertendo"
#	$imagem_sem_extensao
	convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png
}

varrer_diretorio(){
#	passsa conteudo do primeiro parametro
#	/home/danillo/Área de Trabalho/ALURA/ALURA/12-Shell-1/imagens-novos-livros
#	~/Downloads/Imagem-novos-livros
	cd $1
	for arquivo in *
	do
		local caminho_arquivo=$(find ~/Downloads/imagens-novos-livros -name $arquivo)
		if [ -d $caminho_arquivo ]
		then
			#Entrar no diretorio e varrer todo conteudo
			echo "entrou no diretorio"
#			pwd
			varrer_diretorio $caminho_arquivo
		else
			# eh imagem: converte
			echo "vai converter"
			converte_imagem $caminho_arquivo
		fi
	done
}
varrer_diretorio ~/Downloads/imagens-novos-livros
if [ $? -eq 0 ]
then
	echo "Conversao realizada com sucesso"
else
	echo "Falha na conversão"	
fi
