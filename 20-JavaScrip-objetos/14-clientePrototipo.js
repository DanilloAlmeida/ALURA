function Cliente (nome, cpf, email, saldo){
    this.nome = nome
    this.cpf = cpf
    this.email = email
    this.saldo = saldo
    this.depositar = function(valor){
        this.saldo += valor
    }    
}

const andre = new Cliente (
    "Andre",
    "111222333",
    "andre@email.com",
    100
)

function ClientePoupanca (nomeEnt, cpfEnt, emailEnt, saldoEnt, saldoPEnt){
    Cliente.call(this, nomeEnt, cpfEnt, emailEnt, saldoEnt)
    this.saldoP = saldoPEnt
}

const ju = new ClientePoupanca (
    "Ju",
    "111222333",
    "ju@memail.com",
    100,
    200)

ClientePoupanca.prototype.depositarPoupanca=function(valor){
    this.saldoP += valor
}

console.log(andre.hasOwnProperty("saldoPoup"))
console.log(ju.hasOwnProperty("saldoPoup"))
console.log(andre instanceof Cliente)
console.log(typeof andre)
console.log(typeof ju)
console.log(ju instanceof ClientePoupanca)
console.log(Function.prototype.isPrototypeOf(Cliente))
console.log(Cliente.constructor === Function)