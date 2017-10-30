import java.io.IOException;
//import java.io.Files;
//import java.io.Paths;
public class  rec{
    public static void main(String[] args) throws IOException {
		 String content = new String(Files.readAllBytes(Paths.get("duke.java")));
    }
}
