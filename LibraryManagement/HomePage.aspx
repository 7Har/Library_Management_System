<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LibraryManagement.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="images/home.jpg" class="img-fluid"/>
    </section>
    <section>
       <div class="container">
           <div class="row">
               <div class="col-12">
                   <center>
                   <h2>
                       <b>Our Features</b>
                   </h2>
                   </center>
               </div>
           </div>
           <div class="row">
            <div class="col-md-4">
               <center>
                   <img width="150px" src="images/digital-inventory.png" />
                  <h4>Digital Book Inventory</h4>
                  <p class="text-justify">In that feature you can easily see books you need.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                   <img src="images/searchbook.png" width="150px" />
                  <h4>Search Books</h4>
                  <p class="text-justify">In that yoy can easily search your Books which ever you liked.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img src="images/defaulters-list.png" width="150px" />
                  <h4>Defaulter List</h4>
                  <p class="text-justify">Default Page</p>
               </center>
            </div>
         </div>
      </div>
    </section>
    <section>
        <img src="images/library-banner.jpg" width="1500px" />
    </section>
    <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Process</h2>
                  <p><b>We have a Simple 3 Step Process</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="images/sign-up.png" />
                  <h4>Sign Up</h4>
                  <p class="text-justify">Sign up your Account to get books.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="images/searchbook.png" />
                  <h4>Search Books</h4>
                  <p class="text-justify">You can easily search your book.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="images/library.png" />
                  <h4>Visit Us</h4>
                  <p class="text-justify"></p>
               </center>
            </div>
         </div>
      </div>
   </section>
</asp:Content>
