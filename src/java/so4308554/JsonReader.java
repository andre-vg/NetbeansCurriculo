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
            JSONObject json2 = so4308554.JsonReader.readJsonFromUrl("https://api.github.com/repos/andre-vg/NetbeansCurriculo/languages");
            
            int num_lang2 = json2.length();
            
            String[] nomes2 = json2.names().toString().replace("[", "").replace("]", "").replace("\"", "").split(",");            
            
            int aux = 0;
            System.out.println(json2.toString());

            System.out.println(json2.get("CSS"));
            System.out.println(nomes2[2]);
                      
                    
        }
        }
