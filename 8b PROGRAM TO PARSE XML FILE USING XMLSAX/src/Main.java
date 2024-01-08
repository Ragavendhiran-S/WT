import java.io.*; 
import org.xml.sax.*; 
import org.xml.sax.helpers.*;
public class Main {
public static void main(String[] args) {
try {
System.out.println("Enter the name of the Xml document:");
BufferedReader input = new BufferedReader(new
InputStreamReader(System.in));
String fileName =
input.readLine();
File fp = new
File(fileName);
if (fp.exists()) 
{try 
{
XMLReader reader = XMLReaderFactory.createXMLReader();
reader.parse(fileName);
System.out.println(fileName + " is well formed");
} catch (Exception e) {
System.out.println(fileName + " is not well formed");
System.exit(0);
}
} else {
System.out.println("File doesnot exist");
}
} catch (Exception e) {
System.out.println(e);
}
}
}