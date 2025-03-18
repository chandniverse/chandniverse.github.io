
document.addEventListener("DOMContentLoaded", function() {
  const toggle = document.getElementById('dark-mode-toggle');
  if (toggle) {
    toggle.addEventListener('click', function() {
      document.body.classList.toggle('theme-base-08');
      document.body.classList.toggle('theme-base-0d');
    });
  }
});
