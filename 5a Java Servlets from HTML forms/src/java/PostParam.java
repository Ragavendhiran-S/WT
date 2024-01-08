import java.io.*;
import java.util.*;
import javax.servlet.*;
public class PostParam extends GenericServlet
{
 public void service(ServletRequest req,ServletResponse res)throws ServletException,IOException
 {
  PrintWriter pw=res.getWriter();
  pw.print("Registration Successful...");
  Enumeration e=req.getParameterNames();
  boolean flag = true;
  while(e.hasMoreElements())
  {
   String str1=(String)e.nextElement();
   String str2=req.getParameter(str1);
   pw.print(str1+"="+str2);
   if (flag) {
       pw.print(" and ");
       flag = false;
   }
  }
  pw.close();
 }
}