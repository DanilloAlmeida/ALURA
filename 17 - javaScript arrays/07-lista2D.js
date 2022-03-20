const alunos =['João', 'Juliana', 'Caio', 'Ana']
const mediaAlunos = [10, 7, 9, 6]

let listaDeNomesENotas = [alunos, mediaAlunos]

for(let i = 0; i<=4; i++){
    console.log(`${listaDeNomesENotas[i][i]}, sua nota é: ${listaDeNomesENotas[(i+1)][i]}`)
}   