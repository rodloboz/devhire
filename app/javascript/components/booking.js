import flatpickr from 'flatpickr';

const numberWithCommas = (number) => {
  return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

const parseDate = (string) => {
  const pattern = /(\d{2})-(\d{2})-(\d{4})/;
  return new Date(string.replace(pattern,'$3-$2-$1'));
}

const calculateTotal = function(hours) {
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

    costs.classList.add('is-visible');
  }
}

const toggleDateInputs = function() {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');

  if (startDateInput && endDateInput) {
    flatpickr(startDateInput, {
    minDate: 'today',
    dateFormat: 'd-m-Y',
    onChange: function(_, selectedDate) {
      if (selectedDate === '') {
        costs.classList.remove('is-visible');
        endDateInput.disabled = true;
      }
      endDateCalendar.set('minDate', selectedDate);
      endDateInput.disabled = false;
    }
  });
    const endDateCalendar =
      flatpickr(endDateInput, {
        dateFormat: 'd-m-Y',
        onChange: function(_, selectedDate) {
          if (selectedDate === '') {
            let costs = document.querySelector('.costs');
            costs.classList.remove('is-visible');
          }
        },
        onClose: function(selectedDates, _, instance) {
          let startDate = parseDate(startDateInput.value);
          let endDate = parseDate(endDateInput.value);
          let hours = Math.ceil((endDate - startDate) / (1000 * 3600 * 24)) * 6;
          calculateTotal(hours);
        }
      });
  }
};

export { toggleDateInputs }
