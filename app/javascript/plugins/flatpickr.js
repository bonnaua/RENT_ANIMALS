import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#range_start", {
    dateFormat: "Y-m-d",
    altInput: true,
    minDate: "today",
    plugins: [new rangePlugin({ input: "#range_end"})],
    onClose: function (selectedDates, dateStr, instance) {
      const days = document.querySelectorAll('.inRange');
      const numberOfDays = days.length + 2;
      const daysFields = document.getElementById('duration');
      const pricePerDay = document.getElementById('animal_price');
      const totalPrice = pricePerDay.value * numberOfDays
      const totalPriceField = document.getElementById('total-price');
      daysFields.innerText = numberOfDays;
      totalPriceField.innerText = totalPrice;
      const inputTotalPrice = document.getElementById('input_total_price');
      const inputNumberOfDays = document.getElementById('input_number_of_days');
      inputTotalPrice.value = totalPrice;
      inputNumberOfDays.value = numberOfDays;
    }
  });
}

export { initFlatpickr };
