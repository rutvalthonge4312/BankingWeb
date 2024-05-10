<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Create Account</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <style>
      body {
        background: linear-gradient(
          90deg,
          rgba(2, 0, 36, 1) 0%,
          rgba(23, 136, 59, 0.47111344537815125) 0%,
          rgba(0, 212, 255, 0) 95%
        );
      }

      .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: transparent;
        font-size: 1.3rem;
        margin-top: 1rem;
      }
      .navbar .btn {
        min-height: 3.8rem;
        width: 15%;
        border-radius: 15px;

        font-size: 1.3rem;
      }
      .navbar .btn {
        text-decoration: underline;
      }
      .navbar,
      .navbar-expand-lg,
      .bg-body-tertiary {
        background: transparent;
      }
      .navbar-nav {
        justify-content: center;
        flex-grow: 1; /* This makes the ul take up all available space */
      }

      .navbar-brand {
        margin-right: auto; /* Push the image to the left corner */
      }

      .btn {
        margin-left: auto; /* Push the button to the right corner */
        background-color: green;
        color: whitesmoke;
        border: none;
      }
      .container1 {
        margin-top: 1rem;
        backdrop-filter: blur(10px);
        margin: 5rem;
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .container1 .btn {
        height: 3.5rem;
        width: 50%;
        border: none;
        font-size: 1.3rem;
        border-radius: 15px;
      }

      form {
        color: black;
        font-size: 1.3rem;
        margin-top: 1rem;
        padding: 1rem;
        border-radius: 15px 50px;
        border: 1px solid green;

        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
          rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
        min-height: 450px;
        width: 900px;
        background: rgba(255, 255, 255, 0.2);
        display: flex;
        align-items: center;
        justify-content: center;
      }

      .form-control,
      .form-select {
        background: transparent;
        height: 3rem;
        border: 1px solid rgb(61, 61, 61);

        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
          rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
      }

      #backButtton {
        float: right;
      }
    </style>
  </head>
  <body>
    <div
      class="alert alert-warning alert-dismissible fade show"
      id="alertBox"
      role="alert"
    >
      <strong>Hey User</strong> You should check in on some of those fields
      below.
      <button
        type="button"
        class="btn-close"
        data-bs-dismiss="alert"
        aria-label="Close"
      ></button>
    </div>
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
        <img
          src="Images/bankLogo.png"
          alt=""
          class="navbar-brand"
          href="#"
          style="height: 60px; width: 60px"
        />
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">Credit</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="#">Features</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Debit</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">App</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
          <button class="btn" disabled>Open an Account</button>
        </div>
      </div>
    </nav>
    <div class="container1">
      <form class="row g-3" id="actualForm">
        <div class="col-md-6">
          <label for="validationDefault01" class="form-label">Full Name</label>
          <input
            type="text"
            class="form-control"
            id="accName"
            name="name"
            placeholder="*Temp Name"
            required
          />
        </div>
        <div class="col-md-6">
          <label for="validationDefault02" class="form-label">Password</label>
          <input
            type="password"
            class="form-control"
            id="userPassword"
            name="password"
            placeholder="*Password#XYZ"
            required
          />
        </div>
        <div class="col-md-6">
          <label for="validationDefaultUsername" class="form-label"
            >Username</label
          >
          <div class="input-group">
            <input
              type="text"
              class="form-control"
              id="username"
              name="username"
              placeholder="*username@temp.com"
              aria-describedby="inputGroupPrepend2"
              required
            />
          </div>
        </div>
        <div class="col-md-6">
          <label for="validationDefault03" class="form-label">Amount</label>
          <input
            type="number"
            class="form-control"
            id="initialAmount"
            name="amount"
            placeholder="*10000Rs"
            required
          />
        </div>
        <div class="col-md-6">
          <label for="validationDefault04" class="form-label"
            >Account Type</label
          >
          <select
            class="form-select"
            id="accoutType"
            name="accoutType"
            required
          >
            <option selected disabled value="">Select Account Type</option>
            <option>Current Account</option>
            <option>Saving Account</option>
          </select>
        </div>
        <div class="col-md-6">
          <label for="validationDefault05" class="form-label"
            >Date of Birth</label
          >
          <input type="date" class="form-control" id="birthDate" required />
        </div>

        <div class="col-12">
          <button class="btn btn-primary" id="submitForm">Open Account</button>
        </div>
      </form>
    </div>
    <button onclick="history.back()" class="btn" id="backButtton">
      <span style="background: transparent">&larrhk;</span>Go Back
    </button>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    <script>
      let submitForm = document.getElementById("submitForm");
      let initialAmount = document.getElementById("initialAmount");
      let actualForm = document.getElementById("actualForm");
      let birthDate = document.getElementById("birthDate");
      let alertBox = document.getElementById("alertBox");
      let password = document.getElementById("userPassword");
      alertBox.style.display = "none";
      let accoutType = document.getElementById("accoutType");
      function calculateAge(birthdate) {
        const today = new Date();
        const age =
          today.getFullYear() -
          birthdate.getFullYear() -
          (today.getMonth() < birthdate.getMonth() ||
            (today.getMonth() === birthdate.getMonth() &&
              today.getDate() < birthdate.getDate()));
        return age;
      }

      submitForm.addEventListener("click", () => {
        let age = calculateAge(new Date(birthDate.value));
        event.preventDefault();
        if (initialAmount.value < 0) {
          alert("Amount should be greater than '0'");
          initialAmount.style.border = "1px solid red";
          alertBox.style.display = "block";
        } else {
          initialAmount.style.border = "1px solid green";
        }
        if (age < 18) {
          birthDate.style.border = "1px solid red";
          alert("Invalid Age");
        } else {
          birthDate.style.border = "1px solid green";
        }

        if (initialAmount.value > 0 && age >= 18) {
          if (password.value.length > 6) {
            let checkSpecialChar = false;
            let checkCapitalLetters = false;
            let checkSmallLetters = false;
            let passwordVal = password.value;
            for (const character of passwordVal) {
              if (
                character === "@" ||
                character === "#" ||
                character === "$" ||
                character === "%"
              ) {
                checkSpecialChar = true;
              } else if (character === character.toUpperCase()) {
                checkCapitalLetters = true;
              } else if (character === character.toLowerCase()) {
                checkSmallLetters = true;
              }
            }
            if (checkCapitalLetters && checkSmallLetters && checkSpecialChar) {
              actualForm.action = "openAccountController";
              actualForm.submit();
            } else {
              password.style.border = "1px solid red";
              alert(
                "Password Must Contain Capital letters Small letters and Special Character also and password length is Greater than 6"
              );
            }
          } else {
            alert("Password Must Contain Minimum 7 letters");
          }
        }
      });
    </script>
  </body>
</html>
<!-- 
  else {
          actualForm.action = "openAccountController";
          actualForm.submit();
        }
-->

