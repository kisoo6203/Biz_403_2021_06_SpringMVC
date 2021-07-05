package com.callor.book.service.impl.movie;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import com.callor.book.config.NaverQualifier;
import com.callor.book.config.NaverSecret;
import com.callor.book.model.MovieDTO;
import com.callor.book.service.NaverAbstractService;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service(NaverQualifier.NAVER_MOVIE_SERVICE_V1)
public class NaverMovieServiceImplV1 extends NaverAbstractService<MovieDTO>{

	@Override
	public String queryURL(String search_text) throws Exception {
		// TODO 검색어 UTF-8 로 인코딩
	      String searchUTF8 = URLEncoder.encode(search_text, "UTF-8");
	      String queryURL = NaverSecret.NURL.MOVIE;
	      queryURL += "?query=%s&display=10";
	      queryURL = String.format(queryURL, searchUTF8);
	      log.debug("queryURL {} ", queryURL.toString());
	      //StringBuilder queryURL = new StringBuilder();
	      
	      return queryURL;
//		String searchUTF8 = null;
//		
//		try {
//			searchUTF8 = URLEncoder.encode(search,"UTF-8");
//			
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		StringBuilder queryURL = new StringBuilder();
//		queryURL.append(NaverSecret.NURL.MOVIE);
//		
//		// UTF-8 인코딩된 검색어
//		String queryString = String.format("?query=%s", searchUTF8);
//		queryURL.append(queryString);
//		
//		// 자료를 20개까지만 
//		queryString = String.format("&dispaly=%d", 20);
//		queryURL.append(queryString);
//		
//		log.debug("queryURL {}", queryURL.toString());
//		
//		return queryURL.toString();
	}

	@Override
	public List<MovieDTO> getNaverList(String jsonString) throws Exception {
		// TODO 전달받은 데이터를 VO에 담기
		
	      JsonElement jsonElement = JsonParser.parseString(jsonString);
	      JsonElement oItems = jsonElement.getAsJsonObject().get("items");
	      Gson gson = new Gson();
	      TypeToken<List<MovieDTO>> typeToken = new TypeToken<List<MovieDTO>> () {};
	      List<MovieDTO> movies = gson.fromJson(oItems, typeToken.getType());
	      return movies;
//		JSONParser jParser = new JSONParser();
//		
//		JSONObject jObject = (JSONObject) jParser.parse(jsonString);
//		
//		JSONArray items = (JSONArray) jObject.get("items");
//		
//		List<MovieDTO> movieList = new ArrayList<MovieDTO>();
//		
//		int nSize = items.size();
//		
//		for (int i = 0; i < nSize; i++) {
//			
//			JSONObject item = (JSONObject) items.get(i);
//			
//			String title = item.get("title").toString();
//			String link = item.get("link").toString();
//			String image = item.get("image").toString();
//			String subtitle = item.get("subtitle").toString();
//			String pubDate = item.get("pubDate").toString();
//			String director = item.get("director").toString();
//			String actor = item.get("actor").toString();
//			String userRating = item.get("userRating").toString();
//			
//			MovieDTO dto = MovieDTO.builder()
//					.title(title)
//					.link(link)
//					.image(image)
//					.subtitle(subtitle)
//					.pubDate(pubDate)
//					.director(director)
//					.actor(actor)
//					.userRating(userRating)
//					.build();
//			
//			movieList.add(dto);
//		}
		
		
		
	}

}