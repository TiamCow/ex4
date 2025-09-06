<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Survey</title>
    <link rel="stylesheet" href="styles.css">
    
</head>
<body>
    <img src="murachlogo.jpg" alt="Murach Logo">

    <h2>Survey</h2>
    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">
        <h3>Your information:</h3>
        <label>First Name</label>
        <input type="text" name="firstName"><br>
        
        <label>Last Name</label>
        <input type="text" name="lastName"><br>
        
        <label>Email</label>
        <input type="email" name="email"><br>
        
        <label>Date of Birth</label>
        <input type="text" name="dob"><br>

        <div class="section">
            <h3>How did you hear about us?</h3>
            <div class="radio"><input type="radio" name="hearAbout" value="search" checked> Search engine</div>
            <div class="radio"><input type="radio" name="hearAbout" value="word"> Word of mouth</div>
            <div class="radio"><input type="radio" name="hearAbout" value="social"> Social Media</div>
            <div class="radio"><input type="radio" name="hearAbout" value="other"> Other</div>
        </div>

        <div class="section">
            <h3>Would you like to receive announcements about new CDs and special offers?</h3>
            <div class="checkbox"><input type="checkbox" name="offers" value="yes"> YES, I'd like that.</div>
            <div class="checkbox"><input type="checkbox" name="emailOffers" value="yes"> YES, please send me email announcements.</div>
        </div>

        <label>Please contact me by:</label>
        <select name="contact">
            <option>Email or postal mail</option>
            <option>Email only</option>
            <option>Postal mail only</option>
        </select>
        <br>

         <label> &nbsp;</label>
        <input type="submit" value="Join Now" id="submit">
    </form>
    
   
    <%@ include file="includes/footer.jsp" %>
</body>

</html>
