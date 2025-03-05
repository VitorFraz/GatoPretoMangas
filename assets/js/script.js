const carrossel = document.querySelector('.carrossel');
const items = document.querySelectorAll('.carrossel .item');
const totalItems = items.length;

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
    
    // Quando chegar ao final dos itens, reseta a posição para o início sem mostrar o "gap"
    if (index === totalItems * 2) {
        setTimeout(() => {
            carrossel.style.transition = 'none'; // Desativa a transição
            carrossel.style.transform = 'translateX(0)'; // Reseta a posição para o início
            index = totalItems; // Faz o carrossel voltar à primeira imagem
        }, 500); // Aguarda meio segundo para transição suave
    } else {
        // Movimenta o carrossel de forma suave
        carrossel.style.transition = 'transform 0.5s ease';
        carrossel.style.transform = `translateX(-${index * 260}px)`; // Move o carrossel para a próxima imagem
    }
}

// Chama a função de duplicação para criar o loop infinito
duplicateItems();

// Configura o intervalo para mover o carrossel a cada 3 segundos
setInterval(moveCarrossel, 3000);
