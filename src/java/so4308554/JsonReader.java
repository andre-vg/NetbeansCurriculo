/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package so4308554;

/**
 *
 * @author André
 */
import java.io.BufferedReader;
        import java.io.IOException;
        import java.io.InputStream;
        import java.io.InputStreamReader;
        import java.io.Reader;
import java.lang.reflect.Array;
        import java.net.URL;
        import java.nio.charset.Charset;
        import java.util.ArrayList;
        import java.util.List;
        import org.json.JSONArray;

        import org.json.JSONException;
        import org.json.JSONObject;

        public class JsonReader {

        private static String readAll(Reader rd) throws IOException {
            StringBuilder sb = new StringBuilder();
            int cp;
            while ((cp = rd.read()) != -1) {
            sb.append((char) cp);
            }
            return sb.toString();
        }

        public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
            InputStream is = new URL(url).openStream();
            try {
            BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
            String jsonText = readAll(rd);
            JSONObject json = new JSONObject(jsonText);
            return json;
            } finally {
            is.close();
            }
        }

        public static void main(String[] args) throws IOException, JSONException {
            JSONObject json = readJsonFromUrl("https://api.github.com/repos/andre-vg/CAIXA_ANDRE/languages");
            System.out.println(json.toString());
            System.out.println(json.length());
            System.out.println(json.names());
            System.out.println(json.get("HTML"));
            
            int num_lang = json.length();
            
            String[] nomes = json.names().toString().replace("[", "").replace("]", "").replace("\"", "").split(",");
            System.out.println(nomes[0]);
            
            Object[] valor = null;
            valor[0] = json.get("CSS");
            System.out.println(nomes[0]);
            valor[0] = json.get("CSS");
            valor[1] = json.get("JavaScript");
            valor[2] = json.get("HTML");
            valor[3] = json.get("Python");
            
            
            
            int aux2 = 0;
//            System.out.println(aux);
                      
                    
        }
        }
