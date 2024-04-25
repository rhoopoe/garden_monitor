import consumer from "./consumer"

consumer.subscriptions.create("SensorLogsChannel", {
    connected() {
        // Called when the subscription is ready for use on the server
        const messageDisplay = document.querySelector('#sensors_logs_display')
        messageDisplay.insertAdjacentHTML('beforeend', "Hello")
    },

    disconnected() {
        // Called when the subscription has been terminated by the server
    },

    received(data) {
        const messageDisplay = document.querySelector('#sensors_logs_display')
        messageDisplay.insertAdjacentHTML('beforeend', this.template(data))
    },

    template(data) {
        console.log(data)
        return `<tr>
  <td>${data.id}</td>
  <td>${data.value}</td>
  <td>${data.sensor_id}</td>
  <td>${data.created_at}</td>
  </tr>`
    }
});
