import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".timepicker", {
  altInput: true,
  noCalendar: true,
  enableTime: true,
})



flatpickr("#trail_start_date_1i", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#trail_end_date_1i"})]
})
