<%@page import="bank.doa.QueryClass"%> 
<%@page import="javax.management.Query"%>
<%@page import="java.sql.ResultSet"%>
 <%@page import="java.sql.PreparedStatement"%> 

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%! int recordCount=0;%> 
 <%
 try{
	 PreparedStatement ps;
	 ResultSet rs;
	 QueryClass q=new QueryClass();

	 ps=q.getRecordCount(); 
	 rs=ps.executeQuery(); 
	 if (rs.next()) {
		recordCount = rs.getInt(1); 
		ps.close();
		}
	 }
 	catch(Exception e)
 	{
	System.out.print("Error Occoured!"+e);
	}
 %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Home Page</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="homwPageCSS.css" />
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
        border: 3px solid grey;
        font-size: 1.3rem;
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
      }
      #goToLogIn {
        border: 1.8px solid green;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        box-shadow: rgba(50, 50, 93, 0.25) 0px 30px 60px -12px,
          rgba(0, 0, 0, 0.3) 0px 18px 36px -18px;
      }
      #goToLogIn:hover {
        background-color: green;
        color: white;
        border: none;
      }
      .mainConatiner {
        display: grid;
        grid-template-columns: 2fr 2fr 1fr;
        justify-content: center;
        align-items: center;
        padding: 2rem;
      }
      .mainConatiner > * {
        padding: 2rem;
      }
      .mainConatiner > * h1 {
        font-size: 3.7rem;
      }
      .mainConatiner > * p {
        padding: 1rem;
        font-size: 1.1rem;
      }
      .mainConatiner .btn {
        color: whitesmoke;
        background-color: green;
        min-height: 3.8rem;
        width: 70%;
        border: none;
        font-size: 1.3rem;
      }
      .mainConatiner .imageSide {
        transform: translateY(80px);
      }
      .mainConatiner .imageSide img {
        width: auto;
        height: auto;
        transform: scale(1.3);
        filter: drop-shadow(0.35rem 0.35rem 0.4rem rgba(0, 0, 0, 0.5));
      }
      .userCount h1 {
        font-size: 1.7rem;
        line-height: 0;
        text-align: center;
      }

      .userCount p {
        font-size: 1.3rem;
        line-height: 0;
        margin: auto;
        text-align: center;
      }
      .bankInfo {
        height: 90vh;
        margin-top: 5rem;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background: rgb(2, 0, 36);
        background: linear-gradient(
          0deg,
          rgba(2, 0, 36, 1) 0%,
          rgba(18, 112, 48, 0.26943277310924374) 0%,
          rgba(0, 212, 255, 0) 95%
        );
        padding: 2rem;
      }
      .bankInfo h1 {
        margin: 2rem 0rem;
      }
      .cardDiv {
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
      }
      .cardDiv > * {
        margin: 1rem 3rem;
        transform: scale(1.09);
        background: transparent;
        text-align: center;
        width: 500px;
        border: none;
        border-radius: 15px;
        height: 200px;
        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
          rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
      }
      .card-body {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        font-size: 1.2rem;
      }
      #goToBottom {
        transform: translateY(30px);
      }
      .card-title {
        color: green;
      }
      .card-body {
        color: rgb(64, 64, 64);
      }
      .discoverOurApp {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 3rem;
        background: rgb(2, 0, 36);
        background: linear-gradient(
          180deg,
          rgba(2, 0, 36, 1) 0%,
          rgba(18, 112, 48, 0.26943277310924374) 0%,
          rgba(0, 212, 255, 0) 95%
        );
      }
      .discoverOurApp img {
        aspect-ratio: 3/4;
        object-fit: contain;
        height: 10rem;
        width: 12rem;
      }

      .option {
        display: flex;
        flex-direction: row;
      }
      footer {
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        background-color: white;

        padding: 0rem 1rem;
        text-align: center;
        background: transparent;
      }
      footer .box1 {
        display: flex;
        flex-direction: column;
        margin: 1rem 1rem;
      }

      footer .box1 .linksInFooter {
        display: flex;
        flex-direction: row;
      }
      footer .box1 .linksInFooter img {
        height: auto;
        width: auto;
        max-width: 30px;
        max-height: 30px;
        margin: 0rem 0.5rem;
      }
      footer .box1 p {
        text-decoration: none;
        line-height: 1;
      }
      footer .box1 .linksInFooter img:hover {
        transform: rotate(-10deg);
        transition: all ease-in-out 0.5s;
      }
      footer .box2 {
        display: flex;
        flex-direction: column;
        margin: 1rem 1rem;
      }
      footer .box2 p {
        text-decoration: none;
        line-height: 1;
      }
      footer .box3 {
        display: flex;
        flex-direction: column;
        margin: 1rem 1rem;
      }
      footer .box3 a {
        text-decoration: none;
        line-height: 1;
      }
      footer .box4 {
        display: flex;
        flex-direction: column;
        margin: 2rem 2rem;
      }
      footer .box4 a {
        text-decoration: none;
        line-height: 1;
      }
      footer .box5 {
        display: flex;
        flex-direction: column;
        margin: 1rem 1rem;
      }
      footer .box5 a {
        text-decoration: none;
        line-height: 1;
      }
      footer a {
        color: #333;
      }
      footer a:hover {
        transform: scale(1.2);
      }
      footer h2 {
        color: #111;
        font-weight: bold;
        font-size: 1.2rem;
        font-weight: 500;
        margin-bottom: 2rem;
        text-decoration: underline;
      }
      footer p,
      a {
        font-size: 1rem;
        color: #767676;
        margin: 0.5rem 1rem;
      }
    </style>
  </head>
  <body>
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
              <a class="nav-link" href="LogInPage.jsp">Log In</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
          <button class="btn" id="goToLogIn">Open an Account</button>
        </div>
      </div>
    </nav>
    <div class="mainConatiner">
      <div class="infoSide">
        <h1>Digital banking Made for</h1>

        <h1>Digital User's</h1>
        <p>
          Gopay is an all-in-one mobile banking app chock full of all the tools,
          tips, and tricks you need to take control of your finances,
        </p>

        <button class="btn btn-danger">Credit Money Now!</button>
      </div>
      <div class="imageSide">
        <img src="Images/bankHomeImage.png" alt="" />
      </div>
      <div class="userCount">
        <div>
          <h1>Total User's</h1>
          <p><%= recordCount %></p>
        </div>
      </div>
    </div>
    <div class="bankInfo">
      <h1>Take your transcation to the next level!</h1>
      <div class="cardDiv">
        <div class="card" style="max-width: 18rem">
          <div class="card-body">
            <h5 class="card-title">Transcation</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
          </div>
        </div>
        <div class="card" id="goToBottom" style="max-width: 18rem">
          <div class="card-body">
            <h5 class="card-title">Account Opeaning</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
          </div>
        </div>
        <div class="card" style="max-width: 18rem">
          <div class="card-body">
            <h5 class="card-title">Recharge Mobile Number</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="discoverOurApp">
      <h1>Discover our mobile app</h1>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium ut
        dolorum magnam ab vel dolor facilis accusantium eveniet corporis.
        Doloribus!
      </p>
      <div class="option">
        <div class="android">
          <img src="Images/playstore.png" alt="" />
        </div>
        <div class="ios">
          <img src="Images/iosImage.png " alt="" />
        </div>
      </div>
    </div>
    <footer>
      <div class="box1">
        <div class="linksInFooter">
          <a href="#" target="_blank"
            ><img
              src="Images/twitter.webp"
              alt="Twitter Image"
          /></a>
          <a href="#" target="_blank"
            ><img
              src="Images/insta.png"
              alt="Twitter Image"
          /></a>
          <a href="#" target="_blank"
            ><img
              src="Images/facebook.png"
              alt="Twitter Image"
          /></a>
        </div>
        <p>Copyright © 2023 by</p>
        <p>Zil Bank,All rights reserved.</p>
      </div>
      <div class="box2">
        <h2>Contact us</h2>
        <p>Zil Bank, Chatarapati complex, 2nd Floor, Barshi, Solapur 431411</p>
        <p>9921615078</p>
        <p>hello@zilbank.com</p>
      </div>
      <div class="box3">
        <h2>Account</h2>
        <a href="OpenBankAccountPage.jsp" >Create Account</a>
        <a href="LogInPage.jsp" >Sin In</a>
        <a href="#" target="_blank">Android App</a>
        <a href="#" target="_blank">iOS App</a>
      </div>
      <div class="box4">
        <h2>Company</h2>
        <a href="#" target="_blank">About Zil Bank</a>
        <a href="#" target="_blank">for Buisness</a>
        <a href="#" target="_blank">Bank Info</a>
        <a href="#" target="_blank">Careers</a>
      </div>
      <div class="box5">
        <h2>Resources</h2>
        <a href="#" target="_blank">Recipy Dictonary</a>
        <a href="#" target="_blank">Help Center</a>
        <a href="#" target="_blank">Privacy & terms</a>
      </div>
    </footer>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    <script>
      let gotoLogInPage = document.getElementById("goToLogIn");
      gotoLogInPage.addEventListener("click", () => {
        window.location.href = "OpenBankAccountPage.jsp";
      });
    </script>
  </body>
</html>

