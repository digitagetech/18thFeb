<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.outer, .inner {
    display: block;
}


.inner {
    /* specify padding, can be changed while remaining fixed width of .outer */
    padding: 10px;
    margin: 10px 0px;
    background-color: #f2f2f2;
    width:70%;
    font-family: sans-serif;;


}
.head{
  background-color:#cc3333;
   height:40px;
   width:100%;
   margin:0 0 20px 0;
  border-radius: 5px;
  font-family: Gotham;
  padding-left: 10px;
  color: white;


}
.mytext{
  vertical-align: middle;
  line-height: 40px;
}
#order{
  background-color: #cc3333;
  color:white;
  padding-left: 20px;
  padding-top: 10px;
}
.tbSum th{
  font-size: 20px;
  font-weight: bold;
  font-family: sans-serif;
  background-color:#cc3333;
  color: white;
}

.tbSum td{
  font-size: 20px;
  font-weight: bold;
}
</style>
</head>
<body>
 <div class="container">

        <div class="row">
          <div class="col-xs-6 jumbotron"><!--1st column-->
          <div class="head">
            <h3><p class="mytext">Share your details</p></h3>
          </div>

          <div class="outer">
            <div class="well" style="width:100%">
            <form>
			   <input type="text" id="custname" placeholder="Enter your name" style="width:70%"><br><br>
               <input type="email"id="emailid" placeholder="Enter your email" style="width:70%"><br><br>
               <input type="text" id="phoneid" placeholder="+91" style="width:70%">
			   <input type="text" id="custaddress" placeholder="Enter your address" style="width:70%"><br><br>
             </div>
               <div class="head">
                  <h3><p class="mytext">Payment Options</p></h3>

               </div>
               <div class="inner well" style="width:100%;"><!--card number-->

                <div style="margin-top:10px">
                  <h3 ><strong>Enter card details</strong>
                  <img src="img/card_payment.jpg" style="height:40%;width:40%;">
                </h3>
                </div>
                <div>
                     <h5>Card Number</h5>
                </div>

                <input type="text" name="cardnum" placeholder="Enter your card number" style="width:70%"><br>
                <br>
                <input type="text" name="name" placeholder="Name on the card" style="margin-bottom:10px;width:70%"><br>
                   <div>
                     <table>
                       <tr><th colspan="2">Expiry</th>
                         <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
                       <th>CVV</th></tr>
                       <tr><td colspan="2">  <input type="number" min="1" max="12" name="month" placeholder="mm" style="width:50px">
                         <input type="number" min="1" max="12" name="year" placeholder="yy" style="width:50px"></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td>
                <input type="text" name="cvv" placeholder="CVV" style="width:40px" minlength="3" maxlength="3">
              </td></tr>


                </table>
                </div>
              </div><!-- inner end card number-->
              <input type="button" name="_eventId_proceed" value="PROCEED" style="width:75%; font-size:20px;" class="btn btn-success">
              <input type="button" name="_eventId_notProceed" value="Cancel" style="width:75%; font-size:20px;" class="btn btn-success">
              
          </form>
        </div>


      </div><!--end of 1st column-->

        <div class="col-xs-5 jumbotron" style="float:right">
          <div class="well">
            <table class="table tbSum">
              <tr><th>Order Summary</th></tr>
              <tr><td>You have chosen to buy</td></tr>
              <tr><td>productname</td></tr>
              <tr><td>Total</td></tr>
            </table>
            
              </div>
              </div>




      </div><!--end of row-->
      
      <div><br></div>
    </div><!--end of container-->

</body>
</html>