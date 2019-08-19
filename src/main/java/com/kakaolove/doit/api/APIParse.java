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
		String apikey = "5a6c5749586a796833317650676e64";
		String type = "";
		String strurl = "http://openapi.seoul.go.kr:8088/" + apikey + "/json/ListPublicReservationInstitution/" + start + "/" + end + "/" + type ;
		try {
			URL url = new URL(strurl);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
			/*String line; 
			StringBuffer retJsonString = new StringBuffer(); 
			while((line = br.readLine()) != null) {
				retJsonString.append(line); 
				retJsonString.append('\r'); }
			br.close();*/

			//logger.info("���۸��� �״�Λ�:"+retJsonString)
			
			resultmap = parseJSONData(br);
			/*
			for(int j=0; j<resultSet.size(); j++){
                //�迭 �ȿ� �ִ°͵� JSON���� �̱� ������ JSON Object �� ����
                JSONObject facilityObj = (JSONObject) resultSet.get(j);
                HashMap<String, String> map = new HashMap<String, String>();
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("SVCID", facilityObj.get("GUBUN").toString());
                map.put("MAXCLASSNM", facilityObj.get("GUBUN").toString());
                map.put("MINCLASSNM", facilityObj.get("GUBUN").toString());
                map.put("SVCSTATNM", facilityObj.get("GUBUN").toString());
                map.put("SVCNM", facilityObj.get("GUBUN").toString());
                map.put("PAYATNM", facilityObj.get("GUBUN").toString());
                map.put("PLACENM", facilityObj.get("GUBUN").toString());
                map.put("USETGTINFO", facilityObj.get("GUBUN").toString());
                map.put("SVCURL", facilityObj.get("GUBUN").toString());
                map.put("X", facilityObj.get("GUBUN").toString());
                map.put("Y", facilityObj.get("GUBUN").toString());
                map.put("SVCOPNBGNDT", facilityObj.get("GUBUN").toString());
                map.put("SVCOPNENDDT", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                map.put("GUBUN", facilityObj.get("GUBUN").toString());
                list.add(facilityObj);
            }*/
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
            JSONParser jsonParser = new JSONParser(); // jsonparser ���� ��ȯ
            /*ContainerFactory orderedKeyFactory = new ContainerFactory()
            {
                public List creatArrayContainer() {
                  return new LinkedList();
                }

                public Map createObjectContainer() {
                  return new LinkedHashMap();
                }

            };*/
            
            JSONObject jsonObject = (JSONObject)jsonParser.parse(bufferedReader);
            JSONObject LPRIObject = (JSONObject) jsonObject.get("ListPublicReservationInstitution");

            resultSet = (JSONArray) LPRIObject.get("row");
            Gson gson = new Gson();
            
            for(int i=0;i<resultSet.size();i++) {
            	JSONObject temp=(JSONObject)resultSet.get(i); // ���� ������ N�� �����ϴ³�� Jsonobject
            	logger.info(i+"��°---------------------------------\n");
            	logger.info(gson.fromJson(temp.toString(), HashMap.class).toString());
            	logger.info(i+"��° ��-------------------------------\n");
            	resultmaplist.add(gson.fromJson(temp.toString(), HashMap.class));
            	
            }
            
         
            
		}catch (Exception e) {
			e.printStackTrace();
		}
        return resultmaplist;
	}
	
	
	
}
