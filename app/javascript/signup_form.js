document.addEventListener("DOMContentLoaded", () => {
  const signupLink = document.getElementById("worker-link");
  const workerFields = document.getElementById("worker-field");

  if (signupLink && workerFields) {
    signupLink.addEventListener("click", () => {
      workerFields.style.display = "block";
    });
  }
  if (workerFields) {
    workerFields.style.display = "none";
  }
});
