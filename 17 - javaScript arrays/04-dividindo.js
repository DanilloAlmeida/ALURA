const nomes = ['João'       ,'Juliana'  , 'Ana'
    ,'Caio'     ,'Lara'     ,'Marjorie' , 'Guilherme'
    ,'Aline'    ,'Fabiana'  ,'Andre'    , 'Carlos'
    ,'Paulo'    ,'Bia'      ,'Vivian'   , 'Isabela'
    ,'Renata'   ,'Daisy'      ,'Camilo' , 'Vinicius'
    , 'Renan']

console.log("tamanho do array: ", nomes.length)    

const sala1 = nomes.slice(0, nomes.length/2)
console.log(nomes)

 const sala2 = nomes.slice(10, nomes.length)
//const sala2 = nomes.slice(nomes.length/2)
console.log(`Alunos da sala 1: ${sala1}`)
console.log(`Alunos da sala 2: ${sala2}`)
console.log(nomes)