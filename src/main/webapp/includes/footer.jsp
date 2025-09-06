<%
    java.util.Date today = new java.util.Date();
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy");
    String currentYear = sdf.format(today);
%>
<div class="footer">
    &copy; ${currentYear} Cao Dang Huy - 23162028
</div>



