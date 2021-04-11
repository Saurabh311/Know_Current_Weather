package model;

public class weatherBean {
	
	private String cityStr; String countryStr; String cloudsStr; String temperature;

	public weatherBean(String cityStr, String countryStr) {	
		this.cityStr = cityStr;
		this.countryStr = countryStr;
		
	}
	
	public String getCityStr() {
		return cityStr;
	}

	public String getCountryStr() {
		return countryStr;
	}
	
	public String getCloudsStr() {
		return cloudsStr;
	}
	
	public String getTemperatureInCelcius() {
		return temperature;
	}

		
	public void setAttributes(String attribute, String xmlString) {
		if (attribute.equals("clouds")) {
			setCloudsStr(xmlString);
		} else if (attribute.equals("temperature")) {
			setTemperatureInCelcius(xmlString);
		}
	}

	public void setCloudsStr(String xMLClouds) {
		cloudsStr = xMLClouds.substring(0, 1).toUpperCase() + xMLClouds.substring(1);
	}
	
	public void setTemperatureInCelcius(String xMLTemp) {
		int temperatureInCelsius = (int)(Double.valueOf(xMLTemp) - 273.15);

		temperature = String.valueOf(temperatureInCelsius);
	}

	

}
