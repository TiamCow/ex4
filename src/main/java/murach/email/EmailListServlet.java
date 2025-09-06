package murach.email;

import java.io.*;
import java.time.Year;   
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

import murach.business.User;
import murach.data.UserDB;

public class EmailListServlet extends HttpServlet  {

    private static final Logger logger = Logger.getLogger(EmailListServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        String url = "/index.jsp";

        // Lấy tham số action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; 
        }

        System.out.println("DEBUG: action = " + action);
        logger.info("LOG: action = " + action);

        if (action.equals("join")) {
            url = "/index.jsp"; 
        }
        else if (action.equals("add")) {                
            // Lấy dữ liệu từ form
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String hear = request.getParameter("hear");
            String news = request.getParameter("news");
            String emailNews = request.getParameter("emailNews");
            String contact = request.getParameter("contact");

            // Tạo User object
            User user = new User(firstName, lastName, email, dob, hear, news, emailNews, contact);

            // Lưu vào DB nếu cần
            UserDB.insert(user);
            
            // Gửi sang JSP
            request.setAttribute("user", user);

            // ✅ Add current year
            int currentYear = Year.now().getValue();
            request.setAttribute("currentYear", currentYear);

            url = "/thanks.jsp";   
        }
        
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }    

    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
                         throws ServletException, IOException {
        doPost(request, response);
    }    
}
