import { Application } from "@hotwired/stimulus";

const application = Application.start();
const deadline = document.querySelector("[data-deadline]");

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

// deadline.addEventListener("click", (e) => {
//   console.log("test");
// });

// function dateColor() {

//   if (<% task.day.strftime("%d %B %C%y") %> === <% Date.today.strftime("%d %B %C%y") %> ) {
//     deadline.style.backgroundColor = "red";
//   } else {
//     deadline.style.backgroundColor = "green";
//   }
// }

export { application };
