// Smooth scroll to section when clicking on navigation links
const navLinks = document.querySelectorAll('nav a[href^="#"]');
for (const link of navLinks) {
  link.addEventListener('click', (e) => {
    e.preventDefault();
    const target = document.querySelector(link.getAttribute('href'));
    if (target) {
      window.scrollTo({
        top: target.offsetTop,
        behavior: 'smooth'
      });
    }
  });
}

// Show or hide the mobile navigation menu
const menuToggle = document.querySelector('.menu-toggle');
const mobileNav = document.querySelector('.mobile-nav');
menuToggle.addEventListener('click', () => {
  mobileNav.classList.toggle('open');
});

// Validate and submit the contact form
const contactForm = document.querySelector('#contact-form');
contactForm.addEventListener('submit', (e) => {
  e.preventDefault();
  const name = document.querySelector('#name').value;
  const email = document.querySelector('#email').value;
  const message = document.querySelector('#message').value;

  // Perform form validation here (e.g., check for empty fields, valid email format)

  // Simulate form submission (replace with actual form submission logic)
  console.log(`Form submitted:
    Name: ${name}
    Email: ${email}
    Message: ${message}`);
  contactForm.reset();
});
