// nova linha inserida no windows
// preciso manter essas duas linhas
function Cliente (nomeEntrada, cpfEntrada, emailEntrada, saldoEntrada){
    this.nome = nomeEntrada
    this.cpf = cpfEntrada
    this.email = emailEntrada
    this.saldo = saldoEntrada
    this.depositar = function(valor){
        this.saldo += valor
    }
}

function ClientePoupanca(nomeEntradaPoup, cpfEntradaPoup, emailEntradaPoup, saldoEntradaPoup, saldoPoupancaEntradaPoup){
    Cliente.call(this, nomeEntradaPoup, cpfEntradaPoup, emailEntradaPoup,  saldoEntradaPoup)
    this.saldoPoupanca=saldoPoupancaEntradaPoup
}

const clientePoupanca01 = new ClientePoupanca (
    "Joao",
    "554455545",
    "ju@mail.com",
    100,
    200    
)

console.table(clientePoupanca01)

ClientePoupanca.prototype.depositarPoupanca = function(valor){
    this.saldoPoupanca += valor
}
clientePoupanca01.depositarPoupanca(50)
console.table(clientePoupanca01)
