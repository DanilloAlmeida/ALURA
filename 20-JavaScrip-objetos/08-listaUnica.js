const cliente =
[
    {
        nome: 'Andre'
        , idade: 36
        , cpf: '32165498787'
        , email: 'andre@mail.com'
        , fones:['31010001','31010002']
        , dependentes:
        [   
            { 
                nome: 'Sara Silva'
                , parentesco: 'filha'
                , dataNascimento: '20/03/2011'
            }
        ,
            { 
                nome: 'Samia Maria'
                , parentesto: 'filha'
                , dataNascimento: '04/01/2014'
            }
        , 
            { 
                nome: 'Samia Silva',
                parentesco: 'filha',
                dataNascimento: '04/01/2014'
            }
        ],
    }
,    
    {
        nome: 'Juliana'
        , idade: 36
        , cpf: '32165498787'
        , email: 'andre@mail.com'
        , fones:['31010001','31010002']
        , dependentes:[{
            nome: 'Sophia'
            , parentesco: 'filha'
            , dataNascimento: '20/03/2011'
        }]
    }
]
const listaDependente = [...cliente[0].dependentes, ...cliente[1].dependentes]
console.table(listaDependente)