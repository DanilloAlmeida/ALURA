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
        , {
            nome: 'Samia Maria'
            , parentesto: 'filha'
            , dataNascimento: '04/01/2014'
        }
        , {
            nome: 'Samia Silva',
            parentesco: 'filha',
            dataNascimento: '04/01/2014'
        }
    ]
    , saldo:100
    , depositar:function(valor)
    {
        this.saldo += valor
    }
}

let relatorio="";

for (let info in cliente){

    if (typeof cliente[info] === "object" ||
       typeof cliente[info] === "function"){
            continue       
    }else{
        relatorio += `${info}: ${cliente[info]}\n`
    }    
}
console.log(relatorio)