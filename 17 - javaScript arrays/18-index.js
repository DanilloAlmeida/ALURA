const numeros = [4, 5, 6, 2]
const soma = numeros.reduce((acum, atual) => atual + acum, 0)

function multiplicar (num1 , num2){
    return num1 * num2    
}

const resultadoMultilicacao = numeros.reduce(multiplicar, 1)

console.log(soma)
console.log(resultadoMultilicacao)