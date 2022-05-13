const cliente ={
    nome: "Andre",
    idade: 36,
    cpf: "32165498787",
    email: "andre@mail.com",
    fones:["31010001","31010002"]
}

cliente.fones.forEach(fone => console.log(fone))

function meuForEach (array){
    for (var i=0; i< array.length; i++){
        console.log(array[i])
    }
}
meuForEach(cliente.fones)