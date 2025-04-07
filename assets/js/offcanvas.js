document.addEventListener('DOMContentLoaded', function() {
    
    // Elementos
    const overlay = document.getElementById('overlay');
    const btnAbrir = document.getElementById('abrirOverlay');
    const btnFechar = document.querySelector('.fechar');
    
    // Abrir overlay
    btnAbrir.addEventListener('click', function(e) {
        e.preventDefault()
        overlay.style.display = 'flex';
    });
    
    // Fechar overlay
    btnFechar.addEventListener('click', function(e) {
        e.preventDefault()
        overlay.style.display = 'none';
    });
});