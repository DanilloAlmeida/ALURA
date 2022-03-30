const notas = [10, 6.5, 8, 7.5 ]
let somaDasNotas = 0

// notas.forEach(nota =>{
//     somaDasNotas += nota
// })
function soma ( n ){
    somaDasNotas += n
    return somaDasNotas
}

notas.forEach (soma)

let media = somaDasNotas/notas.length

console.log(media)