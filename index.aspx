<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Home" MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h2>“The world is a book and those who do not travel read only one page.” </h2><p>― Augustine of Hippo</p>
<!-- Slideshow java script -->
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 6</div>
  <img src="Bandarban.jpg" style="width:100%"/>
  <div class="text">Bandarban Tour</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 6</div>
  <img src="CoxsBazar.jpg" style="width:100%"/>
  <div class="text">Cox’s Bazar Tour</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 6</div>
  <img src="Landscape of St Martin Island.jpg" style="width:100%"/>
  <div class="text">St Martin Tour</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 6</div>
  <img src="Sylhet.jpg" style="width:100%"/>
  <div class="text">Sylhet Tour</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 6</div>
  <img src="Sundarbans.jpg" style="width:100%"/>
  <div class="text">Sundarbans Tour</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">6 / 6</div>
  <img src="national-park-at-gazipur.jpg" style="width:100%"/>
  <div class="text">national-park-at-gazipur Tour</div>
</div>

</div>
<br/>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
    <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

       <div class="auto-style2">


           <strong><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
               <!-- Paragraph -->
           Bangladesh at a Glance
           <br />
           </span></strong>
           <br />
           Official Name: The People’s Republic of Bangladesh
<br />
           State Religion: Islam but other main religions namely Hinduism, Buddhism, Christianity are practiced in peace and harmony.

           <br />
           State Language: Bangla

           <br />
           National Anthem: The first ten lines of “Amar Sonar Bangla”. written by Nobel Laureate Rabindranath Tagore.

           <br />
           National Flag: Consists of a circle coloured red throughout its area, resting on a green rectangular background. The length to width ratio of the rectangle is 10:6 and the circle has a radius of one fifth of the length.

           <br />
           National Emblem: The national flower “Shapla” (nymphea-nouchali) resting on water, having on each side an ear of paddy and being surmounted by three connected leaves of jute with two stars on each side of the leaves.

           <br />
           Capital: Dhaka

Nationality: 
           <br />
           Bangladeshi

Name of Currency: Taka (TK)
Denominations:
Notes:Taka 1000, 500, 100, 50, 20, 10, 5, 2 & 1
Coins: Taka 5, 2, 1 and Paisa 50, 25, 10, 5, 2 & 1

           <br />
           Geographical Location: Between 20°34′ and 26°38′ north latitude and between 88°01′ and 92°41′ east longitude.

           <br />
           Boundary: North: India
West: India
South: Bay of Bengal
East: India and Myanmar

Area: 56977 sq. miles or 147570 sq. km.

Territorial Water: 200 nautical miles.

 

           <br />
           <br />
           Source: Statistical Pocketbook of Bangladesh – 2013 </div>
   
       <div>

      


           <table class="auto-style3">
               <tr>
                   <td class="auto-style8">&nbsp;
                       <h3>Contact</h3>

<div class="container">
  <form >

    <table class="auto-style13">
            <tr>
                <!-- Contact from -->
                <td class="auto-style2">&nbsp;Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxUser" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" CssClass="auto-style4" ErrorMessage="User Name is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">E-mail</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style4" ErrorMessage="E-mail is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter a Valid E-mail ID" style="color: #CC3300; text-align: center" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone Number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxMobile" runat="server" TextMode="Phone" Width="180px" Height="25px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxMobile" CssClass="auto-style4" ErrorMessage="Mobile Number is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Messages</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxAddress" runat="server" TextMode="MultiLine" Width="200px" Height="81px"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="93px" ForeColor="#6600FF" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
  </form>
</div>
                   </td>
                   <!-- Google map -->
                   <td class="auto-style2">&nbsp;
                       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3746984.465708819!2d88.10026026270491!3d23.490583053663357!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30adaaed80e18ba7%3A0xf2d28e0c4e1fc6b!2z4Kas4Ka-4KaC4Kay4Ka-4Kam4KeH4Ka2!5e0!3m2!1sbn!2sbd!4v1518014818411" width="500" frameborder="1" style="border:1" allowfullscreen class="auto-style9"></iframe>
                       <br />
                   </td>
               </tr>
           </table>
           <br />
           <br />

      


        </div>
<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 3000); // Change image every 3 seconds
    }
</script>
       <style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 700px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
           .auto-style1 {
               font-size: large;
           }
           .auto-style2 {
               text-align: justify;
           }
       </style>
       <style>
       input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
           .auto-style3 {
               width: 100%;
           }
           .auto-style4 {
               margin-top: 0px;
           }
           .auto-style5 {
               font-size: large;
               margin-top: 0px;
           }
           .auto-style6 {
               text-align: right;
           }
           .auto-style8 {
               width: 500px;
           }
           .auto-style9 {
               margin-top: 0px;
               float: right;
               height: 568px;
           }
           .auto-style11 {
               width: 100%;
               text-align: justify;
           }
           .auto-style12 {
               font-size: large;
               margin-top: 0px;
               text-align: justify;
           }
           .auto-style13 {
               font-size: large;
               margin-top: 0px;
               width: 604px;
           }
       </style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.fa {
  padding: 20px;
  font-size: 30px;
  height: relative;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
  
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.footer {
   position: relative;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}
</style>
       <div class="footer">
  <p>
<!-- Add font awesome icons -->
 <h> Copyright Tour Managemnt Project 2018</h>
<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-youtube"></a>
   </p>
</div>  
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    </asp:Content>