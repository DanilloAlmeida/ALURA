// const pessoa = {
//     nome: "Ana",
//     email: "ana@email.com",
//     imprimeNome: function (){
//         console.log(`${pessoa.nome}`)
//     }
// }

// pessoa.imprimeNome()

//----------------------------------------------------------//
// usando o this
// const pessoa = {
//     nome: "Ana",
//     email: "ana@email.com",
//     imprimeNome: function (){
//         console.log(`${this.nome}`)
//     }
// }
// pessoa.imprimeNome()

//----------------------------------------------------------//
// outro exemplo com this

function imprimeNome(){
    console.log(`nome: ${this.nome}  \nemail: ${this.email}\n\n`)
}

const pessoa1 = {
    nome: "Ana",
    email: "ana@email.com",
    imprimeInfo: imprimeNome 
}
const pessoa2 = {
    nome: "Joana",
    email: "joana@email.com",
    imprimeInfo: imprimeNome 
}

pessoa1.imprimeInfo()
pessoa2.imprimeInfo()