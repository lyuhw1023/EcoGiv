window.addEventListener('scroll', function() {
  var navbar = document.getElementById('navbar');
  if (window.scrollY > 50) {
      navbar.classList.add('scroll-active');
  } else {
      navbar.classList.remove('scroll-active');
  }
});


// Toggle button functionality
document.addEventListener("DOMContentLoaded", function() {
    const toggleButtons = document.querySelectorAll(".toggle-button");
    
    toggleButtons.forEach(button => {
        button.addEventListener("click", function() {
            // Remove active class from all buttons in the group
            this.parentElement.querySelectorAll(".toggle-button").forEach(btn => btn.classList.remove("active"));
            // Add active class to the clicked button
            this.classList.add("active");
            // Update hidden input value
            this.parentElement.querySelector("input[type='hidden']").value = this.dataset.value;
        });
    });
});
