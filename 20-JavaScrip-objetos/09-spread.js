const fichaGuerreiro={
    nome: "Aragorn",
    classe: "guerreiro"
}

const equipamentoGuerreiro={
    espada: "Andúril",
    capa: "capa élfica +2"
}

let guerreiro = {fichaGuerreiro, equipamentoGuerreiro}
console.table(guerreiro)

guerreiro = {... fichaGuerreiro, ... equipamentoGuerreiro}
console.table(guerreiro)