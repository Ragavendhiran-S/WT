<html>

<%
String[] userans=new String[5];
String[] correctans={ "True","False","True", "True", "True"};
String regno=""; 
int total=0; 
try {
        userans[0]=request.getParameter("group1");
        userans[1]=request.getParameter("group2");
        userans[2]=request.getParameter("group3");
        userans[3]=request.getParameter("group4"); 
        userans[4]=request.getParameter("group5");
        for(int i=0;i<=4;i++) {
            if(correctans[i].equals(userans[i])) total+=2; 
        }
        regno=request.getParameter("frmregno");
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>


<b> <center> <h1>Anna university <br/> <br/>
<table border=2>
    <th> Register number </th>
    <th> Marks </th>
    <tr> <td> <%= regno %> </td>
        <td> <%= total %> </td>
</table>
</html>