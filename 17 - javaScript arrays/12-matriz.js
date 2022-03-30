const notas1 = [10 , 6.5, 8, 7.5 ] //8
const notas2 = [9  , 6  , 6.0] //7
const notas3 = [8.5, 9.8]//9,15

mediaNotas = []

const notasGerais = [notas1, notas2, notas3]
let media = 0
let mediaParcial = 0

for (let i = 0; i< notasGerais.length; i++){
    for (let j=0; j< notasGerais[i].length; j++){
        media += notasGerais [i][j]/notasGerais[i].length        
        mediaParcial += notasGerais [i][j]/notasGerais[i].length
    }
    //console.log(`A media parcial eh: ${mediaParcial}`)
    mediaNotas.push(mediaParcial)
    mediaParcial=0
}
media = media/notasGerais.length
console.log(`Media geral: ${media}`)

for (let i = 0; i< mediaNotas.length; i++){
    console.log(`A media da nota ${i+1} eh: ${mediaNotas[i]}`)    
}
