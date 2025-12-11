document.getElementById('orderForm').addEventListener('submit', function (e) {
    e.preventDefault();

    const name = document.getElementById('name').value;
    const bikeType = document.getElementById('bikeType').value;
    const quantity = document.getElementById('quantity').value;
    const address = document.getElementById('address').value;

    const confirmation = document.getElementById('confirmation');
    confirmation.classList.remove('hidden');
    confirmation.innerHTML = `
        <h3>Thank you, ${name}!</h3>
        <p>Your order for ${quantity} ${bikeType}(s) has been received.</p>
        <p>It will be shipped to:</p>
        <p>${address}</p>
    `;

    // Optionally reset the form
    document.getElementById('orderForm').reset();
});
