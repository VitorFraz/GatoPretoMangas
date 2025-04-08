document.addEventListener("DOMContentLoaded", function () {
    // Abrir overlay
    document.querySelectorAll(".abrirOverlay").forEach((btn) => {
        btn.addEventListener("click", () => {
            const card = btn.closest(".plano_card");
            const overlay = card.querySelector(".overlay");

            if (overlay) {
                overlay.style.bottom = "0";
            }
        });
    });

    // Fechar overlay
    document.querySelectorAll(".fecharOverlay").forEach((btn) => {
        btn.addEventListener("click", () => {
            const overlay = btn.closest(".overlay");
            if (overlay) {
                overlay.style.bottom = "-100%";
            }
        });
    });
});
