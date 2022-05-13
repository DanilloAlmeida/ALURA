let objLivro = {
    id: 50,
    titulo: "Primeiros passos com NodeJS",
    autor: "João Rubens",
    categoria: "programação",
    versoes: ["ebook", "impresso"]
}

const jsonLivro = JSON.stringify(objLivro)
console.log(jsonLivro)

let objLivro2 = JSON.parse(jsonLivro)

console.table(objLivro2)