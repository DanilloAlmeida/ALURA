function Cliente (nome, cpf, email, saldo){
    this.nome = nome
    this.cpf = cpf
    this.saldo = saldo
    this.depositar = function(valor){
        this.saldo += valor
    }
}

const andre = new Cliente(
    "Andre",
    "12345678998",
    "andre@email.com",
    100    
)

console.log(andre)

console.table(andre)