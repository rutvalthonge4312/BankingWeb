<%@page import="org.apache.catalina.startup.Catalina"%>
<%@page import="org.apache.catalina.Session"%>
<%@page import="bank.model.dataSetter"%>
<%@page import="bank.doa.InsertDataToQury"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<%
    dataSetter dataHere = (dataSetter) session.getAttribute("data");	
%>

<%! 
    String getAccountType;
    int accountNumber;
%>

<%
    try {
        PreparedStatement ps;
        ResultSet rs;

        InsertDataToQury q = new InsertDataToQury();
        ps = q.getRecordData(dataHere);
        rs = ps.executeQuery();
        if (rs.next()) {
            getAccountType = rs.getString("ACCOUNT_TYPE");
            accountNumber = rs.getInt("ACCOUNT_NUMBER");
        }
        ps.close();
    } catch (Exception e) {
        System.out.print("Error Occurred!");
        e.printStackTrace();
    }
%>

		
		
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>User Dashboard</title>
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

      .userBalancePage {
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
      }
      .userBalancePage .card {
        margin: 1rem;
        min-height: 10rem;
        min-width: 20rem;
        background: transparent;
        text-align: center;
      }
      .userAction {
        text-align: center;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
      }
      .userAction > * {
        width: 15rem;
        height: 21rem;
        background: transparent;
        border: none;
        border-radius: 15px;
        margin: 2rem 2.5rem;
        padding: 0.8rem;
        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
          rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
      }
      .userAction img {
        text-align: center;
        min-height: 150px;
        min-width: 150px;
      }
      .btn-primary {
        background-color: green;
        border: none;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
      }
      .card:hover {
        transform: scale(1.01);
        transition: all ease-in-out 0.5s;
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
              <a class="nav-link" href="#">Debit</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="landingPage.jsp">Log_Out</a>
            </li>
          </ul>

          <img
            src="Images/userImage.png"
            alt="User image"
            style="height: 50px; width: 50px"
          />
          <p><%= dataHere.getUsername() %></p>
        </div>
      </div>
    </nav>
    <div class="userBalancePage">
      <div class="card" id="accountNumbercard">
        <div style="line-height: 0; text-align: center; margin: auto">
          <p>Account Number:</p>
          <h2><%= accountNumber%></h2>
        </div>
        <div style="line-height: 0; text-align: center; margin: auto">
          <p>User's Name:</p>
          <h4><%= dataHere.getName() %></h4>
        </div>
      </div>
      <div class="card" id="userBalance">
        <div style="text-align: center; margin: auto; line-height: 0">
          <p>Available Balance:</p>
          <h1><%= dataHere.getAmount() %> ₹</h1>
          <p>Account Type</p>

          <h4><%= getAccountType %></h4>
        </div>
      </div>
      <div class="card" id="tranascactions">
        <h2>Tranascactions</h2>
      </div>
    </div>
    <div class="userAction">
      <div class="card" style="width: 18rem">
        <img src="Images/creditAmountPNG.png" class="card-img-top" alt="..." />
        <div class="card-body">
          <h5 class="card-title">Credit Amount</h5>
          <p class="card-text">
            Explore our flexible credit options to meet your financial needs.
            Whether you're planning a major purchase, journey.
          </p>
          <a href="CreditAmount.jsp" class="btn btn-primary">Credit Amount</a>
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img src="Images/debitAmountPNG.png" class="card-img-top" alt="..." />
        <div class="card-body">
          <h5 class="card-title">Debit Amount</h5>
          <p class="card-text">
            Some quick example text to build on the card title and make up the
            bulk of the card's content.
          </p>
          <a href="debitAmount.jsp" class="btn btn-primary">Debit Amount</a>
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img src="Images/updatePassLogo.png" class="card-img-top" alt="..." />
        <div class="card-body">
          <h5 class="card-title">Recharge Mobile</h5>
          <p class="card-text">
            Some quick example text to build on the card title and make up the
            bulk of the card's content.
          </p>
          <button id="goToRecharege" class="btn btn-primary">Recharge</button>
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img src="Images/deletePNG.png" class="card-img-top" alt="..." />
        <div class="card-body">
          <h5 class="card-title">Delete Account</h5>
          <p class="card-text">
            Some quick example text to build on the card title and make up the
            bulk of the card's content.
          </p>
          <a href="deleteAccount.jsp" class="btn btn-primary">Delete Account</a>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    <script type="text/javascript">
            let goToRecharege = document.getElementById("goToRecharege");
            goToRecharege.addEventListener("click", () => {
            	
               
                window.location.href="rechargeHomePage.jsp?data=<%= dataHere.getUsername() %>"
                });
        
    </script>
  </body>
</html>