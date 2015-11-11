package person;


import Data.Hbmain;
import Data.Service;
import org.hibernate.Session;
import util.HibernateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;

/**
 * Created by Win7uX32 on 2015/7/16.
 */
@WebServlet(name="PersonDisplayServlet",urlPatterns = "/pd")
public class PersonDisplayServlet extends HttpServlet {
    public String user;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user=request.getParameter("user");

        Service.start();
        ArrayList<Person> list=Service.getList();
        /*hb.clear();
        hb.add("volevo","un","gatto","nero","nero","nero",1,"mi","ha","datto","un",5,"gatto","bianco","e",1,"io"
                ,"non","ci","sto","piu","!");
        hb.add("volevo","un","gatto","nero","nero","nero",1,"mi","ha","datto","un",5,"gatto","bianco","e",1,"io"
                ,"non","ci","sto","piu","?");*/
        //hb.test();
        //hb.sessionFactory.close();
        //Session session = HibernateUtil.getSessionFactory().openSession();
        //request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charSet=GBK");
        PrintStream out=new PrintStream(response.getOutputStream());
        if(user.equals("")||user==null){

        }
        else {
            out.println("<html>\n" +
                    "  <head>\n" +
                    "    <title>List</title>\n" +
                    "  </head>\n" +
                    "  <body>\n<table>");
            int i=0;
            for(Person p:list){
                out.println("<tr>\n" +
                        "        <td>人物"+(i+1)+"</td>\n" +
                        "        <td>\n" +
                        "    <form id=\"view"+i+"\" method=\"post\" action=\"view.jsp\">\n" +
                        "        <input type=\"hidden\" name=\"id\" value="+i+">\n" +
                        "        <input type=\"hidden\" name=\"instr\" value=\"view\">\n" +
                        "        <input type=\"hidden\" name=\"user\" value=\""+user+"\">\n" +
                        "        <input type=\"submit\" value=\"view\">\n" +
                        "    </form>\n" +
                        "        </td>\n" +
                        "        <td>\n" +
                        "    <form id=\"edit"+i+"\" method=\"post\" action=\"edit.jsp\">\n" +
                        "        <input type=\"hidden\" name=\"id\" value="+i+">\n" +
                        "        <input type=\"hidden\" name=\"instr\" value=\"edit\">\n" +
                        "        <input type=\"hidden\" name=\"user\" value=\""+user+"\">\n" +
                        "        <input type=\"submit\" value=\"edit\">\n" +
                        "    </form>\n" +
                        "        </td>\n" +
                        "        <td>\n" +
                        "    <form id=\"delete"+i+"\" method=\"post\" action=\"saved.jsp\">\n" +
                        "        <input type=\"hidden\" name=\"id\" value="+i+">\n" +
                        "        <input type=\"hidden\" name=\"instr\" value=\"delete\">\n" +
                        "        <input type=\"hidden\" name=\"user\" value=\""+user+"\">\n" +
                        "        <input type=\"submit\" value=\"delete\">\n" +
                        "    </form>\n" +
                        "        </td>\n" +
                        "    </tr>");
                i++;
            }
            out.println("<tr><td>------</td><td>------</td><td>--------</td><td>" +
                    "    <form id=\"add\" method=\"post\" action=\"add.jsp\">\n" +
                    "        <input type=\"hidden\" name=\"user\" value=\""+user+"\">\n" +
                    "        <input type=\"submit\" value=\"add\">\n" +
                    "    </form>\n" +
                    "</td></tr>");

            out.println("</table>  </body>\n" +
                    "</html>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
