// const cliente ={
//     nome: "Andre",
//     idade: 36,
//     cpf: "32165498787",
//     email: "andre@mail.com"
// }

// console.log(cliente);
// cliente.fone = "61 984767355";
// console.log(cliente);
// cliente.fone = "984767355";
// console.log(cliente);
const objPersonagem = {
    nome: "Gandlf",
    classe: "mago",
    nivel: "20",
    aliado: {
        nome: "Saruman",
        classe: "mago"
    },
    status: "desaparecido"
}
console.log(objPersonagem)
console.log ("\n\n deletando .aliado")
delete objPersonagem.aliado
console.log(objPersonagem)


console.log ("\n\n deletando 'status'")
delete objPersonagem["status"]
console.log(objPersonagem)
