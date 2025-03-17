// Simple dark mode toggle
document.addEventListener("DOMContentLoaded", function() {
  const toggle = document.getElementById('dark-mode-toggle');

  toggle.addEventListener('click', function() {
    document.body.classList.toggle('theme-base-0d');
    document.body.classList.toggle('theme-base-08');
  });
});
