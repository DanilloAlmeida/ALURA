const cliente ={
    nome: "Andre",
    idade: 36,
    cpf: "32165498787",
    email: "andre@mail.com"
}
// console.log(`Meu nome é ${cliente.nome} e tenho ${cliente.idade} anos.`)
// console.log(cliente.cpf.substring(0, 3))

const chaves = ["nome", "idade", "cpf", "email"]

// console.log(cliente[chaves[0]])
// console.log(cliente[chaves[1]])
// console.log(cliente["cpf"])
// console.log(cliente["email"])


chaves.forEach(info=>console.log(cliente[info]))