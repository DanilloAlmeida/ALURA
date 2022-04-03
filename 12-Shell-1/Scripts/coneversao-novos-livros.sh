
#!/bin/bash

cd ~/Downloads/Imagem-novos-livros

for arquivo in *
do
   if [ -d $arquivo ]
   then
      #Entrar no diretorio e varrer todo conteudo
      cd $arquivo
      for conteudo_arquivo in * do
         if [ -d $conteudo_arquivo] then
            # Entrar no diretorio e varrer todo o conteudo
      
   else
      # eh imagem: converte
   fi
done
