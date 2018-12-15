import flatpickr from 'flatpickr';

const numberWithCommas = (number) => {
  return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

const parseDate = (string) => {
  const pattern = /(\d{2})-(\d{2})-(\d{4})/;
  return new Date(string.replace(pattern,'$3-$2-$1'));
}

const updateCosts = function(hours) {
  const costs = document.querySelector('.costs')

  if (costs) {
    let hoursElem = document.getElementById('hours');
    let priceElem = document.getElementById('price');
    let serviceFeeElem = document.getElementById('service-fee');
    let totalPriceElem = document.getElementById('total-price');

    let hourRate = JSON.parse(costs.dataset.rate);
    let price = hours * hourRate;
    let serviceCharge = parseFloat(price) * 0.15;
    let totalPrice = serviceCharge + price;

    hoursElem.innerHTML = hours;
    priceElem.innerHTML = numberWithCommas(price.toFixed(2));
    serviceFeeElem.innerHTML = numberWithCommas(serviceCharge.toFixed(2));
    totalPriceElem.innerHTML = numberWithCommas(totalPrice.toFixed(2));
  }
}

const toggleDateInputs = function() {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');
  const costs = document.querySelector('.costs');

  if (startDateInput && endDateInput) {
    const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)

    flatpickr(startDateInput, {
    minDate: 'today',
    dateFormat: 'd-m-Y',
    disable: unvailableDates,
    onChange: function(selectedDates, selectedDate) {
      if (selectedDate === '') {
        costs.classList.remove('is-visible');
        endDateInput.disabled = true;
      }
      let minDate = selectedDates[0];
      minDate.setDate(minDate.getDate() + 1);
      endDateCalendar.set('minDate', minDate);
      endDateInput.disabled = false;
    }
  });
    const endDateCalendar =
      flatpickr(endDateInput, {
        dateFormat: 'd-m-Y',
        disable: unvailableDates,
        onChange: function(_, selectedDate) {
          if (selectedDate === '') {
            costs.classList.remove('is-visible');
          } else {
            let startDate = parseDate(startDateInput.value);
            let endDate = parseDate(endDateInput.value);
            let hours = Math.ceil((endDate - startDate) / (1000 * 3600 * 24)) * 6;
            updateCosts(hours);
            costs.classList.add('is-visible');
          }
        },
      });
  }
};

export { toggleDateInputs }
