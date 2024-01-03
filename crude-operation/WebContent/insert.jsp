<%@ include file="menu.html" %>
<html>
<head>
<style>

</style>
</head>
<body>
<form action="save-record.jsp"
>
 <table class="formta">
  <tr>
  <td class='pad'> <label>  Employee id</label></td>
  <td class='pad'> <input type="text" name="pid" class="tb" required></td>
  </tr>
  <tr>
  <td class='pad'> <label> First Name</label></td>
  <td class='pad'> <input type="text" name="fname" class="tb" required></td>
  </tr>
  <tr>
  <td class='pad'> <label> First Last</label></td>
  <td class='pad'> <input type="text" name="lname" class="tb" required></td>
  </tr>
   <tr>
  <td class='pad'> <label> Address</label></td>
  <td class='pad'> <input type="text" name="address" class="tb" required></td>
  </tr>
   <tr>
  <td class='pad'> <label> Email Id</label></td>
  <td class='pad'> <input type="text" name="email" class="tb" required></td>
  </tr>
   <tr>
  <td class='pad'> <label> Phone Number</label></td>
  <td class='pad'> <input type="number" name="number" class="tb" required></td>
  </tr>
  <tr>
  <td class='pad'> <label> City</label></td>
  <td class='pad'> 
   <select class="tb" name="city">
   <option>Moradabad</option>
    <option>Rampur</option>
     <option>Meerut</option>
      <option>Sambhal</option>
       <option>Amroha</option>
   </select>
     </td>
  </tr>
  <tr>
  <td class='pad'> <label> Age</label></td>
  <td class='pad'> <input type="number" name="age" class="tb" required></td>
  </tr>
  <tr>
  <td class="pad" colspan="2" align="right">
  <button class="bt" style="background-color:red;color:white">Save Record</button>
  </td>
  </tr>
   
 </table>
</form>
</body>
</html>