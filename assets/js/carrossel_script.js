const carrossel = document.querySelector('.carrossel');
const items = document.querySelectorAll('.carrossel .item');
const totalItems = items.length;

// Calcula a largura total de cada item (imagem + margens)
const itemWidth = 250 + 5 + 5; // largura da imagem + margem esquerda + margem direita

// Clonar os itens para criar um loop infinito
function duplicateItems() {
    const clonedItems = [];
    items.forEach(item => {
        clonedItems.push(item.cloneNode(true)); // Clona cada item
    });

    clonedItems.forEach(clonedItem => {
        carrossel.appendChild(clonedItem); // Adiciona os clones ao carrossel
    });
}

// Função para mover o carrossel
let index = 0;
function moveCarrossel() {
    index++;

    if (index === totalItems * 2) {
        setTimeout(() => {
            carrossel.style.transition = 'none';
            carrossel.style.transform = 'translateX(0)';
            index = totalItems;
        }, 500);
    } else {
        carrossel.style.transition = 'transform 0.5s ease';
        carrossel.style.transform = `translateX(-${index * itemWidth}px)`;
    }
}

// Executa as funções
duplicateItems();
setInterval(moveCarrossel, 3000);
