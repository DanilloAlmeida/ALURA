function imprimeNomeEmail(tipoCliente){
    console.log(`${tipoCliente} - nome: ${this.nome}, email: ${this.email}`)
}

const cliente01 = {
    nome: "Carlos",
    email: "carlos@mail.com"
}

const cliente02 = {
    nome: "Fred",
    email: "f@mail.com"
}

imprimeNomeEmail.call(cliente01, "cliente especial")