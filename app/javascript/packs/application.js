// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"


Rails.start()
Turbolinks.start()
ActiveStorage.start()


import 'bootstrap';
import flatpickr from "flatpickr";


document.addEventListener('turbolinks:load', () => {
  const startDateInput = document.querySelector("[name='booking[start_time]']");
  const endDateInput = document.querySelector("[name='booking[end_time]']");
  flatpickr(startDateInput, {
    allowInput: true,
    altInput: true,
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    minDate: "today",
    defaultDate: "today",
    minTime: "09:00"
  });
  let endFlatpickr = flatpickr(endDateInput, {
    allowInput: true,
    altInput: true,
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    minDate: startDateInput.value,
    defaultDate: startDateInput.value
  });
  startDateInput.addEventListener("change", (e) => {
    endFlatpickr.destroy()
    if (startDateInput != "today") {
    let endFlatpickr = flatpickr(endDateInput, {
      allowInput: true,
      altInput: true,
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      minDate: startDateInput.value,
      defaultDate: startDateInput.value
    });
  };
  })
})
