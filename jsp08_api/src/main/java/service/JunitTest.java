package service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.ParserConfigurationException;

import org.json.simple.parser.ParseException;
import org.junit.jupiter.api.Test;
import org.xml.sax.SAXException;

class JunitTest {
	CovidXMLService covidService = new CovidXMLService();
	@Test
	void testCovid(){
		//코로나 확진자
		covidService.covidParsing("20220405", "20220412");
	}
	
	
	//컨트리 테스트
	CountryJSONService countryService = new CountryJSONService(); 
	@Test
	void testCountry() {
		countryService.countryParsing("GB");

	}
	
	//문화위치정보
	CultureService cultureService = new CultureService();
	
	@Test
	void testCulture() {
		Map<String , Object> map = cultureService.cultureParsing("서울연극센터");
		System.out.println(map);
	}
	
	//지오코딩 테스트
	@Test
	void testCultureGeocoding() {
		Map<String , Double> map = cultureService.geocoding("서울 용산구 후암동 남산공원길 3");
		System.out.println(map);
		
	}
	
	//미세먼지
	TestService testService = new TestService();
	@Test
	void testTest() {
		testService.testPasing("2022");
	}


}
