const main = document.getElementById('main');
const emblaNodes = main.getElementsByClassName('embla');

[...emblaNodes].forEach(emblaNode => {
    embla_init(emblaNode)
});