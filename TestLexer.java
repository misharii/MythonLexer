import java.io.StringReader;
import java.io.IOException;
public class TestLexer {
    public static void main(String[] args) {


      String mythonCode = "def fib(x) = if x = 1 then 0 else\n" +
              "             if x = 2 then 1 else\n" +
              "             fib(x - 1) + fib(x - 2)";

        try (StringReader reader = new StringReader(mythonCode)) {
            MythonLexer lexer = new MythonLexer(reader);
            int token;

            while ((token = lexer.yylex()) != MythonLexer.EOF) {
                // print token details
                //System.out.println("Token: " + token + " | Text: " + lexer.yytext());
            }

            System.out.println("Reached the End of File.");

        } catch (IOException e) {
            System.err.println("Error reading the Mython code.");
            e.printStackTrace();
        }
    }
}
