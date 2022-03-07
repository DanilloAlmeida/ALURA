// const lukeLogin = () =>{
//     let array=[]
//     for (let index = 0; index < 90000; index++) {
//         array.push(index);        
//     }
//     return "Luke logado com sucesso"
// }

// const leiaLogin = () =>{
//     let array=[]
//     for (let index = 0; index < 9; index++) {
//         array.push(index);        
//     }
//     return "Leia logada com sucesso"
// }

// console.log(lukeLogin())
// console.log(leiaLogin())


// //********melhorando*********/

// const usuarioLogin = (nome) =>{
//     let array=[]
//     for (let index = 0; index < 90000; index++) {
//         array.push(index);        
//     }
//     return `${nome} logad@ com sucesso`
// }
// console.log(usuarioLogin("Leia"))
// console.log(usuarioLogin("Luke"))



//********melhorando*********/
const acesso = (nome)=>{
    return `${nome} logad@ com sucesso`
}

const autentica = (cogidoCargo)=>{
    let array=[]
    for (let index = 0; index < cogidoCargo; index++) {
        array.push(index); 
    }
    return true;
}  

const login = (pessoa, autentica) => {
    if (pessoa.cargo ==="Diretora") {
        autentica(900000)  
    }else{
        if (pessoa.cargo ==="Funcionário") {
            autentica(90000) 
        }
    }
    return acesso (pessoa.nome)
}

console.log(login({cargo: `Diretora`, nome:`Leia`}, autentica))
console.log(login({cargo: `Funcionário`, nome:`Luke`}, autentica))