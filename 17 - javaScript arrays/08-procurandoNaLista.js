const alunos =['João', 'Juliana', 'Caio', 'Ana']
const mediaAlunos = [10, 7, 9, 6]

let listaDeNomesENotas = [alunos, mediaAlunos]

const exibeNomeNota = (aluno) =>{
    if (listaDeNomesENotas[0].includes(aluno)){
        indice = listaDeNomesENotas[0].indexOf(aluno)
        return listaDeNomesENotas[0][indice] + ', sua media eh: ' + listaDeNomesENotas[1][indice]
    }else{
        return "Aluno não cadastrado"
    }
}

console.log(exibeNomeNota("Ana"))