const cliente ={
    nome: 'Andre'
    , idade: 36
    , cpf: '32165498787'
    , email: 'andre@mail.com'
    , fones:['31010001','31010002']
    , dependentes:[
        {
            nome: 'Sara Silva'
            , parentesco: 'filha'
            , dataNascimento: '20/03/2011'}
        , 
        {
            nome: 'Samia Maria'
            , parentesto: 'filha'
            , dataNascimento: '04/01/2014'
        }
    ]
    , saldo:100
    , depositar:function(valor)
    {
        this.saldo += valor
    }
}

cliente.dependentes.push({
    nome: 'Samia Silva',
    parentesco: 'filha',
    dataNascimento: '04/01/2014'
})

// console.log(cliente)

// const filhaMaisNova = cliente.dependentes.filter
// (dependente => dependente.dataNascimento==='04/01/2014')

// console.log(filhaMaisNova[0].nome)

console.log(cliente.saldo)
cliente.depositar(100)
console.log("veja o saldo após o deposito: " + cliente.saldo )