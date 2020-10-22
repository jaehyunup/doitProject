package com.kakaolove.doit.api;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.ContainerFactory;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;
import com.kakaolove.doit.controller.HomeController;
import com.mysql.cj.api.result.Row;

public class APIParse {
	private static final Logger logger = LoggerFactory.getLogger(APIParse.class);
	private static List<JSONObject> list;

	public static List<HashMap<String,Object>> facility(int start, int end) throws IOException, ParseException{
		BufferedReader br = null;
		JSONArray resultSet = null;
		list = new ArrayList();
		BufferedInputStream reader = null;
		List<HashMap<String,Object>> resultmap=null;
		String apikey = "my-api-key";
		String type = "";
		String strurl = "http://openapi.seoul.go.kr:8088/" + apikey + "/json/ListPublicReservationInstitution/" + start + "/" + end + "/" + type ;
		try {
			URL url = new URL(strurl);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
			resultmap = parseJSONData(br);	
		return resultmap;
		} catch(IOException e) {
		} finally {
			br.close();
		}
		return null;
	}
	
	public static List<HashMap<String,Object>> parseJSONData(BufferedReader bufferedReader) {
		JSONArray resultSet = null;
		List<HashMap<String,Object>> resultmaplist=new ArrayList<HashMap<String,Object>>();
        try {
            JSONParser jsonParser = new JSONParser(); // 
            JSONObject jsonObject = (JSONObject)jsonParser.parse(bufferedReader);
            JSONObject LPRIObject = (JSONObject) jsonObject.get("ListPublicReservationInstitution");

            resultSet = (JSONArray) LPRIObject.get("row");
            Gson gson = new Gson();
            
            for(int i=0;i<resultSet.size();i++) {
            	JSONObject temp=(JSONObject)resultSet.get(i); 
            	resultmaplist.add(gson.fromJson(temp.toString(), HashMap.class));
            	
            }
		}catch (Exception e) {
			e.printStackTrace();
		}
        return resultmaplist;
	}
}
