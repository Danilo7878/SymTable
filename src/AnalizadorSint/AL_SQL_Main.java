/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AnalizadorSint;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 *
 * @author danil
 */
public class AL_SQL_Main {
    public static void main(String[] args) throws IOException, Exception {
        File rootDir = new File("");
        String path = rootDir.getAbsolutePath();                
        String path1 = path.concat("/src/AnalizadorSint/Lexer.flex");
        String path2 = path.concat("/src/AnalizadorSint/LexerCup.flex");
        String path3 = path.concat("/src/AnalizadorSint/Sintax.cup");
        String PathS [] = {"-parser","Sintax",path3}; 
        File archivo;
        archivo = new File(path1);                     
        jflex.Main.generate(archivo);
        archivo = new File(path2);                     
        jflex.Main.generate(archivo);
        java_cup.Main.main(PathS);        
        Path pathSym = Paths.get(path.concat("/src/AnalizadorSint/sym.java"));
        if (Files.exists(pathSym)) {
            Files.delete(pathSym); 
        }
        Files.move(
            Paths.get(path.concat("/sym.java")),
            Paths.get(path.concat("/src/AnalizadorSint/sym.java"))
        );
        Path pathSin = Paths.get(path.concat("/src/AnalizadorSint/Sintax.java"));
        if (Files.exists(pathSin)) {
            Files.delete(pathSin);
        }
        Files.move(
            Paths.get(path.concat("/Sintax.java")),
            Paths.get(path.concat("/src/AnalizadorSint/Sintax.java"))
        );
        
        MiniSQL abrir = new MiniSQL();
        abrir.setVisible(true);
    }
}
