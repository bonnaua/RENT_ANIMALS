const displayBookings = () => {
  const btnBookings = document.getElementById('btn-bookings');
  const btnRequests = document.getElementById('btn-requests');

  const myBookings = document.getElementById('my-bookings');
  const bookingsRequests = document.getElementById('bookings-requests');

  btnBookings.addEventListener('click', (event) => {
    bookingsRequests.style.display = 'none';
    myBookings.style.display = null;
  });

  btnRequests.addEventListener('click', (event) => {
    myBookings.style.display = 'none';
    bookingsRequests.style.display = null;
  });
};

export { displayBookings };
