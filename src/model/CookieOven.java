package model;

import javax.servlet.http.Cookie;

public class CookieOven {

	public static Cookie bakeCookie(weatherBean wBean) {
		int minute = 60;
		Cookie ck = new Cookie(wBean.getCityStr().toLowerCase()+wBean.getCountryStr().toLowerCase() ,
				wBean.getCityStr() + "/" + wBean.getCityStr().replaceAll(" ", "_") + "/" + wBean.getTemperatureInCelcius());
		
		ck.setMaxAge(minute * 20);
		return ck;
		}
}
