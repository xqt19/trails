import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.dark.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  altInput: true,
  noCalendar: true,
  enableTime: true,
})
